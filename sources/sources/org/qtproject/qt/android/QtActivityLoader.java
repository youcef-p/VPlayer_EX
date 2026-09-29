package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.Log;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
class QtActivityLoader extends QtLoader {
    private final Activity m_activity;

    private QtActivityLoader(Activity activity) throws IllegalArgumentException {
        super(new ContextWrapper(activity));
        this.m_activity = activity;
        extractContextMetaData(activity);
    }

    static QtActivityLoader getActivityLoader(Activity activity) throws IllegalArgumentException {
        if (m_instance == null) {
            m_instance = new QtActivityLoader(activity);
        }
        return (QtActivityLoader) m_instance;
    }

    private String getDecodedUtfString(String str) {
        return new String(Base64.decode(str, 0), StandardCharsets.UTF_8);
    }

    int getAppIconSize() {
        int dimensionPixelSize = this.m_activity.getResources().getDimensionPixelSize(R.dimen.app_icon_size);
        if (dimensionPixelSize >= 36 && dimensionPixelSize <= 512) {
            return dimensionPixelSize;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        QtDisplayManager.getDisplay(this.m_activity).getMetrics(displayMetrics);
        int i = (displayMetrics.densityDpi / 10) * 3;
        int i2 = i >= 36 ? i : 36;
        if (i2 > 512) {
            return 512;
        }
        return i2;
    }

    private void setupStyleExtraction() {
        int i = this.m_activity.getResources().getDisplayMetrics().densityDpi;
        setEnvironmentVariable("QT_ANDROID_THEME_DISPLAY_DPI", String.valueOf(i));
        String metaData = getMetaData("android.app.extract_android_style");
        if (metaData.equals("full")) {
            setEnvironmentVariable("QT_USE_ANDROID_NATIVE_STYLE", String.valueOf(1));
        }
        setEnvironmentVariable("ANDROID_STYLE_PATH", ExtractStyle.setup(this.m_activity, metaData, i));
    }

    @Override // org.qtproject.qt.android.QtLoader
    protected void extractContextMetaData(Context context) {
        super.extractContextMetaData(context);
        setEnvironmentVariable("QT_USE_ANDROID_NATIVE_DIALOGS", String.valueOf(1));
        setEnvironmentVariable("QT_ANDROID_APP_ICON_SIZE", String.valueOf(getAppIconSize()));
        setupStyleExtraction();
        Intent intent = this.m_activity.getIntent();
        if (intent == null) {
            Log.w("QtLoader", "Null Intent from the current Activity.");
            return;
        }
        Bundle extras = intent.getExtras();
        if (extras == null) {
            Log.w("QtLoader", "Null extras from the Activity's intent.");
            return;
        }
        if ((this.m_activity.getApplicationInfo().flags & 2) != 0) {
            if (extras.containsKey("extraenvvars")) {
                setEnvironmentVariables(getDecodedUtfString(extras.getString("extraenvvars")));
            }
            for (String str : extras.keySet()) {
                if (str.startsWith("extraenvvars_")) {
                    setEnvironmentVariable(str.substring("extraenvvars_".length()), extras.getString(str));
                }
            }
            if (extras.containsKey("extraappparams")) {
                appendApplicationParameters(getDecodedUtfString(extras.getString("extraappparams")));
                return;
            }
            return;
        }
        Log.d("Qt JAVA", "Not in debug mode! It is not allowed to use extra arguments in non-debug mode.");
    }
}
