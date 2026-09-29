package org.qtproject.qt.android;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import java.util.Objects;
import org.qtproject.qt.android.QtLoader;

/* JADX INFO: loaded from: classes.dex */
public class QtServiceBase extends Service {
    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (QtNative.getStateDetails().isStarted) {
            Log.w("Qt JAVA", "A QtService tried to start in the same process as an initiated QtActivity. That is not supported. This results in the service functioning as an Android Service detached from Qt.");
            return;
        }
        QtNative.setService(this);
        try {
            QtServiceLoader serviceLoader = QtServiceLoader.getServiceLoader(this);
            QtLoader.LoadingResult loadingResultLoadQtLibraries = serviceLoader.loadQtLibraries();
            if (loadingResultLoadQtLibraries == QtLoader.LoadingResult.Failed) {
                Log.w("Qt JAVA", "QtServiceLoader: failed to load Qt libraries");
                stopSelf();
            } else if (loadingResultLoadQtLibraries == QtLoader.LoadingResult.Succeeded) {
                QtNative.startApplication(serviceLoader.getApplicationParameters(), serviceLoader.getMainLibraryPath());
                QtNative.setApplicationState(1);
            }
        } catch (IllegalArgumentException e) {
            Log.w("Qt JAVA", (String) Objects.requireNonNull(e.getMessage()));
            stopSelf();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (QtNative.getStateDetails().isStarted) {
            QtNative.terminateQtNativeApplication();
        }
        QtNative.setService(null);
        System.exit(0);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        IBinder iBinderOnBind;
        synchronized (this) {
            iBinderOnBind = QtNative.onBind(intent);
        }
        return iBinderOnBind;
    }
}
