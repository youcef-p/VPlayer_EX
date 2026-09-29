package org.qtproject.qt.android;

import android.app.Activity;
import android.app.Application;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupMenu;
import java.util.HashSet;
import java.util.Objects;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
class QtEmbeddedDelegate extends QtActivityDelegateBase implements QtNative.AppStateDetailsListener, QtEmbeddedViewInterface, QtWindowInterface, QtMenuInterface {
    private static final String QtTAG = "QtEmbeddedDelegate";
    private boolean m_backendsRegistered;
    private QtNative.ApplicationStateDetails m_stateDetails;
    private final HashSet<QtView> m_views;

    QtEmbeddedDelegate(Activity activity) {
        super(activity);
        this.m_views = new HashSet<>();
        this.m_backendsRegistered = false;
        this.m_stateDetails = QtNative.getStateDetails();
        QtNative.registerAppStateListener(this);
        this.m_activity.getApplication().registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity2, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity2) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity2) {
                if (QtEmbeddedDelegate.this.m_activity == activity2 && QtEmbeddedDelegate.this.m_stateDetails.isStarted) {
                    QtNative.setApplicationState(4);
                    QtWindow.updateWindows();
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity2) {
                if (QtEmbeddedDelegate.this.m_activity == activity2 && QtEmbeddedDelegate.this.m_stateDetails.isStarted && !activity2.isInMultiWindowMode()) {
                    QtNative.setApplicationState(2);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity2) {
                if (QtEmbeddedDelegate.this.m_activity == activity2 && QtEmbeddedDelegate.this.m_stateDetails.isStarted) {
                    QtNative.setApplicationState(0);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity2) {
                if (QtEmbeddedDelegate.this.m_activity == activity2 && QtEmbeddedDelegate.this.m_stateDetails.isStarted && !activity2.isChangingConfigurations()) {
                    QtEmbeddedDelegate.this.m_activity.getApplication().unregisterActivityLifecycleCallbacks(this);
                    QtNative.unregisterAppStateListener(QtEmbeddedDelegate.this);
                    QtEmbeddedViewInterfaceFactory.remove(QtEmbeddedDelegate.this.m_activity);
                    QtNative.terminateQtNativeApplication();
                    QtNative.setActivity(null);
                }
            }
        });
    }

    @Override // org.qtproject.qt.android.QtNative.AppStateDetailsListener
    public void onAppStateDetailsChanged(QtNative.ApplicationStateDetails applicationStateDetails) {
        synchronized (this) {
            this.m_stateDetails = applicationStateDetails;
            if (applicationStateDetails.isStarted && !this.m_backendsRegistered) {
                if (BackendRegister.isNull()) {
                    return;
                }
                this.m_backendsRegistered = true;
                BackendRegister.registerBackend(QtWindowInterface.class, this);
                BackendRegister.registerBackend(QtMenuInterface.class, this);
                BackendRegister.registerBackend(QtInputInterface.class, this.m_inputDelegate);
            } else if (!applicationStateDetails.isStarted && this.m_backendsRegistered) {
                this.m_backendsRegistered = false;
                if (BackendRegister.isNull()) {
                    return;
                }
                BackendRegister.unregisterBackend(QtWindowInterface.class);
                BackendRegister.unregisterBackend(QtMenuInterface.class);
                BackendRegister.unregisterBackend(QtInputInterface.class);
            }
        }
    }

    @Override // org.qtproject.qt.android.QtNative.AppStateDetailsListener
    public void onNativePluginIntegrationReadyChanged(boolean z) {
        if (z) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1924lambda$onNativePluginIntegrationReadyChanged$0$orgqtprojectqtandroidQtEmbeddedDelegate();
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtEmbeddedDelegate, reason: not valid java name */
    /* synthetic */ void m1924lambda$onNativePluginIntegrationReadyChanged$0$orgqtprojectqtandroidQtEmbeddedDelegate() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        QtDisplayManager.handleLayoutSizeChanged(displayMetrics.widthPixels, displayMetrics.heightPixels);
        this.m_displayManager.initDisplayProperties();
    }

    @Override // org.qtproject.qt.android.QtActivityDelegateBase
    void startNativeApplicationImpl(String str, String str2) {
        QtNative.startApplication(str, str2);
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void startQtApplication(String str, String str2) {
        super.startNativeApplication(str, str2);
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void addView(final QtView qtView) {
        if (this.m_views.add(qtView)) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1923lambda$addView$0$orgqtprojectqtandroidQtEmbeddedDelegate(qtView);
                }
            });
        }
    }

    @Override // org.qtproject.qt.android.QtEmbeddedViewInterface
    public void removeView(QtView qtView) {
        this.m_views.remove(qtView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: createRootWindow, reason: merged with bridge method [inline-methods] */
    public void m1923lambda$addView$0$orgqtprojectqtandroidQtEmbeddedDelegate(QtView qtView) {
        if (this.m_views.contains(qtView)) {
            QtView.createRootWindow(qtView, qtView.getLeft(), qtView.getTop(), qtView.getWidth(), qtView.getHeight());
        }
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void resetOptionsMenu() {
        final Activity activity = this.m_activity;
        Objects.requireNonNull(activity);
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda0
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
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda4
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
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                activity.closeContextMenu();
            }
        });
    }

    @Override // org.qtproject.qt.android.QtMenuInterface
    public void openContextMenu(int i, int i2, int i3, int i4) {
        final QtEditText currentQtEditText = this.m_inputDelegate.getCurrentQtEditText();
        if (currentQtEditText == null) {
            Log.w(QtTAG, "No focused view when trying to open context menu");
        } else {
            currentQtEditText.postDelayed(new Runnable() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1925lambda$openContextMenu$0$orgqtprojectqtandroidQtEmbeddedDelegate(currentQtEditText);
                }
            }, 100L);
        }
    }

    /* JADX INFO: renamed from: lambda$openContextMenu$0$org-qtproject-qt-android-QtEmbeddedDelegate, reason: not valid java name */
    /* synthetic */ void m1925lambda$openContextMenu$0$orgqtprojectqtandroidQtEmbeddedDelegate(QtEditText qtEditText) {
        PopupMenu popupMenu = new PopupMenu(this.m_activity, qtEditText);
        QtNative.fillContextMenu(popupMenu.getMenu());
        final Activity activity = this.m_activity;
        Objects.requireNonNull(activity);
        popupMenu.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda1
            @Override // android.widget.PopupMenu.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                return activity.onContextItemSelected(menuItem);
            }
        });
        popupMenu.setOnDismissListener(new PopupMenu.OnDismissListener() { // from class: org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda2
            @Override // android.widget.PopupMenu.OnDismissListener
            public final void onDismiss(PopupMenu popupMenu2) {
                this.f$0.m1926lambda$openContextMenu$1$orgqtprojectqtandroidQtEmbeddedDelegate(popupMenu2);
            }
        });
        popupMenu.show();
    }

    /* JADX INFO: renamed from: lambda$openContextMenu$1$org-qtproject-qt-android-QtEmbeddedDelegate, reason: not valid java name */
    /* synthetic */ void m1926lambda$openContextMenu$1$orgqtprojectqtandroidQtEmbeddedDelegate(PopupMenu popupMenu) {
        this.m_activity.onContextMenuClosed(popupMenu.getMenu());
    }
}
