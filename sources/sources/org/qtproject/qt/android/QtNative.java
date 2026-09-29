package org.qtproject.qt.android;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.system.Os;
import android.util.Log;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class QtNative {
    static final String QtTAG = "Qt JAVA";
    private static WeakReference<Activity> m_activity;
    private static WeakReference<Service> m_service;
    private static final Object m_mainActivityMutex = new Object();
    private static final ApplicationStateDetails m_stateDetails = new ApplicationStateDetails();
    private static final BackgroundActionsTracker m_backgroundActionsTracker = new BackgroundActionsTracker();
    private static QtThread m_qtThread = null;
    private static final Object m_qtThreadLock = new Object();
    private static ClassLoader m_classLoader = null;
    private static final Runnable runPendingCppRunnablesRunnable = new Runnable() { // from class: org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda0
        @Override // java.lang.Runnable
        public final void run() {
            QtNative.runPendingCppRunnables();
        }
    };
    private static final ArrayList<AppStateDetailsListener> m_appStateListeners = new ArrayList<>();
    private static final Object m_appStateListenersLock = new Object();

    interface AppStateDetailsListener {
        default void onAppStateDetailsChanged(ApplicationStateDetails applicationStateDetails) {
        }

        default void onNativePluginIntegrationReadyChanged(boolean z) {
        }
    }

    static native void fillContextMenu(Menu menu);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native boolean initAndroidQpaPlugin();

    static native void onActivityResult(int i, int i2, Intent intent);

    static native IBinder onBind(Intent intent);

    static native boolean onContextItemSelected(int i, boolean z);

    static native void onContextMenuClosed(Menu menu);

    static native void onCreateContextMenu(ContextMenu contextMenu);

    public static native void onNewIntent(Intent intent);

    static native boolean onOptionsItemSelected(int i, boolean z);

    static native void onOptionsMenuClosed(Menu menu);

    static native boolean onPrepareOptionsMenu(Menu menu);

    static native void runPendingCppRunnables();

    static native void sendRequestPermissionsResult(int i, int[] iArr);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static native void startQtNativeApplication(String str);

    static native void terminateQtNativeApplication();

    static native void updateApplicationState(int i);

    static native void updateLocale();

    static native boolean updateNativeActivity();

    static native void waitForServiceSetup();

    static ClassLoader classLoader() {
        return m_classLoader;
    }

    static void setClassLoader(ClassLoader classLoader) {
        m_classLoader = classLoader;
    }

    static void setActivity(Activity activity) {
        synchronized (m_mainActivityMutex) {
            m_activity = new WeakReference<>(activity);
            try {
                if (m_stateDetails.isStarted) {
                    updateNativeActivity();
                }
            } catch (UnsatisfiedLinkError unused) {
            }
        }
    }

    static void setService(Service service) {
        synchronized (m_mainActivityMutex) {
            m_service = new WeakReference<>(service);
        }
    }

    static Activity activity() {
        Activity activity;
        synchronized (m_mainActivityMutex) {
            WeakReference<Activity> weakReference = m_activity;
            activity = weakReference != null ? weakReference.get() : null;
        }
        return activity;
    }

    static boolean isActivityValid() {
        WeakReference<Activity> weakReference = m_activity;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    static Service service() {
        Service service;
        synchronized (m_mainActivityMutex) {
            WeakReference<Service> weakReference = m_service;
            service = weakReference != null ? weakReference.get() : null;
        }
        return service;
    }

    static boolean isServiceValid() {
        WeakReference<Service> weakReference = m_service;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    static Context getContext() {
        if (isActivityValid()) {
            return m_activity.get();
        }
        return service();
    }

    static String[] getStringArray(String str) {
        return str.split(",");
    }

    private static String getCurrentMethodNameLog() {
        return new Exception().getStackTrace()[1].getMethodName() + ": ";
    }

    private static Uri getUriWithValidPermission(Context context, String str, String str2) {
        try {
            Uri uri = Uri.parse(str);
            try {
                String scheme = uri.getScheme();
                if (scheme == null || scheme.compareTo("content") == 0) {
                    List<UriPermission> persistedUriPermissions = context.getContentResolver().getPersistedUriPermissions();
                    String path = uri.getPath();
                    for (int i = 0; i < persistedUriPermissions.size(); i++) {
                        Uri uri2 = persistedUriPermissions.get(i).getUri();
                        boolean zIsReadPermission = persistedUriPermissions.get(i).isReadPermission();
                        if (!str2.equals("r")) {
                            zIsReadPermission = persistedUriPermissions.get(i).isWritePermission();
                        }
                        if (Objects.equals(uri2.getPath(), path) && zIsReadPermission) {
                            return uri2;
                        }
                    }
                }
                return uri;
            } catch (SecurityException e) {
                Log.e(QtTAG, getCurrentMethodNameLog() + e);
                return uri;
            }
        } catch (NullPointerException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    static boolean openURL(Context context, String str, String str2) {
        Uri uriWithValidPermission = getUriWithValidPermission(context, str, "r");
        if (uriWithValidPermission == null) {
            Log.e(QtTAG, getCurrentMethodNameLog() + "received invalid/null Uri");
            return false;
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", uriWithValidPermission);
            intent.addFlags(1);
            if (!str2.isEmpty()) {
                intent.setDataAndType(uriWithValidPermission, str2);
            }
            Activity activity = activity();
            if (activity == null) {
                Log.w(QtTAG, "openURL(): The activity reference is null");
                return false;
            }
            activity.startActivity(intent);
            return true;
        } catch (Exception e) {
            Log.e(QtTAG, getCurrentMethodNameLog() + e);
            return false;
        }
    }

    static QtThread getQtThread() {
        QtThread qtThread;
        QtThread qtThread2 = m_qtThread;
        if (qtThread2 != null && qtThread2.isAlive()) {
            return m_qtThread;
        }
        synchronized (m_qtThreadLock) {
            QtThread qtThread3 = m_qtThread;
            if (qtThread3 == null || !qtThread3.isAlive()) {
                m_qtThread = new QtThread();
            }
            qtThread = m_qtThread;
        }
        return qtThread;
    }

    static class ApplicationState {
        static final int ApplicationActive = 4;
        static final int ApplicationHidden = 1;
        static final int ApplicationInactive = 2;
        static final int ApplicationSuspended = 0;

        ApplicationState() {
        }
    }

    static class ApplicationStateDetails {
        int state = 0;
        boolean nativePluginIntegrationReady = false;
        boolean isStarted = false;

        ApplicationStateDetails() {
        }
    }

    static ApplicationStateDetails getStateDetails() {
        return m_stateDetails;
    }

    static void setStarted(boolean z) {
        ApplicationStateDetails applicationStateDetails = m_stateDetails;
        applicationStateDetails.isStarted = z;
        notifyAppStateDetailsChanged(applicationStateDetails);
    }

    static void notifyNativePluginIntegrationReady(boolean z) {
        ApplicationStateDetails applicationStateDetails = m_stateDetails;
        applicationStateDetails.nativePluginIntegrationReady = z;
        notifyNativePluginIntegrationReadyChanged(z);
        notifyAppStateDetailsChanged(applicationStateDetails);
        String str = Os.getenv("QT_ANDROID_BACKGROUND_ACTIONS_QUEUE_SIZE");
        if (str != null) {
            try {
                m_backgroundActionsTracker.setMaxAllowedActions(Integer.parseInt(str));
            } catch (NumberFormatException unused) {
                Log.e(QtTAG, "Parsing failed, QT_ANDROID_BACKGROUND_ACTIONS_QUEUE_SIZE value is not an integer");
            }
        }
    }

    static void setApplicationState(int i) {
        ApplicationStateDetails applicationStateDetails;
        synchronized (m_mainActivityMutex) {
            applicationStateDetails = m_stateDetails;
            applicationStateDetails.state = i;
            if (i == 4) {
                m_backgroundActionsTracker.processActions();
            }
        }
        updateApplicationState(i);
        notifyAppStateDetailsChanged(applicationStateDetails);
    }

    static void registerAppStateListener(AppStateDetailsListener appStateDetailsListener) {
        synchronized (m_appStateListenersLock) {
            ArrayList<AppStateDetailsListener> arrayList = m_appStateListeners;
            if (!arrayList.contains(appStateDetailsListener)) {
                arrayList.add(appStateDetailsListener);
            }
        }
    }

    static void unregisterAppStateListener(AppStateDetailsListener appStateDetailsListener) {
        synchronized (m_appStateListenersLock) {
            m_appStateListeners.remove(appStateDetailsListener);
        }
    }

    static void notifyNativePluginIntegrationReadyChanged(boolean z) {
        synchronized (m_appStateListenersLock) {
            Iterator<AppStateDetailsListener> it = m_appStateListeners.iterator();
            while (it.hasNext()) {
                it.next().onNativePluginIntegrationReadyChanged(z);
            }
        }
    }

    static void notifyAppStateDetailsChanged(ApplicationStateDetails applicationStateDetails) {
        synchronized (m_appStateListenersLock) {
            Iterator<AppStateDetailsListener> it = m_appStateListeners.iterator();
            while (it.hasNext()) {
                it.next().onAppStateDetailsChanged(applicationStateDetails);
            }
        }
    }

    static void runAction(Runnable runnable) {
        runAction(runnable, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void runAction(java.lang.Runnable r3, boolean r4) {
        /*
            java.lang.Object r0 = org.qtproject.qt.android.QtNative.m_mainActivityMutex
            monitor-enter(r0)
            android.os.Looper r1 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L3a
            android.os.Handler r2 = new android.os.Handler     // Catch: java.lang.Throwable -> L3a
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L35
            org.qtproject.qt.android.QtNative$ApplicationStateDetails r4 = org.qtproject.qt.android.QtNative.m_stateDetails     // Catch: java.lang.Throwable -> L3a
            int r1 = r4.state     // Catch: java.lang.Throwable -> L3a
            if (r1 == 0) goto L1a
            int r4 = r4.state     // Catch: java.lang.Throwable -> L3a
            r1 = 1
            if (r4 == r1) goto L1a
            goto L1b
        L1a:
            r1 = 0
        L1b:
            boolean r4 = isActivityValid()     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L23
            if (r1 != 0) goto L29
        L23:
            boolean r4 = isServiceValid()     // Catch: java.lang.Throwable -> L3a
            if (r4 == 0) goto L2f
        L29:
            boolean r4 = r2.post(r3)     // Catch: java.lang.Throwable -> L3a
            if (r4 != 0) goto L38
        L2f:
            org.qtproject.qt.android.BackgroundActionsTracker r4 = org.qtproject.qt.android.QtNative.m_backgroundActionsTracker     // Catch: java.lang.Throwable -> L3a
            r4.enqueue(r3)     // Catch: java.lang.Throwable -> L3a
            goto L38
        L35:
            r2.post(r3)     // Catch: java.lang.Throwable -> L3a
        L38:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            return
        L3a:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3a
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.qtproject.qt.android.QtNative.runAction(java.lang.Runnable, boolean):void");
    }

    private static void runPendingCppRunnablesOnAndroidThread() {
        synchronized (m_mainActivityMutex) {
            if (isActivityValid()) {
                if (m_stateDetails.state == 4) {
                    m_activity.get().runOnUiThread(runPendingCppRunnablesRunnable);
                } else {
                    runAction(runPendingCppRunnablesRunnable);
                }
            } else {
                Looper mainLooper = Looper.getMainLooper();
                if (mainLooper.getThread().equals(Thread.currentThread())) {
                    runPendingCppRunnablesRunnable.run();
                } else {
                    new Handler(mainLooper).post(runPendingCppRunnablesRunnable);
                }
            }
        }
    }

    private static void setViewVisibility(final View view, final boolean z) {
        runAction(new Runnable() { // from class: org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(z ? 0 : 8);
            }
        });
    }

    static void startApplication(String str, String str2) {
        if (m_stateDetails.isStarted) {
            return;
        }
        getQtThread().run(new Runnable() { // from class: org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                QtNative.initAndroidQpaPlugin();
            }
        });
        final String str3 = str2 + " " + str;
        getQtThread().post(new Runnable() { // from class: org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                QtNative.startQtNativeApplication(str3);
            }
        });
        waitForServiceSetup();
        setStarted(true);
    }

    static int checkSelfPermission(String str) {
        int iCheckPermission;
        synchronized (m_mainActivityMutex) {
            Context context = getContext();
            iCheckPermission = context.getPackageManager().checkPermission(str, context.getPackageName());
        }
        return iCheckPermission;
    }

    private static byte[][] getSSLCertificates() {
        ArrayList arrayList = new ArrayList();
        try {
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init((KeyStore) null);
            for (TrustManager trustManager : trustManagerFactory.getTrustManagers()) {
                if (trustManager instanceof X509TrustManager) {
                    for (X509Certificate x509Certificate : ((X509TrustManager) trustManager).getAcceptedIssuers()) {
                        arrayList.add(x509Certificate.getEncoded());
                    }
                }
            }
        } catch (Exception e) {
            Log.e(QtTAG, "Failed to get certificates", e);
        }
        return (byte[][]) arrayList.toArray(new byte[arrayList.size()][]);
    }

    private static String[] listAssetContent(AssetManager assetManager, String str) {
        ArrayList arrayList = new ArrayList();
        try {
            String[] list = assetManager.list(str);
            if (list != null) {
                for (String str2 : list) {
                    try {
                        String[] list2 = assetManager.list(!str.isEmpty() ? str + "/" + str2 : str2);
                        if (list2 != null && list2.length > 0) {
                            str2 = str2 + "/";
                        }
                        arrayList.add(str2);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return (String[]) arrayList.toArray(new String[0]);
    }
}
