package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.PopupMenu;
import java.util.HashMap;
import java.util.Objects;
import org.qtproject.qt.android.QtLayout;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
class QtActivityDelegate extends QtActivityDelegateBase implements QtWindowInterface, QtAccessibilityInterface, QtMenuInterface, QtNative.AppStateDetailsListener {
    private static final String QtTAG = "QtActivityDelegate";
    private boolean m_backendsRegistered;
    private View m_dummyView;
    private QtRootLayout m_layout;
    private final HashMap<Integer, View> m_nativeViews;
    private ImageView m_splashScreen;
    private boolean m_splashScreenSticky;

    QtActivityDelegate(Activity activity) {
        super(activity);
        this.m_layout = null;
        this.m_splashScreen = null;
        this.m_splashScreenSticky = false;
        this.m_backendsRegistered = false;
        this.m_dummyView = null;
        this.m_nativeViews = new HashMap<>();
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    void initMembers() {
        super.initMembers();
        setActionBarVisibility(false);
        setActivityBackgroundDrawable();
        if (QtNativeAccessibility.accessibilitySupported()) {
            this.m_accessibilityDelegate.initLayoutAccessibility(this.m_layout);
        }
    }

    void registerBackends() {
        if (this.m_backendsRegistered || BackendRegister.isNull()) {
            return;
        }
        this.m_backendsRegistered = true;
        BackendRegister.registerBackend(QtWindowInterface.class, this);
        BackendRegister.registerBackend(QtAccessibilityInterface.class, this);
        BackendRegister.registerBackend(QtMenuInterface.class, this);
        BackendRegister.registerBackend(QtInputInterface.class, this.m_inputDelegate);
    }

    void unregisterBackends() {
        if (this.m_backendsRegistered) {
            this.m_backendsRegistered = false;
            if (BackendRegister.isNull()) {
                return;
            }
            BackendRegister.unregisterBackend(QtWindowInterface.class);
            BackendRegister.unregisterBackend(QtAccessibilityInterface.class);
            BackendRegister.unregisterBackend(QtMenuInterface.class);
            BackendRegister.unregisterBackend(QtInputInterface.class);
        }
    }

    @Override // org.qtproject.qt.android.QtNative.AppStateDetailsListener
    public final void onAppStateDetailsChanged(QtNative.ApplicationStateDetails applicationStateDetails) {
        if (applicationStateDetails.isStarted) {
            registerBackends();
        } else {
            unregisterBackends();
        }
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    void startNativeApplicationImpl(final String str, final String str2) {
        QtRootLayout qtRootLayout = this.m_layout;
        if (qtRootLayout == null) {
            Log.e(QtTAG, "Unable to start native application with a null layout");
        } else {
            qtRootLayout.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: org.qtproject.qt.android.QtActivityDelegate.1
                final /* synthetic */ QtActivityDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (this.this$0.m_layout != null) {
                        QtNative.startApplication(str, str2);
                        this.this$0.m_layout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                }
            });
        }
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    protected void setUpLayout() {
        this.m_layout = new QtRootLayout(this.m_activity);
        setUpSplashScreen(this.m_activity.getResources().getConfiguration().orientation);
        this.m_activity.registerForContextMenu(this.m_layout);
        this.m_activity.setContentView(this.m_layout, new ViewGroup.LayoutParams(-1, -1));
        handleUiModeChange();
        this.m_displayManager.initDisplayProperties();
        this.m_layout.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return this.f$0.m1913lambda$setUpLayout$0$orgqtprojectqtandroidQtActivityDelegate();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setUpLayout$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ boolean m1913lambda$setUpLayout$0$orgqtprojectqtandroidQtActivityDelegate() {
        if (!this.m_inputDelegate.isKeyboardVisible()) {
            return true;
        }
        Rect rect = new Rect();
        this.m_activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        QtDisplayManager.getDisplay(this.m_activity).getMetrics(displayMetrics);
        int i = displayMetrics.heightPixels - rect.bottom;
        if (i < 0) {
            this.m_inputDelegate.setKeyboardVisibility(false, System.nanoTime());
            return true;
        }
        int[] iArr = new int[2];
        this.m_layout.getLocationOnScreen(iArr);
        QtInputDelegate.keyboardGeometryChanged(iArr[0], rect.bottom - iArr[1], rect.width(), i);
        return true;
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    protected void setUpSplashScreen(int i) {
        if (this.m_layout == null) {
            Log.e(QtTAG, "Unable to setup splash screen with a null layout");
            return;
        }
        try {
            ActivityInfo activityInfo = this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 128);
            String strConcat = "android.app.splash_screen_drawable_".concat(i == 2 ? "landscape" : "portrait");
            if (!activityInfo.metaData.containsKey(strConcat)) {
                strConcat = "android.app.splash_screen_drawable";
            }
            if (activityInfo.metaData.containsKey(strConcat)) {
                this.m_splashScreenSticky = activityInfo.metaData.containsKey("android.app.splash_screen_sticky") && activityInfo.metaData.getBoolean("android.app.splash_screen_sticky");
                int i2 = activityInfo.metaData.getInt(strConcat);
                ImageView imageView = new ImageView(this.m_activity);
                this.m_splashScreen = imageView;
                imageView.setImageDrawable(this.m_activity.getResources().getDrawable(i2, this.m_activity.getTheme()));
                this.m_splashScreen.setScaleType(ImageView.ScaleType.FIT_XY);
                this.m_splashScreen.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                this.m_layout.addView(this.m_splashScreen);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    protected void hideSplashScreen(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1908lambda$hideSplashScreen$0$orgqtprojectqtandroidQtActivityDelegate(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$hideSplashScreen$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1908lambda$hideSplashScreen$0$orgqtprojectqtandroidQtActivityDelegate(int i) {
        ImageView imageView = this.m_splashScreen;
        if (imageView == null) {
            return;
        }
        QtRootLayout qtRootLayout = this.m_layout;
        if (qtRootLayout != null && i <= 0) {
            qtRootLayout.removeView(imageView);
            this.m_splashScreen = null;
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setDuration(i);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: org.qtproject.qt.android.QtActivityDelegate.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                QtActivityDelegate.this.hideSplashScreen(0);
            }
        });
        this.m_splashScreen.startAnimation(alphaAnimation);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyLocationChange(int i) {
        this.m_accessibilityDelegate.notifyLocationChange(i);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyObjectHide(int i, int i2) {
        this.m_accessibilityDelegate.notifyObjectHide(i, i2);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyObjectShow(int i) {
        this.m_accessibilityDelegate.notifyObjectShow(i);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyObjectFocus(int i) {
        this.m_accessibilityDelegate.notifyObjectFocus(i);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyValueChanged(int i, String str) {
        this.m_accessibilityDelegate.notifyValueChanged(i, str);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyDescriptionOrNameChanged(int i, String str) {
        this.m_accessibilityDelegate.notifyDescriptionOrNameChanged(i, str);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyScrolledEvent(int i) {
        this.m_accessibilityDelegate.notifyScrolledEvent(i);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyAnnouncementEvent(int i, String str) {
        this.m_accessibilityDelegate.notifyAnnouncementEvent(i, str);
    }

    @Override // org.qtproject.qt.android.QtAccessibilityInterface
    public void notifyTextChanged(int i, String str, String str2, int i2, int i3, int i4) {
        this.m_accessibilityDelegate.notifyTextChanged(i, str, str2, i2, i3, i4);
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void resetOptionsMenu() {
        final Activity activity = this.m_activity;
        Objects.requireNonNull(activity);
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                activity.invalidateOptionsMenu();
            }
        });
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void openOptionsMenu() {
        final Activity activity = this.m_activity;
        Objects.requireNonNull(activity);
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                activity.openOptionsMenu();
            }
        });
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void closeContextMenu() {
        final Activity activity = this.m_activity;
        Objects.requireNonNull(activity);
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                activity.closeContextMenu();
            }
        });
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void openContextMenu(final int i, final int i2, final int i3, final int i4) {
        QtRootLayout qtRootLayout = this.m_layout;
        if (qtRootLayout == null) {
            Log.e(QtTAG, "Unable to open context menu with a null layout");
        } else {
            qtRootLayout.postDelayed(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1910lambda$openContextMenu$0$orgqtprojectqtandroidQtActivityDelegate(i3, i4, i, i2);
                }
            }, 100L);
        }
    }

    /* JADX INFO: renamed from: lambda$openContextMenu$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1910lambda$openContextMenu$0$orgqtprojectqtandroidQtActivityDelegate(int i, int i2, int i3, int i4) {
        if (this.m_layout == null) {
            Log.w(QtTAG, "Unable to open context menu on null layout");
            return;
        }
        QtEditText currentQtEditText = this.m_inputDelegate.getCurrentQtEditText();
        if (currentQtEditText == null) {
            Log.w(QtTAG, "No focused view when trying to open context menu");
            return;
        }
        this.m_layout.setLayoutParams(currentQtEditText, new QtLayout.LayoutParams(i, i2, i3, i4), false);
        currentQtEditText.requestLayout();
        currentQtEditText.getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass3(this, currentQtEditText));
    }

    /* JADX INFO: renamed from: org.qtproject.qt.android.QtActivityDelegate$3, reason: invalid class name */
    class AnonymousClass3 implements ViewTreeObserver.OnGlobalLayoutListener {
        final /* synthetic */ QtActivityDelegate this$0;
        final /* synthetic */ QtEditText val$focusedEditText;

        AnonymousClass3(QtActivityDelegate qtActivityDelegate, QtEditText qtEditText) {
            this.val$focusedEditText = qtEditText;
            this.this$0 = qtActivityDelegate;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.val$focusedEditText.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            PopupMenu popupMenu = new PopupMenu(this.this$0.m_activity, this.val$focusedEditText);
            this.this$0.onCreatePopupMenu(popupMenu.getMenu());
            final Activity activity = this.this$0.m_activity;
            Objects.requireNonNull(activity);
            popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda0
                @Override // android.widget.PopupMenu.OnMenuItemClickListener
                public final boolean onMenuItemClick(MenuItem menuItem) {
                    return activity.onContextItemSelected(menuItem);
                }
            });
            popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda1
                @Override // android.widget.PopupMenu.OnDismissListener
                public final void onDismiss(PopupMenu popupMenu2) {
                    this.f$0.m1915lambda$onGlobalLayout$0$orgqtprojectqtandroidQtActivityDelegate$3(popupMenu2);
                }
            });
            popupMenu.show();
        }

        /* JADX INFO: renamed from: lambda$onGlobalLayout$0$org-qtproject-qt-android-QtActivityDelegate$3, reason: not valid java name */
        /* synthetic */ void m1915lambda$onGlobalLayout$0$orgqtprojectqtandroidQtActivityDelegate$3(PopupMenu popupMenu) {
            this.this$0.m_activity.onContextMenuClosed(popupMenu.getMenu());
        }
    }

    void onCreatePopupMenu(Menu menu) {
        QtNative.fillContextMenu(menu);
        setContextMenuVisible(true);
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    void setActionBarVisibility(boolean z) {
        if (this.m_activity.getActionBar() == null) {
            return;
        }
        if (ViewConfiguration.get(this.m_activity).hasPermanentMenuKey() || !z) {
            this.m_activity.getActionBar().hide();
        } else {
            this.m_activity.getActionBar().show();
        }
    }

    @Override // org.qtproject.qt.android.QtWindowInterface
    public void addTopLevelWindow(final QtWindow qtWindow) {
        if (this.m_layout == null || qtWindow == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1905lambda$addTopLevelWindow$0$orgqtprojectqtandroidQtActivityDelegate(qtWindow);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$addTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1905lambda$addTopLevelWindow$0$orgqtprojectqtandroidQtActivityDelegate(QtWindow qtWindow) {
        View view;
        if (this.m_layout == null) {
            return;
        }
        if (this.m_topLevelWindows.isEmpty() && (view = this.m_dummyView) != null) {
            this.m_layout.removeView(view);
            this.m_dummyView = null;
        }
        this.m_layout.addView(qtWindow, this.m_topLevelWindows.size());
        this.m_topLevelWindows.put(Integer.valueOf(qtWindow.getId()), qtWindow);
        if (this.m_splashScreenSticky) {
            return;
        }
        hideSplashScreen();
    }

    @Override // org.qtproject.qt.android.QtWindowInterface
    public void removeTopLevelWindow(final int i) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1911lambda$removeTopLevelWindow$0$orgqtprojectqtandroidQtActivityDelegate(i);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$removeTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1911lambda$removeTopLevelWindow$0$orgqtprojectqtandroidQtActivityDelegate(int i) {
        if (this.m_topLevelWindows.containsKey(Integer.valueOf(i))) {
            QtWindow qtWindowRemove = this.m_topLevelWindows.remove(Integer.valueOf(i));
            qtWindowRemove.setOnApplyWindowInsetsListener(null);
            if (this.m_topLevelWindows.isEmpty()) {
                this.m_dummyView = qtWindowRemove;
                return;
            }
            QtRootLayout qtRootLayout = this.m_layout;
            if (qtRootLayout != null) {
                qtRootLayout.removeView(qtWindowRemove);
            }
        }
    }

    @Override // org.qtproject.qt.android.QtWindowInterface
    public void bringChildToFront(final int i) {
        if (this.m_layout != null) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1907lambda$bringChildToFront$0$orgqtprojectqtandroidQtActivityDelegate(i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$bringChildToFront$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1907lambda$bringChildToFront$0$orgqtprojectqtandroidQtActivityDelegate(int i) {
        QtRootLayout qtRootLayout;
        QtWindow qtWindow = this.m_topLevelWindows.get(Integer.valueOf(i));
        if (qtWindow == null || (qtRootLayout = this.m_layout) == null) {
            return;
        }
        qtRootLayout.moveChild(qtWindow, this.m_topLevelWindows.size() - 1);
    }

    @Override // org.qtproject.qt.android.QtWindowInterface
    public void bringChildToBack(final int i) {
        if (this.m_layout != null) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1906lambda$bringChildToBack$0$orgqtprojectqtandroidQtActivityDelegate(i);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$bringChildToBack$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1906lambda$bringChildToBack$0$orgqtprojectqtandroidQtActivityDelegate(int i) {
        QtRootLayout qtRootLayout;
        QtWindow qtWindow = this.m_topLevelWindows.get(Integer.valueOf(i));
        if (qtWindow == null || (qtRootLayout = this.m_layout) == null) {
            return;
        }
        qtRootLayout.moveChild(qtWindow, 0);
    }

    private void setActivityBackgroundDrawable() {
        Drawable drawable;
        TypedValue typedValue = new TypedValue();
        this.m_activity.getTheme().resolveAttribute(R.attr.windowBackground, typedValue, true);
        if (typedValue.type >= 28 && typedValue.type <= 31) {
            drawable = new ColorDrawable(typedValue.data);
        } else {
            drawable = this.m_activity.getResources().getDrawable(typedValue.resourceId, this.m_activity.getTheme());
        }
        this.m_activity.getWindow().setBackgroundDrawable(drawable);
    }

    void insertNativeView(final int i, final View view, final int i2, final int i3, final int i4, final int i5) {
        if (this.m_layout == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1909lambda$insertNativeView$0$orgqtprojectqtandroidQtActivityDelegate(i, i4, i5, view, i2, i3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$insertNativeView$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1909lambda$insertNativeView$0$orgqtprojectqtandroidQtActivityDelegate(int i, int i2, int i3, View view, int i4, int i5) {
        View view2 = this.m_dummyView;
        if (view2 != null) {
            this.m_layout.removeView(view2);
            this.m_dummyView = null;
        }
        if (this.m_nativeViews.containsKey(Integer.valueOf(i))) {
            this.m_layout.removeView(this.m_nativeViews.remove(Integer.valueOf(i)));
        }
        if (i2 < 0 || i3 < 0) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        } else {
            view.setLayoutParams(new QtLayout.LayoutParams(i2, i3, i4, i5));
        }
        view.setId(i);
        this.m_layout.addView(view);
        this.m_nativeViews.put(Integer.valueOf(i), view);
    }

    void setNativeViewGeometry(final int i, final int i2, final int i3, final int i4, final int i5) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1912lambda$setNativeViewGeometry$0$orgqtprojectqtandroidQtActivityDelegate(i, i4, i5, i2, i3);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$setNativeViewGeometry$0$org-qtproject-qt-android-QtActivityDelegate, reason: not valid java name */
    /* synthetic */ void m1912lambda$setNativeViewGeometry$0$orgqtprojectqtandroidQtActivityDelegate(int i, int i2, int i3, int i4, int i5) {
        if (this.m_nativeViews.containsKey(Integer.valueOf(i))) {
            View view = this.m_nativeViews.get(Integer.valueOf(i));
            if (view != null) {
                view.setLayoutParams(new QtLayout.LayoutParams(i2, i3, i4, i5));
                return;
            }
            return;
        }
        Log.e(QtTAG, "View " + i + " not found!");
    }
}
