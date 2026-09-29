package org.qtproject.qt.android;

import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.system.Os;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.LocaleSpan;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
class QtAccessibilityDelegate extends View.AccessibilityDelegate {
    static final int INVALID_ID = 333;
    private static final String TAG = "Qt A11Y";
    private QtLayout m_layout;
    private AccessibilityManager m_manager;
    private View m_view = null;
    private int m_focusedVirtualViewId = INVALID_ID;
    private int m_hoveredVirtualViewId = INVALID_ID;
    private final int[] m_globalOffset = new int[2];
    private int m_oldOffsetX = 0;
    private int m_oldOffsetY = 0;
    private final AccessibilityNodeProvider m_nodeProvider = new AccessibilityNodeProvider() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate.1
        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            return (i == -1 || QtAccessibilityDelegate.this.m_layout.getChildCount() == 0) ? QtAccessibilityDelegate.this.getNodeForView() : QtAccessibilityDelegate.this.getNodeForVirtualViewId(i);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            boolean z = false;
            if (QtAccessibilityDelegate.this.m_view == null) {
                Log.e(QtAccessibilityDelegate.TAG, "Unable to perform action with a null view");
                return false;
            }
            if (i2 == 128) {
                if (QtAccessibilityDelegate.this.m_focusedVirtualViewId == i) {
                    QtAccessibilityDelegate.this.m_focusedVirtualViewId = QtAccessibilityDelegate.INVALID_ID;
                }
                QtAccessibilityDelegate.this.m_view.invalidate();
                QtAccessibilityDelegate.this.sendEventForVirtualViewId(i, 65536);
                z = true;
            } else if (i == -1) {
                return QtAccessibilityDelegate.this.m_view.performAccessibilityAction(i2, bundle);
            }
            return QtAccessibilityDelegate.this.performActionForVirtualViewId(i, i2) | z;
        }
    };

    private class HoverEventListener implements View.OnHoverListener {
        private HoverEventListener() {
        }

        @Override // android.view.View.OnHoverListener
        public boolean onHover(View view, MotionEvent motionEvent) {
            return QtAccessibilityDelegate.this.dispatchHoverEvent(motionEvent);
        }
    }

    QtAccessibilityDelegate() {
    }

    void initLayoutAccessibility(QtLayout qtLayout) {
        if (qtLayout == null) {
            Log.w(TAG, "Unable to initialize the accessibility delegate with a null layout");
            return;
        }
        this.m_layout = qtLayout;
        AccessibilityManager accessibilityManager = (AccessibilityManager) qtLayout.getContext().getSystemService(AccessibilityManager.class);
        this.m_manager = accessibilityManager;
        if (accessibilityManager != null) {
            AccessibilityManagerListener accessibilityManagerListener = new AccessibilityManagerListener();
            if (!this.m_manager.addAccessibilityStateChangeListener(accessibilityManagerListener)) {
                Log.w("Qt A11y", "Could not register a11y state change listener");
            }
            if (this.m_manager.isEnabled()) {
                accessibilityManagerListener.onAccessibilityStateChanged(true);
            }
        }
    }

    private class AccessibilityManagerListener implements AccessibilityManager.AccessibilityStateChangeListener {
        private AccessibilityManagerListener() {
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            if (QtAccessibilityDelegate.this.m_layout == null) {
                return;
            }
            String str = Os.getenv("QT_ANDROID_DISABLE_ACCESSIBILITY");
            if (str == null || !(str.equalsIgnoreCase("true") || str.equals("1"))) {
                if (!z) {
                    if (QtAccessibilityDelegate.this.m_view != null) {
                        QtAccessibilityDelegate.this.m_layout.removeView(QtAccessibilityDelegate.this.m_view);
                        QtAccessibilityDelegate.this.m_view = null;
                    }
                    QtNativeAccessibility.setActive(z);
                    return;
                }
                try {
                    View view = QtAccessibilityDelegate.this.m_view;
                    if (view == null) {
                        view = new View(QtAccessibilityDelegate.this.m_layout.getContext());
                        view.setId(-1);
                    }
                    view.setAccessibilityDelegate(QtAccessibilityDelegate.this);
                    if (QtAccessibilityDelegate.this.m_view == null) {
                        QtAccessibilityDelegate.this.m_layout.addView(view, QtAccessibilityDelegate.this.m_layout.getChildCount(), new ViewGroup.LayoutParams(-1, -1));
                    }
                    QtAccessibilityDelegate.this.m_view = view;
                    QtAccessibilityDelegate.this.m_view.setOnHoverListener(new HoverEventListener());
                } catch (Exception e) {
                    Log.w("Qt A11y", "Unknown exception: " + e);
                }
                QtNativeAccessibility.setActive(z);
            }
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
        return this.m_nodeProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        AccessibilityManager accessibilityManager = this.m_manager;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int iHitTest = QtNativeAccessibility.hitTest(motionEvent.getX(), motionEvent.getY());
        if (iHitTest == INVALID_ID) {
            iHitTest = -1;
        }
        int action = motionEvent.getAction();
        if (action != 7 && action != 9 && action != 10) {
            return true;
        }
        setHoveredVirtualViewId(iHitTest);
        return true;
    }

    SpannableString addLocaleSpan(int i, String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new LocaleSpan(Locale.forLanguageTag(QtNativeAccessibility.languageTag(i))), 0, spannableString.length(), 33);
        return spannableString;
    }

    /* JADX INFO: renamed from: lambda$notifyScrolledEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1901lambda$notifyScrolledEvent$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i) {
        sendEventForVirtualViewId(i, 4096);
    }

    void notifyScrolledEvent(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1901lambda$notifyScrolledEvent$0$orgqtprojectqtandroidQtAccessibilityDelegate(i);
            }
        });
    }

    void notifyLocationChange(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1897lambda$notifyLocationChange$0$orgqtprojectqtandroidQtAccessibilityDelegate(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyLocationChange$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1897lambda$notifyLocationChange$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i) {
        int i2 = this.m_focusedVirtualViewId;
        if (i2 == i) {
            m1900lambda$notifyObjectShow$0$orgqtprojectqtandroidQtAccessibilityDelegate(i2);
        }
    }

    void notifyObjectHide(final int i, final int i2) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1899lambda$notifyObjectHide$0$orgqtprojectqtandroidQtAccessibilityDelegate(i, i2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyObjectHide$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1899lambda$notifyObjectHide$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i, int i2) {
        View view = this.m_view;
        if (view != null && this.m_focusedVirtualViewId == i) {
            this.m_focusedVirtualViewId = INVALID_ID;
            view.invalidate();
            sendEventForVirtualViewId(i, 65536);
        }
        m1900lambda$notifyObjectShow$0$orgqtprojectqtandroidQtAccessibilityDelegate(i2);
    }

    void notifyObjectShow(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1900lambda$notifyObjectShow$0$orgqtprojectqtandroidQtAccessibilityDelegate(i);
            }
        });
    }

    void notifyObjectFocus(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1898lambda$notifyObjectFocus$0$orgqtprojectqtandroidQtAccessibilityDelegate(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyObjectFocus$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1898lambda$notifyObjectFocus$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i) {
        View view = this.m_view;
        if (view == null) {
            return;
        }
        this.m_focusedVirtualViewId = i;
        view.invalidate();
        sendEventForVirtualViewId(i, 32768);
    }

    void notifyValueChanged(final int i, final String str) {
        if (this.m_manager == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1903lambda$notifyValueChanged$0$orgqtprojectqtandroidQtAccessibilityDelegate(i, str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyValueChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1903lambda$notifyValueChanged$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i, String str) {
        if (this.m_view == null) {
            return;
        }
        if (i == INVALID_ID || !this.m_manager.isEnabled()) {
            Log.w(TAG, "notifyValueChanged() for invalid view");
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.m_view.getParent();
        if (viewGroup == null) {
            Log.w(TAG, "Could not announce value because ViewGroup was null.");
            return;
        }
        CharSequence className = getNodeForVirtualViewId(i).getClassName();
        AccessibilityEvent accessibilityEventObtainAccessibilityEvent = obtainAccessibilityEvent((className == null || !className.equals("android.widget.ProgressBar")) ? 16384 : 2048);
        accessibilityEventObtainAccessibilityEvent.setEnabled(true);
        accessibilityEventObtainAccessibilityEvent.setClassName(className);
        accessibilityEventObtainAccessibilityEvent.setContentDescription(addLocaleSpan(i, str));
        if (accessibilityEventObtainAccessibilityEvent.getText().isEmpty() && TextUtils.isEmpty(accessibilityEventObtainAccessibilityEvent.getContentDescription())) {
            Log.w(TAG, "No value to announce for " + ((Object) accessibilityEventObtainAccessibilityEvent.getClassName()));
            return;
        }
        accessibilityEventObtainAccessibilityEvent.setPackageName(this.m_view.getContext().getPackageName());
        accessibilityEventObtainAccessibilityEvent.setSource(this.m_view, i);
        if (viewGroup.requestSendAccessibilityEvent(this.m_view, accessibilityEventObtainAccessibilityEvent)) {
            return;
        }
        Log.w(TAG, "Failed to send value change announcement for " + ((Object) accessibilityEventObtainAccessibilityEvent.getClassName()));
    }

    void notifyDescriptionOrNameChanged(int i, String str) {
        if (i == this.m_focusedVirtualViewId) {
            notifyValueChanged(i, str);
        }
    }

    void notifyAnnouncementEvent(final int i, final String str) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1896lambda$notifyAnnouncementEvent$0$orgqtprojectqtandroidQtAccessibilityDelegate(i, str);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyAnnouncementEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1896lambda$notifyAnnouncementEvent$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i, String str) {
        if (this.m_view == null) {
            return;
        }
        if (i == INVALID_ID) {
            Log.w(TAG, "notifyAnnouncementEvent() for invalid view");
            return;
        }
        if (!this.m_manager.isEnabled()) {
            Log.w(TAG, "notifyAnnouncementEvent for disabled AccessibilityManager");
            return;
        }
        AccessibilityEvent accessibilityEventObtainAccessibilityEvent = obtainAccessibilityEvent(16384);
        accessibilityEventObtainAccessibilityEvent.getText().add(str);
        accessibilityEventObtainAccessibilityEvent.setClassName(getNodeForVirtualViewId(i).getClassName());
        accessibilityEventObtainAccessibilityEvent.setPackageName(this.m_view.getContext().getPackageName());
        sendAccessibilityEvent(accessibilityEventObtainAccessibilityEvent);
    }

    void notifyTextChanged(final int i, final String str, final String str2, final int i2, final int i3, final int i4) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1902lambda$notifyTextChanged$0$orgqtprojectqtandroidQtAccessibilityDelegate(i, str, str2, i2, i3, i4);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$notifyTextChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate, reason: not valid java name */
    /* synthetic */ void m1902lambda$notifyTextChanged$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i, String str, String str2, int i2, int i3, int i4) {
        AccessibilityManager accessibilityManager;
        if (this.m_view == null || (accessibilityManager = this.m_manager) == null || !accessibilityManager.isEnabled()) {
            return;
        }
        int i5 = this.m_focusedVirtualViewId;
        if (i5 != INVALID_ID) {
            i = i5;
        }
        if (i == INVALID_ID) {
            Log.w(TAG, "notifyTextChanged() with no focused view");
            return;
        }
        CharSequence className = getNodeForVirtualViewId(i).getClassName();
        String packageName = this.m_view.getContext().getPackageName();
        AccessibilityEvent accessibilityEventObtainAccessibilityEvent = obtainAccessibilityEvent(16);
        accessibilityEventObtainAccessibilityEvent.setSource(this.m_view, i);
        accessibilityEventObtainAccessibilityEvent.setClassName(className);
        accessibilityEventObtainAccessibilityEvent.setPackageName(packageName);
        accessibilityEventObtainAccessibilityEvent.getText().add(str);
        accessibilityEventObtainAccessibilityEvent.setBeforeText(str2);
        accessibilityEventObtainAccessibilityEvent.setFromIndex(i2);
        accessibilityEventObtainAccessibilityEvent.setAddedCount(i3);
        accessibilityEventObtainAccessibilityEvent.setRemovedCount(i4);
        sendAccessibilityEvent(accessibilityEventObtainAccessibilityEvent);
        int i6 = i2 + i3;
        AccessibilityEvent accessibilityEventObtainAccessibilityEvent2 = obtainAccessibilityEvent(8192);
        accessibilityEventObtainAccessibilityEvent2.setSource(this.m_view, i);
        accessibilityEventObtainAccessibilityEvent2.setClassName(className);
        accessibilityEventObtainAccessibilityEvent2.setPackageName(packageName);
        accessibilityEventObtainAccessibilityEvent2.getText().add(str);
        accessibilityEventObtainAccessibilityEvent2.setFromIndex(i6);
        accessibilityEventObtainAccessibilityEvent2.setToIndex(i6);
        accessibilityEventObtainAccessibilityEvent2.setItemCount(str != null ? str.length() : 0);
        accessibilityEventObtainAccessibilityEvent2.setCurrentItemIndex(i6);
        sendAccessibilityEvent(accessibilityEventObtainAccessibilityEvent2);
    }

    void sendEventForVirtualViewId(int i, int i2) {
        sendAccessibilityEvent(getEventForVirtualViewId(i, i2));
    }

    void sendAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        View view = this.m_view;
        if (view == null || accessibilityEvent == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null) {
            Log.w(TAG, "Could not send AccessibilityEvent because group was null. This should really not happen.");
        } else {
            viewGroup.requestSendAccessibilityEvent(this.m_view, accessibilityEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: invalidateVirtualViewId, reason: merged with bridge method [inline-methods] */
    public void m1900lambda$notifyObjectShow$0$orgqtprojectqtandroidQtAccessibilityDelegate(int i) {
        AccessibilityEvent eventForVirtualViewId = getEventForVirtualViewId(i, 2048);
        if (eventForVirtualViewId == null) {
            return;
        }
        eventForVirtualViewId.setContentChangeTypes(1);
        sendAccessibilityEvent(eventForVirtualViewId);
    }

    private void setHoveredVirtualViewId(int i) {
        int i2 = this.m_hoveredVirtualViewId;
        if (i2 == i) {
            return;
        }
        this.m_hoveredVirtualViewId = i;
        sendEventForVirtualViewId(i, 128);
        sendEventForVirtualViewId(i2, 256);
    }

    private AccessibilityEvent getEventForVirtualViewId(int i, int i2) {
        AccessibilityManager accessibilityManager = this.m_manager;
        boolean z = accessibilityManager != null && accessibilityManager.isEnabled();
        if (this.m_view == null || !z || i == INVALID_ID) {
            Log.w(TAG, "getEventForVirtualViewId for invalid view");
            return null;
        }
        QtLayout qtLayout = this.m_layout;
        if (qtLayout == null || qtLayout.getChildCount() == 0) {
            return null;
        }
        AccessibilityEvent accessibilityEventObtainAccessibilityEvent = obtainAccessibilityEvent(i2);
        accessibilityEventObtainAccessibilityEvent.setEnabled(true);
        accessibilityEventObtainAccessibilityEvent.setClassName(getNodeForVirtualViewId(i).getClassName());
        accessibilityEventObtainAccessibilityEvent.setContentDescription(addLocaleSpan(i, QtNativeAccessibility.descriptionForAccessibleObject(i)));
        if (accessibilityEventObtainAccessibilityEvent.getText().isEmpty() && TextUtils.isEmpty(accessibilityEventObtainAccessibilityEvent.getContentDescription())) {
            Log.w(TAG, "AccessibilityEvent with empty description");
        }
        accessibilityEventObtainAccessibilityEvent.setPackageName(this.m_view.getContext().getPackageName());
        accessibilityEventObtainAccessibilityEvent.setSource(this.m_view, i);
        return accessibilityEventObtainAccessibilityEvent;
    }

    private void dumpNodes(int i) {
        Log.i(TAG, "A11Y hierarchy: " + i + " parent: " + QtNativeAccessibility.parentId(i));
        Log.i(TAG, "    desc: " + QtNativeAccessibility.descriptionForAccessibleObject(i) + " rect: " + QtNativeAccessibility.screenRect(i));
        Log.i(TAG, " NODE: " + getNodeForVirtualViewId(i));
        for (int i2 : QtNativeAccessibility.childIdListForAccessibleObject(i)) {
            Log.i(TAG, i + " has child: " + i2);
            dumpNodes(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityNodeInfo getNodeForView() {
        View view = this.m_view;
        if (view == null || this.m_layout == null) {
            return obtainAccessibilityNodeInfo();
        }
        AccessibilityNodeInfo accessibilityNodeInfoObtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo(view);
        AccessibilityNodeInfo accessibilityNodeInfoObtainAccessibilityNodeInfo2 = obtainAccessibilityNodeInfo(this.m_view);
        this.m_view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtainAccessibilityNodeInfo2);
        this.m_view.getLocationOnScreen(this.m_globalOffset);
        int[] iArr = this.m_globalOffset;
        int i = iArr[0];
        int i2 = iArr[1];
        Rect rect = new Rect();
        getBoundsInParent(accessibilityNodeInfoObtainAccessibilityNodeInfo2, rect);
        setBoundsInParent(accessibilityNodeInfoObtainAccessibilityNodeInfo, rect);
        Rect rect2 = new Rect();
        accessibilityNodeInfoObtainAccessibilityNodeInfo2.getBoundsInScreen(rect2);
        rect2.offset(i, i2);
        accessibilityNodeInfoObtainAccessibilityNodeInfo.setBoundsInScreen(rect2);
        Object parent = this.m_view.getParent();
        if (parent instanceof View) {
            accessibilityNodeInfoObtainAccessibilityNodeInfo.setParent((View) parent);
        }
        accessibilityNodeInfoObtainAccessibilityNodeInfo.setVisibleToUser(accessibilityNodeInfoObtainAccessibilityNodeInfo2.isVisibleToUser());
        accessibilityNodeInfoObtainAccessibilityNodeInfo.setPackageName(accessibilityNodeInfoObtainAccessibilityNodeInfo2.getPackageName());
        accessibilityNodeInfoObtainAccessibilityNodeInfo.setClassName(accessibilityNodeInfoObtainAccessibilityNodeInfo2.getClassName());
        if (this.m_layout.getChildCount() != 0) {
            for (int i3 : QtNativeAccessibility.childIdListForAccessibleObject(-1)) {
                accessibilityNodeInfoObtainAccessibilityNodeInfo.addChild(this.m_view, i3);
            }
        }
        if (this.m_oldOffsetX != i || this.m_oldOffsetY != i2) {
            this.m_oldOffsetX = i;
            this.m_oldOffsetY = i2;
            int i4 = this.m_focusedVirtualViewId;
            if (i4 != INVALID_ID) {
                this.m_nodeProvider.performAction(i4, 128, new Bundle());
                this.m_nodeProvider.performAction(this.m_focusedVirtualViewId, 64, new Bundle());
            }
        }
        return accessibilityNodeInfoObtainAccessibilityNodeInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AccessibilityNodeInfo getNodeForVirtualViewId(int i) {
        if (this.m_view == null || this.m_layout == null) {
            return obtainAccessibilityNodeInfo();
        }
        AccessibilityNodeInfo accessibilityNodeInfoObtainAccessibilityNodeInfo = obtainAccessibilityNodeInfo();
        accessibilityNodeInfoObtainAccessibilityNodeInfo.setPackageName(this.m_view.getContext().getPackageName());
        if (this.m_layout.getChildCount() < 0 && QtNativeAccessibility.populateNode(i, accessibilityNodeInfoObtainAccessibilityNodeInfo)) {
            accessibilityNodeInfoObtainAccessibilityNodeInfo.setSource(this.m_view, i);
            accessibilityNodeInfoObtainAccessibilityNodeInfo.setContentDescription(addLocaleSpan(i, accessibilityNodeInfoObtainAccessibilityNodeInfo.getContentDescription().toString()));
            if (TextUtils.isEmpty(accessibilityNodeInfoObtainAccessibilityNodeInfo.getText()) && TextUtils.isEmpty(accessibilityNodeInfoObtainAccessibilityNodeInfo.getContentDescription())) {
                Log.w(TAG, "AccessibilityNodeInfo with empty contentDescription: " + i);
            }
            int iParentId = QtNativeAccessibility.parentId(i);
            accessibilityNodeInfoObtainAccessibilityNodeInfo.setParent(this.m_view, iParentId);
            Rect rectScreenRect = QtNativeAccessibility.screenRect(i);
            int[] iArr = this.m_globalOffset;
            rectScreenRect.offset(iArr[0], iArr[1]);
            accessibilityNodeInfoObtainAccessibilityNodeInfo.setBoundsInScreen(rectScreenRect);
            Rect rectScreenRect2 = QtNativeAccessibility.screenRect(iParentId);
            rectScreenRect.offset(-rectScreenRect2.left, -rectScreenRect2.top);
            setBoundsInParent(accessibilityNodeInfoObtainAccessibilityNodeInfo, rectScreenRect);
            if (this.m_focusedVirtualViewId == i) {
                accessibilityNodeInfoObtainAccessibilityNodeInfo.setAccessibilityFocused(true);
                accessibilityNodeInfoObtainAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            } else {
                accessibilityNodeInfoObtainAccessibilityNodeInfo.setAccessibilityFocused(false);
                accessibilityNodeInfoObtainAccessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_ACCESSIBILITY_FOCUS);
            }
            int[] iArrChildIdListForAccessibleObject = QtNativeAccessibility.childIdListForAccessibleObject(i);
            for (int i2 : iArrChildIdListForAccessibleObject) {
                accessibilityNodeInfoObtainAccessibilityNodeInfo.addChild(this.m_view, i2);
            }
            if (accessibilityNodeInfoObtainAccessibilityNodeInfo.isScrollable()) {
                setCollectionInfo(accessibilityNodeInfoObtainAccessibilityNodeInfo, iArrChildIdListForAccessibleObject.length, 1, false);
            }
        }
        return accessibilityNodeInfoObtainAccessibilityNodeInfo;
    }

    protected boolean performActionForVirtualViewId(int i, int i2) {
        if (i2 == 16) {
            boolean zClickAction = QtNativeAccessibility.clickAction(i);
            if (zClickAction) {
                sendEventForVirtualViewId(i, 1);
            }
            return zClickAction;
        }
        if (i2 != 64) {
            if (i2 == 4096) {
                return QtNativeAccessibility.scrollForward(i);
            }
            if (i2 != 8192) {
                return false;
            }
            return QtNativeAccessibility.scrollBackward(i);
        }
        if (this.m_focusedVirtualViewId == i) {
            return false;
        }
        boolean zFocusAction = QtNativeAccessibility.focusAction(i);
        if (zFocusAction) {
            return zFocusAction;
        }
        notifyObjectFocus(i);
        return true;
    }

    private AccessibilityEvent obtainAccessibilityEvent(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return new AccessibilityEvent(i);
        }
        return AccessibilityEvent.obtain(i);
    }

    private AccessibilityNodeInfo obtainAccessibilityNodeInfo() {
        if (Build.VERSION.SDK_INT >= 30) {
            return new AccessibilityNodeInfo();
        }
        return AccessibilityNodeInfo.obtain();
    }

    private AccessibilityNodeInfo obtainAccessibilityNodeInfo(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            return new AccessibilityNodeInfo(view);
        }
        return AccessibilityNodeInfo.obtain(view);
    }

    private void getBoundsInParent(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
        accessibilityNodeInfo.getBoundsInParent(rect);
    }

    private void setBoundsInParent(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
        accessibilityNodeInfo.setBoundsInParent(rect);
    }

    private void setCollectionInfo(AccessibilityNodeInfo accessibilityNodeInfo, int i, int i2, boolean z) {
        if (Build.VERSION.SDK_INT >= 30) {
            accessibilityNodeInfo.setCollectionInfo(new AccessibilityNodeInfo.CollectionInfo(i, i2, z));
        } else {
            accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
        }
    }
}
