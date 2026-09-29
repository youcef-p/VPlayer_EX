package org.qtproject.qt.android;

import android.content.Context;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes.dex */
class QtEmbeddedLoader extends QtLoader {
    private static final String TAG = "QtEmbeddedLoader";

    private QtEmbeddedLoader(Context context) throws IllegalArgumentException {
        super(new ContextWrapper(context));
        int i = context.getResources().getDisplayMetrics().densityDpi;
        setEnvironmentVariable("QT_ANDROID_THEME_DISPLAY_DPI", String.valueOf(i));
        setEnvironmentVariable("ANDROID_STYLE_PATH", ExtractStyle.setup(context, "minimal", i));
        setEnvironmentVariable("QT_ANDROID_NO_EXIT_CALL", String.valueOf(true));
        extractContextMetaData(context);
    }

    static QtEmbeddedLoader getEmbeddedLoader(Context context) throws IllegalArgumentException {
        if (m_instance == null) {
            m_instance = new QtEmbeddedLoader(context);
        }
        return (QtEmbeddedLoader) m_instance;
    }
}
