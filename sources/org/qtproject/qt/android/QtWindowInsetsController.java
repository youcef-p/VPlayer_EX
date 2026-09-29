package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class QtWindowInsetsController {
    QtWindowInsetsController() {
    }

    private static void setDecorFitsSystemWindows(Window window, boolean z) {
        if (Build.VERSION.SDK_INT >= 30 && !isEdgeToEdgeEnforced(window.getContext())) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    private static int themeCutoutMode(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.windowLayoutInDisplayCutoutMode});
        try {
            return typedArrayObtainStyledAttributes.getInt(0, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private static void useCutoutShortEdges(Window window, boolean z) {
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.layoutInDisplayCutoutMode = z ? 1 : themeCutoutMode(window.getContext());
        window.setAttributes(attributes);
    }

    static void showNormal(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            return;
        }
        final View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 30) {
            setDecorFitsSystemWindows(window, true);
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.show(WindowInsets.Type.systemBars());
                insetsController.setSystemBarsBehavior(1);
            }
        } else {
            setSystemUiVisibility(decorView, 0);
        }
        setTransparentSystemBars(activity, false);
        useCutoutShortEdges(window, false);
        decorView.post(new Runnable() { // from class: org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                decorView.requestApplyInsets();
            }
        });
    }

    private static void setTransparentSystemBars(Activity activity, boolean z) {
        Window window = activity.getWindow();
        if (window == null || isEdgeToEdgeEnforced(activity)) {
            return;
        }
        window.clearFlags(201326592);
        window.addFlags(Integer.MIN_VALUE);
        if (z) {
            if (Build.VERSION.SDK_INT >= 29) {
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                return;
            } else {
                window.setStatusBarColor(window.getStatusBarColor() & ViewCompat.MEASURED_SIZE_MASK);
                window.setNavigationBarColor(window.getNavigationBarColor() & Integer.MAX_VALUE);
                return;
            }
        }
        window.setStatusBarColor(getThemeDefaultStatusBarColor(activity));
        window.setNavigationBarColor(getThemeDefaultNavigationBarColor(activity));
    }

    static void showExpanded(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            return;
        }
        final View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 30) {
            setDecorFitsSystemWindows(window, false);
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.show(WindowInsets.Type.systemBars());
                insetsController.setSystemBarsBehavior(1);
            }
        } else {
            setSystemUiVisibility(decorView, 1792);
        }
        setTransparentSystemBars(activity, true);
        useCutoutShortEdges(window, true);
        decorView.post(new Runnable() { // from class: org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                decorView.requestApplyInsets();
            }
        });
    }

    public static void showFullScreen(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            return;
        }
        final View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 30) {
            setDecorFitsSystemWindows(window, false);
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.hide(WindowInsets.Type.systemBars());
                insetsController.setSystemBarsBehavior(2);
            }
        } else {
            setSystemUiVisibility(decorView, 5894);
        }
        useCutoutShortEdges(window, true);
        decorView.post(new Runnable() { // from class: org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                decorView.requestApplyInsets();
            }
        });
    }

    private static boolean isEdgeToEdgeEnforced(Context context) {
        int i;
        if (Build.VERSION.SDK_INT < 35 || (i = context.getApplicationInfo().targetSdkVersion) < 35) {
            return false;
        }
        if (i > 35) {
            return true;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.windowOptOutEdgeToEdgeEnforcement});
        try {
            return !typedArrayObtainStyledAttributes.getBoolean(0, false);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    static boolean isFullScreen(Activity activity) {
        Window window = activity.getWindow();
        if (window == null) {
            return false;
        }
        View decorView = window.getDecorView();
        if (Build.VERSION.SDK_INT < 30) {
            return (decorView.getSystemUiVisibility() & 4096) == 4096;
        }
        if (activity.getWindow().getDecorView().getRootWindowInsets() != null) {
            return !r5.isVisible(WindowInsets.Type.statusBars());
        }
        return false;
    }

    static boolean isExpandedClientArea(Activity activity) {
        return isEdgeToEdgeEnforced(activity) || (activity.getWindow().getStatusBarColor() >>> 24) != 255;
    }

    static boolean decorFitsSystemWindows(Activity activity) {
        return (isFullScreen(activity) || isExpandedClientArea(activity)) ? false : true;
    }

    static void restoreFullScreenVisibility(Activity activity) {
        if (isFullScreen(activity)) {
            showFullScreen(activity);
        }
    }

    private static void setSystemUiVisibility(View view, int i) {
        view.setSystemUiVisibility(i);
    }

    static void setStatusBarColorHint(Activity activity, boolean z) {
        Window window = activity.getWindow();
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsAppearance(z ? 8 : 0, 8);
                return;
            }
            return;
        }
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        setSystemUiVisibility(window.getDecorView(), z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    static void setNavigationBarColorHint(Activity activity, boolean z) {
        Window window = activity.getWindow();
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.setSystemBarsAppearance(z ? 16 : 0, 16);
                return;
            }
            return;
        }
        int systemUiVisibility = window.getDecorView().getSystemUiVisibility();
        setSystemUiVisibility(window.getDecorView(), z ? systemUiVisibility | 16 : systemUiVisibility & (-17));
    }

    private static int resolveColorAttribute(Activity activity, int i) {
        Resources.Theme theme = activity.getTheme();
        Resources resources = activity.getResources();
        TypedValue typedValue = new TypedValue();
        if (!theme.resolveAttribute(i, typedValue, true)) {
            return -1;
        }
        if (typedValue.resourceId != 0) {
            return resources.getColor(typedValue.resourceId, theme);
        }
        if (typedValue.type < 28 || typedValue.type > 31) {
            return -1;
        }
        return typedValue.data;
    }

    static int getThemeDefaultStatusBarColor(Activity activity) {
        if (isEdgeToEdgeEnforced(activity)) {
            return -1;
        }
        return resolveColorAttribute(activity, R.attr.statusBarColor);
    }

    static int getThemeDefaultNavigationBarColor(Activity activity) {
        if (isEdgeToEdgeEnforced(activity)) {
            return -1;
        }
        return resolveColorAttribute(activity, R.attr.navigationBarColor);
    }

    static void enableSystemBarsBackgroundDrawing(Window window) {
        window.addFlags(Integer.MIN_VALUE);
        window.clearFlags(201326592);
    }

    static void setStatusBarColor(Window window, int i) {
        if (isEdgeToEdgeEnforced(window.getContext())) {
            return;
        }
        window.setStatusBarColor(i);
    }

    static void setNavigationBarColor(Window window, int i) {
        if (isEdgeToEdgeEnforced(window.getContext())) {
            return;
        }
        window.setNavigationBarColor(i);
    }
}
