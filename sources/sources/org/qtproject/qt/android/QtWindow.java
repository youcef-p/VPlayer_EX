package org.qtproject.qt.android;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.os.Build;
import android.view.DisplayCutout;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import java.util.HashMap;
import org.qtproject.qt.android.QtInputConnection;
import org.qtproject.qt.android.QtLayout;

/* JADX INFO: loaded from: classes.dex */
class QtWindow extends QtLayout implements QtSurfaceInterface {
    private int m_actionBarHeight;
    private final HashMap<Integer, QtWindow> m_childWindows;
    private final QtEditText m_editText;
    private boolean m_editTextFocusInitialized;
    private boolean m_firstSafeMarginsDelivered;
    private GestureDetector m_gestureDetector;
    private final QtInputConnection.QtInputConnectionListener m_inputConnectionListener;
    private View m_nativeView;
    private QtWindow m_parentWindow;
    private View m_surfaceContainer;

    private static native void safeAreaMarginsChanged(Insets insets, int i);

    private static native void setSurface(int i, Surface surface);

    static native void updateWindows();

    static native void windowFocusChanged(boolean z, int i);

    QtWindow(final Context context, boolean z, QtWindow qtWindow, QtInputConnection.QtInputConnectionListener qtInputConnectionListener) {
        super(context);
        this.m_childWindows = new HashMap<>();
        this.m_editTextFocusInitialized = false;
        this.m_firstSafeMarginsDelivered = false;
        this.m_actionBarHeight = -1;
        setId(View.generateViewId());
        this.m_inputConnectionListener = qtInputConnectionListener;
        setParent(qtWindow);
        setFocusableInTouchMode(true);
        setDefaultFocusHighlightEnabled(false);
        setImportantForAccessibility(2);
        setVisible(false);
        if (!z && (context instanceof Activity)) {
            QtEditText qtEditText = new QtEditText(context, qtInputConnectionListener);
            this.m_editText = qtEditText;
            qtEditText.setFocusable(false);
            qtEditText.setFocusableInTouchMode(false);
            qtEditText.setImportantForAccessibility(2);
            final QtLayout.LayoutParams layoutParams = new QtLayout.LayoutParams(-2, -2);
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1949lambda$new$0$orgqtprojectqtandroidQtWindow(layoutParams);
                }
            });
        } else {
            this.m_editText = null;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1950lambda$new$1$orgqtprojectqtandroidQtWindow(context);
            }
        });
        registerSafeAreaMarginsListener();
    }

    /* JADX INFO: renamed from: lambda$new$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1949lambda$new$0$orgqtprojectqtandroidQtWindow(QtLayout.LayoutParams layoutParams) {
        addView(this.m_editText, layoutParams);
    }

    /* JADX INFO: renamed from: lambda$new$1$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1950lambda$new$1$orgqtprojectqtandroidQtWindow(Context context) {
        GestureDetector gestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: org.qtproject.qt.android.QtWindow.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                QtInputDelegate.longPress(QtWindow.this.getId(), (int) motionEvent.getX(), (int) motionEvent.getY());
            }
        });
        this.m_gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(true);
    }

    void registerSafeAreaMarginsListener() {
        if (getContext() instanceof QtActivityBase) {
            setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda3
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.f$0.m1951lambda$registerSafeAreaMarginsListener$0$orgqtprojectqtandroidQtWindow(view, windowInsets);
                }
            });
            if (isAttachedToWindow()) {
                final WindowInsets rootWindowInsets = getRootWindowInsets();
                if (rootWindowInsets != null) {
                    getRootView().post(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.m1952lambda$registerSafeAreaMarginsListener$1$orgqtprojectqtandroidQtWindow(rootWindowInsets);
                        }
                    });
                    this.m_firstSafeMarginsDelivered = true;
                }
            } else {
                addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: org.qtproject.qt.android.QtWindow.2
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view) {
                        view.removeOnAttachStateChangeListener(this);
                        view.requestApplyInsets();
                    }
                });
            }
            if (!this.m_firstSafeMarginsDelivered) {
                getViewTreeObserver().addOnPreDrawListener(new AnonymousClass3());
            }
            addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda5
                @Override // android.view.View.OnLayoutChangeListener
                public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    this.f$0.m1953lambda$registerSafeAreaMarginsListener$2$orgqtprojectqtandroidQtWindow(view, i, i2, i3, i4, i5, i6, i7, i8);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$registerSafeAreaMarginsListener$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ WindowInsets m1951lambda$registerSafeAreaMarginsListener$0$orgqtprojectqtandroidQtWindow(View view, WindowInsets windowInsets) {
        WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        reportSafeAreaMargins(windowInsetsOnApplyWindowInsets, getId());
        return windowInsetsOnApplyWindowInsets;
    }

    /* JADX INFO: renamed from: lambda$registerSafeAreaMarginsListener$1$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1952lambda$registerSafeAreaMarginsListener$1$orgqtprojectqtandroidQtWindow(WindowInsets windowInsets) {
        reportSafeAreaMargins(windowInsets, getId());
    }

    /* JADX INFO: renamed from: org.qtproject.qt.android.QtWindow$3, reason: invalid class name */
    class AnonymousClass3 implements ViewTreeObserver.OnPreDrawListener {
        AnonymousClass3() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            final WindowInsets rootWindowInsets;
            if (QtWindow.this.isAttachedToWindow() && (rootWindowInsets = QtWindow.this.getRootWindowInsets()) != null) {
                QtWindow.this.getViewTreeObserver().removeOnPreDrawListener(this);
                QtWindow.this.getRootView().post(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$3$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m1960lambda$onPreDraw$0$orgqtprojectqtandroidQtWindow$3(rootWindowInsets);
                    }
                });
                QtWindow.this.m_firstSafeMarginsDelivered = true;
                return true;
            }
            QtWindow.this.requestApplyInsets();
            return true;
        }

        /* JADX INFO: renamed from: lambda$onPreDraw$0$org-qtproject-qt-android-QtWindow$3, reason: not valid java name */
        /* synthetic */ void m1960lambda$onPreDraw$0$orgqtprojectqtandroidQtWindow$3(WindowInsets windowInsets) {
            QtWindow qtWindow = QtWindow.this;
            qtWindow.reportSafeAreaMargins(windowInsets, qtWindow.getId());
        }
    }

    /* JADX INFO: renamed from: lambda$registerSafeAreaMarginsListener$2$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1953lambda$registerSafeAreaMarginsListener$2$orgqtprojectqtandroidQtWindow(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        final WindowInsets rootWindowInsets = getRootWindowInsets();
        if (rootWindowInsets != null) {
            getRootView().post(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1954lambda$registerSafeAreaMarginsListener$3$orgqtprojectqtandroidQtWindow(rootWindowInsets);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$registerSafeAreaMarginsListener$3$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1954lambda$registerSafeAreaMarginsListener$3$orgqtprojectqtandroidQtWindow(WindowInsets windowInsets) {
        reportSafeAreaMargins(windowInsets, getId());
    }

    Insets getSafeInsets(View view, WindowInsets windowInsets) {
        int iActionBarHeight;
        if (Build.VERSION.SDK_INT >= 30) {
            return windowInsets.getInsets(WindowInsets.Type.displayCutout() | WindowInsets.Type.systemBars());
        }
        int systemWindowInsetLeft = windowInsets.getSystemWindowInsetLeft();
        int systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
        int systemWindowInsetRight = windowInsets.getSystemWindowInsetRight();
        int systemWindowInsetBottom = windowInsets.getSystemWindowInsetBottom();
        DisplayCutout displayCutout = windowInsets.getDisplayCutout();
        if (displayCutout != null) {
            systemWindowInsetLeft = Math.max(systemWindowInsetLeft, displayCutout.getSafeInsetLeft());
            systemWindowInsetTop = Math.max(systemWindowInsetTop, displayCutout.getSafeInsetTop());
            systemWindowInsetRight = Math.max(systemWindowInsetRight, displayCutout.getSafeInsetRight());
            systemWindowInsetBottom = Math.max(systemWindowInsetBottom, displayCutout.getSafeInsetBottom());
        }
        ActionBar actionBar = ((Activity) getContext()).getActionBar();
        if ((actionBar == null || !actionBar.isShowing()) && (iActionBarHeight = systemWindowInsetTop - actionBarHeight()) > 0) {
            systemWindowInsetTop = iActionBarHeight;
        }
        return Insets.of(systemWindowInsetLeft, systemWindowInsetTop, systemWindowInsetRight, systemWindowInsetBottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportSafeAreaMargins(WindowInsets windowInsets, int i) {
        View rootView = getRootView();
        int[] iArr = new int[2];
        rootView.getLocationOnScreen(iArr);
        int i2 = iArr[0];
        int i3 = iArr[1];
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i4 = iArr2[0];
        int i5 = iArr2[1];
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int width = (i2 + rootView.getWidth()) - (i4 + getWidth());
        int height = (i3 + rootView.getHeight()) - (i5 + getHeight());
        Insets safeInsets = getSafeInsets(rootView, windowInsets);
        safeAreaMarginsChanged(Insets.of(Math.max(0, Math.min(safeInsets.left, safeInsets.left - i6)), Math.max(0, Math.min(safeInsets.top, safeInsets.top - i7)), Math.max(0, Math.min(safeInsets.right, safeInsets.right - width)), Math.max(0, Math.min(safeInsets.bottom, safeInsets.bottom - height))), i);
    }

    private int actionBarHeight() {
        if (this.m_actionBarHeight == -1) {
            TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.actionBarSize});
            try {
                this.m_actionBarHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        return this.m_actionBarHeight;
    }

    /* JADX INFO: renamed from: lambda$setVisible$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1959lambda$setVisible$0$orgqtprojectqtandroidQtWindow(boolean z) {
        setVisibility(z ? 0 : 4);
    }

    void setVisible(final boolean z) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1959lambda$setVisible$0$orgqtprojectqtandroidQtWindow(z);
            }
        });
    }

    @Override // org.qtproject.qt.android.QtSurfaceInterface
    public void onSurfaceChanged(Surface surface) {
        setSurface(getId(), surface);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        QtInputConnection.QtInputConnectionListener qtInputConnectionListener;
        if (!this.m_editTextFocusInitialized) {
            this.m_editTextFocusInitialized = true;
            QtEditText qtEditText = this.m_editText;
            if (qtEditText != null) {
                qtEditText.setFocusable(true);
                this.m_editText.setFocusableInTouchMode(true);
            }
        }
        windowFocusChanged(true, getId());
        QtEditText qtEditText2 = this.m_editText;
        if (qtEditText2 != null && (qtInputConnectionListener = this.m_inputConnectionListener) != null) {
            qtInputConnectionListener.onEditTextChanged(qtEditText2);
        }
        QtInputDelegate.sendTouchEvent(motionEvent, getId());
        GestureDetector gestureDetector = this.m_gestureDetector;
        if (gestureDetector != null) {
            gestureDetector.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        QtInputDelegate.sendTrackballEvent(motionEvent, getId());
        return true;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return QtInputDelegate.sendGenericMotionEvent(motionEvent, getId());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setOnDragListener(QtDragManager.getInstance());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        QtDragManager.getInstance().onSourceWindowDetached(this);
        setOnDragListener(null);
        super.onDetachedFromWindow();
    }

    void removeWindow() {
        QtWindow qtWindow = this.m_parentWindow;
        if (qtWindow != null) {
            qtWindow.removeChildWindow(getId());
        }
    }

    void createSurface(final boolean z, final int i, final boolean z2, final int i2) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1947lambda$createSurface$0$orgqtprojectqtandroidQtWindow(i2, z, i, z2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$createSurface$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1947lambda$createSurface$0$orgqtprojectqtandroidQtWindow(int i, boolean z, int i2, boolean z2) {
        View view = this.m_surfaceContainer;
        if (view != null) {
            removeView(view);
        }
        if (i == 0) {
            this.m_surfaceContainer = new QtSurface(getContext(), this, z, i2);
        } else {
            this.m_surfaceContainer = new QtTextureView(getContext(), this, z2);
        }
        this.m_surfaceContainer.setLayoutParams(new QtLayout.LayoutParams(-1, -1));
        addView(this.m_surfaceContainer, 0);
    }

    void destroySurface() {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1948lambda$destroySurface$0$orgqtprojectqtandroidQtWindow();
            }
        }, false);
    }

    /* JADX INFO: renamed from: lambda$destroySurface$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1948lambda$destroySurface$0$orgqtprojectqtandroidQtWindow() {
        View view = this.m_surfaceContainer;
        if (view != null) {
            removeView(view);
            this.m_surfaceContainer = null;
        }
    }

    void setGeometry(final int i, final int i2, final int i3, final int i4) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1957lambda$setGeometry$0$orgqtprojectqtandroidQtWindow(i3, i4, i, i2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setGeometry$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1957lambda$setGeometry$0$orgqtprojectqtandroidQtWindow(int i, int i2, int i3, int i4) {
        if (getContext() instanceof QtActivityBase) {
            setLayoutParams(new QtLayout.LayoutParams(i, i2, i3, i4));
        }
    }

    void addChildWindow(final QtWindow qtWindow) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1944lambda$addChildWindow$0$orgqtprojectqtandroidQtWindow(qtWindow);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addChildWindow$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1944lambda$addChildWindow$0$orgqtprojectqtandroidQtWindow(QtWindow qtWindow) {
        this.m_childWindows.put(Integer.valueOf(qtWindow.getId()), qtWindow);
        addView(qtWindow, getChildCount());
    }

    void removeChildWindow(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1955lambda$removeChildWindow$0$orgqtprojectqtandroidQtWindow(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$removeChildWindow$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1955lambda$removeChildWindow$0$orgqtprojectqtandroidQtWindow(int i) {
        if (this.m_childWindows.containsKey(Integer.valueOf(i))) {
            removeView(this.m_childWindows.remove(Integer.valueOf(i)));
        }
    }

    void setNativeView(final View view) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1958lambda$setNativeView$0$orgqtprojectqtandroidQtWindow(view);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setNativeView$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1958lambda$setNativeView$0$orgqtprojectqtandroidQtWindow(View view) {
        View view2 = this.m_nativeView;
        if (view2 != null) {
            removeView(view2);
        }
        this.m_nativeView = view;
        view.setLayoutParams(new QtLayout.LayoutParams(-1, -1));
        addView(this.m_nativeView);
    }

    void bringChildToFront(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1946lambda$bringChildToFront$0$orgqtprojectqtandroidQtWindow(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$bringChildToFront$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1946lambda$bringChildToFront$0$orgqtprojectqtandroidQtWindow(int i) {
        QtWindow qtWindow = this.m_childWindows.get(Integer.valueOf(i));
        if (qtWindow == null || getChildCount() <= 0) {
            return;
        }
        moveChild(qtWindow, getChildCount() - 1);
    }

    void bringChildToBack(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1945lambda$bringChildToBack$0$orgqtprojectqtandroidQtWindow(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$bringChildToBack$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1945lambda$bringChildToBack$0$orgqtprojectqtandroidQtWindow(int i) {
        QtWindow qtWindow = this.m_childWindows.get(Integer.valueOf(i));
        if (qtWindow != null) {
            moveChild(qtWindow, 0);
        }
    }

    void removeNativeView() {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1956lambda$removeNativeView$0$orgqtprojectqtandroidQtWindow();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$removeNativeView$0$org-qtproject-qt-android-QtWindow, reason: not valid java name */
    /* synthetic */ void m1956lambda$removeNativeView$0$orgqtprojectqtandroidQtWindow() {
        View view = this.m_nativeView;
        if (view != null) {
            removeView(view);
            this.m_nativeView = null;
        }
    }

    void setParent(QtWindow qtWindow) {
        QtWindow qtWindow2 = this.m_parentWindow;
        if (qtWindow2 == qtWindow) {
            return;
        }
        if (qtWindow2 != null) {
            qtWindow2.removeChildWindow(getId());
        }
        this.m_parentWindow = qtWindow;
        if (qtWindow != null) {
            qtWindow.addChildWindow(this);
        }
    }

    void updateFocusedEditText() {
        QtInputConnection.QtInputConnectionListener qtInputConnectionListener;
        QtEditText qtEditText = this.m_editText;
        if (qtEditText == null || (qtInputConnectionListener = this.m_inputConnectionListener) == null) {
            return;
        }
        qtInputConnectionListener.onEditTextChanged(qtEditText);
    }
}
