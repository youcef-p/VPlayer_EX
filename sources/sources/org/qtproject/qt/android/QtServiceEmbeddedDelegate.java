package org.qtproject.qt.android;

import android.app.Service;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import java.util.HashSet;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
class QtServiceEmbeddedDelegate implements QtEmbeddedViewInterface, QtNative.AppStateDetailsListener {
    private final Service m_service;
    private final HashSet<QtView> m_views = new HashSet<>();

    QtServiceEmbeddedDelegate(Service service) {
        this.m_service = service;
        QtNative.registerAppStateListener(this);
        QtNative.setService(service);
    }

    @Override // org.qtproject.qt.android.QtNative.AppStateDetailsListener
    public void onNativePluginIntegrationReadyChanged(boolean z) {
        synchronized (this) {
            if (z) {
                QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m1941lambda$onNativePluginIntegrationReadyChanged$0$orgqtprojectqtandroidQtServiceEmbeddedDelegate();
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtServiceEmbeddedDelegate, reason: not valid java name */
    /* synthetic */ void m1941lambda$onNativePluginIntegrationReadyChanged$0$orgqtprojectqtandroidQtServiceEmbeddedDelegate() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        QtDisplayManager.handleLayoutSizeChanged(displayMetrics.widthPixels, displayMetrics.heightPixels);
        QtDisplayManager.updateRefreshRate(this.m_service);
        QtDisplayManager.handleScreenDensityChanged(displayMetrics.density);
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void startQtApplication(String str, String str2) {
        QtNative.startApplication(str, str2);
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void addView(final QtView qtView) {
        if (this.m_views.add(qtView)) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1940lambda$addView$0$orgqtprojectqtandroidQtServiceEmbeddedDelegate(qtView);
                }
            });
        }
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void removeView(QtView qtView) {
        this.m_views.remove(qtView);
        if (this.m_views.isEmpty()) {
            cleanup();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createRootWindow, reason: merged with bridge method [inline-methods] */
    public void m1940lambda$addView$0$orgqtprojectqtandroidQtServiceEmbeddedDelegate(QtView qtView) {
        if (this.m_views.contains(qtView)) {
            QtView.createRootWindow(qtView, qtView.getLeft(), qtView.getTop(), qtView.getWidth(), qtView.getHeight());
        }
    }

    private void cleanup() {
        QtNative.setApplicationState(0);
        QtNative.unregisterAppStateListener(this);
        QtEmbeddedViewInterfaceFactory.remove(this.m_service);
        QtNative.terminateQtNativeApplication();
        QtNative.setService(null);
    }
}
