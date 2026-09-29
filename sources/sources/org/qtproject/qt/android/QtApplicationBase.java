package org.qtproject.qt.android;

import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public class QtApplicationBase extends Application {
    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        QtNative.terminateQtNativeApplication();
    }
}
