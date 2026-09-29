package org.qtproject.qt.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Size;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class QtDisplayManager {
    private static String QtTAG = "QtDisplayManager";
    private static int m_previousRotation = -1;
    private final Activity m_activity;
    private final DisplayManager.DisplayListener m_displayListener = new DisplayManager.DisplayListener() { // from class: org.qtproject.qt.android.QtDisplayManager.1
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
            QtDisplayManager.handleScreenAdded(i);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            QtDisplayManager.updateRefreshRate(QtDisplayManager.this.m_activity);
            QtDisplayManager.updateScreenDensity(QtDisplayManager.this.m_activity);
            QtDisplayManager.handleScreenChanged(i);
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
            QtDisplayManager.handleScreenRemoved(i);
        }
    };

    static native void handleLayoutSizeChanged(int i, int i2);

    static native void handleOrientationChanged(int i, int i2);

    static native void handleRefreshRateChanged(float f);

    static native void handleScreenAdded(int i);

    static native void handleScreenChanged(int i);

    static native void handleScreenDensityChanged(double d);

    static native void handleScreenRemoved(int i);

    static native void handleUiDarkModeChanged(int i);

    QtDisplayManager(Activity activity) {
        this.m_activity = activity;
    }

    static void updateRefreshRate(Context context) {
        Display display = getDisplay(context);
        handleRefreshRateChanged(display != null ? display.getRefreshRate() : 60.0f);
    }

    static void handleOrientationChange(Activity activity) {
        Display display = getDisplay(activity);
        int rotation = display != null ? display.getRotation() : 0;
        if (m_previousRotation == rotation) {
            return;
        }
        handleOrientationChanged(rotation, getNativeOrientation(activity, rotation));
        m_previousRotation = rotation;
    }

    static void updateScreenDensity(Activity activity) {
        handleScreenDensityChanged((activity == null ? Resources.getSystem() : activity.getResources()).getDisplayMetrics().density);
    }

    private static int getNativeOrientation(Activity activity, int i) {
        int i2 = activity.getResources().getConfiguration().orientation;
        boolean z = i == 1 || i == 3;
        boolean z2 = i2 == 2;
        return ((!z2 || z) && (z2 || !z)) ? 1 : 2;
    }

    void initDisplayProperties() {
        handleOrientationChange(this.m_activity);
        updateRefreshRate(this.m_activity);
        updateScreenDensity(this.m_activity);
    }

    void registerDisplayListener() {
        ((DisplayManager) this.m_activity.getSystemService("display")).registerDisplayListener(this.m_displayListener, null);
    }

    void unregisterDisplayListener() {
        ((DisplayManager) this.m_activity.getSystemService("display")).unregisterDisplayListener(this.m_displayListener);
    }

    static Display getDisplay(Context context) {
        Activity activity = (Activity) context;
        if (activity != null) {
            if (Build.VERSION.SDK_INT < 30) {
                return activity.getWindowManager().getDefaultDisplay();
            }
            return activity.getDisplay();
        }
        return ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0);
    }

    static Display getDisplay(Context context, int i) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return displayManager.getDisplay(i);
        }
        return null;
    }

    static List<Display> getAvailableDisplays(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return Arrays.asList(displayManager.getDisplays());
        }
        return new ArrayList();
    }

    static Size getDisplaySize(Context context, Display display) {
        WindowManager windowManager;
        if (display == null || context == null) {
            return new Size(0, 0);
        }
        if (Build.VERSION.SDK_INT < 30) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getRealMetrics(displayMetrics);
            return new Size(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        try {
            windowManager = (WindowManager) context.createDisplayContext(display).getSystemService(WindowManager.class);
        } catch (Exception e) {
            Log.e(QtTAG, "Failed to retrieve display metrics with " + e);
        }
        if (windowManager != null) {
            Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
            return new Size(bounds.width(), bounds.height());
        }
        Log.e(QtTAG, "getDisplaySize(): WindowManager null, display ID" + display.getDisplayId());
        return new Size(0, 0);
    }

    static float getXDpi(DisplayMetrics displayMetrics) {
        if (displayMetrics.xdpi < 120.0f) {
            return 120.0f;
        }
        return displayMetrics.xdpi;
    }

    static float getYDpi(DisplayMetrics displayMetrics) {
        if (displayMetrics.ydpi < 120.0f) {
            return 120.0f;
        }
        return displayMetrics.ydpi;
    }
}
