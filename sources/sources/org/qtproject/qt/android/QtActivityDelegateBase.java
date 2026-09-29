package org.qtproject.qt.android;

import android.app.Activity;
import android.app.UiModeManager;
import android.content.pm.PackageManager;
import android.os.Build;
import android.view.Window;
import java.util.HashMap;
import org.qtproject.qt.android.QtInputDelegate;

/* JADX INFO: loaded from: classes.dex */
abstract class QtActivityDelegateBase {
    protected final QtAccessibilityDelegate m_accessibilityDelegate;
    protected final Activity m_activity;
    protected final QtDisplayManager m_displayManager;
    protected final QtInputDelegate m_inputDelegate;
    protected final HashMap<Integer, QtWindow> m_topLevelWindows = new HashMap<>();
    private boolean m_membersInitialized = false;
    private boolean m_contextMenuVisible = false;

    static native boolean canOverrideColorSchemeHint();

    static native void updateUiContrast(float f);

    void hideSplashScreen(int i) {
    }

    void setActionBarVisibility(boolean z) {
    }

    void setUpLayout() {
    }

    void setUpSplashScreen(int i) {
    }

    abstract void startNativeApplicationImpl(String str, String str2);

    QtActivityDelegateBase(Activity activity) {
        this.m_activity = activity;
        QtNative.setActivity(activity);
        this.m_displayManager = new QtDisplayManager(activity);
        this.m_inputDelegate = new QtInputDelegate(new QtInputDelegate.KeyboardVisibilityListener() { // from class: org.qtproject.qt.android.QtActivityDelegateBase$$ExternalSyntheticLambda0
            @Override // org.qtproject.qt.android.QtInputDelegate.KeyboardVisibilityListener
            public final void onKeyboardVisibilityChange() {
                this.f$0.m1916lambda$new$0$orgqtprojectqtandroidQtActivityDelegateBase();
            }
        });
        this.m_accessibilityDelegate = new QtAccessibilityDelegate();
    }

    /* JADX INFO: renamed from: lambda$new$0$org-qtproject-qt-android-QtActivityDelegateBase, reason: not valid java name */
    /* synthetic */ void m1916lambda$new$0$orgqtprojectqtandroidQtActivityDelegateBase() {
        QtWindowInsetsController.restoreFullScreenVisibility(this.m_activity);
    }

    QtDisplayManager displayManager() {
        return this.m_displayManager;
    }

    QtInputDelegate getInputDelegate() {
        return this.m_inputDelegate;
    }

    void setContextMenuVisible(boolean z) {
        this.m_contextMenuVisible = z;
    }

    boolean isContextMenuVisible() {
        return this.m_contextMenuVisible;
    }

    void startNativeApplication(String str, String str2) {
        if (this.m_membersInitialized) {
            return;
        }
        initMembers();
        startNativeApplicationImpl(str, str2);
    }

    void initMembers() {
        this.m_membersInitialized = true;
        this.m_topLevelWindows.clear();
        this.m_displayManager.registerDisplayListener();
        this.m_inputDelegate.initInputMethodManager(this.m_activity);
        try {
            this.m_inputDelegate.setSoftInputMode(this.m_activity.getPackageManager().getActivityInfo(this.m_activity.getComponentName(), 0).softInputMode);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        setUpLayout();
    }

    void hideSplashScreen() {
        hideSplashScreen(0);
    }

    void handleUiModeChange() {
        int i = this.m_activity.getResources().getConfiguration().uiMode & 48;
        if (QtWindowInsetsController.decorFitsSystemWindows(this.m_activity)) {
            Window window = this.m_activity.getWindow();
            QtWindowInsetsController.enableSystemBarsBackgroundDrawing(window);
            QtWindowInsetsController.setStatusBarColor(window, QtWindowInsetsController.getThemeDefaultStatusBarColor(this.m_activity));
            QtWindowInsetsController.setNavigationBarColor(window, QtWindowInsetsController.getThemeDefaultNavigationBarColor(this.m_activity));
        }
        if (canOverrideColorSchemeHint()) {
            boolean z = i == 16;
            QtWindowInsetsController.setStatusBarColorHint(this.m_activity, z);
            QtWindowInsetsController.setNavigationBarColorHint(this.m_activity, z);
        }
        if (i == 16) {
            ExtractStyle.runIfNeeded(this.m_activity, false);
            QtDisplayManager.handleUiDarkModeChanged(0);
        } else if (i == 32) {
            ExtractStyle.runIfNeeded(this.m_activity, true);
            QtDisplayManager.handleUiDarkModeChanged(1);
        }
        if (Build.VERSION.SDK_INT >= 34) {
            updateUiContrast(((UiModeManager) this.m_activity.getSystemService("uimode")).getContrast());
        }
    }
}
