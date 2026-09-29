package org.qtproject.qt.android;

import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class QtQuickViewContent {
    private static final String TAG = "QtQuickViewContent";
    private static AtomicInteger m_nextSignalId = new AtomicInteger();
    private WeakReference<QtQuickView> m_viewReference;
    private QtQmlStatusChangeListener m_statusChangeListener = null;
    private HashSet<Integer> m_signalListenerIds = new HashSet<>();
    private QtSignalQueue m_signalQueue = new QtSignalQueue();

    public abstract String getFilePath();

    public abstract String getLibraryName();

    public abstract String getModuleName();

    public void setStatusChangeListener(QtQmlStatusChangeListener qtQmlStatusChangeListener) {
        this.m_statusChangeListener = qtQmlStatusChangeListener;
        QtQuickView quickView = getQuickView();
        if (quickView != null) {
            quickView.setStatusChangeListener(qtQmlStatusChangeListener);
        }
    }

    protected QtQuickView getQuickView() {
        WeakReference<QtQuickView> weakReference = this.m_viewReference;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    protected boolean isViewAttached() {
        return getQuickView() != null;
    }

    protected void attachView(QtQuickView qtQuickView) {
        this.m_viewReference = new WeakReference<>(qtQuickView);
        if (qtQuickView != null) {
            qtQuickView.setStatusChangeListener(this.m_statusChangeListener);
            this.m_signalQueue.connectQueuedSignalListeners(qtQuickView);
        }
    }

    protected void detachView() {
        QtQuickView quickView = getQuickView();
        if (quickView != null) {
            Iterator<Integer> it = this.m_signalListenerIds.iterator();
            while (it.hasNext()) {
                quickView.disconnectSignalListener(it.next().intValue());
            }
            quickView.setStatusChangeListener(null);
            this.m_viewReference.clear();
            QtQmlStatusChangeListener qtQmlStatusChangeListener = this.m_statusChangeListener;
            if (qtQmlStatusChangeListener != null) {
                qtQmlStatusChangeListener.onStatusChanged(QtQmlStatus.NULL);
            }
        }
    }

    protected HashMap<String, Object> attributes() {
        return new HashMap<>();
    }

    protected void setProperty(String str, Object obj) {
        QtQuickView quickView = getQuickView();
        if (quickView == null) {
            Log.w(TAG, "Cannot set property as the QQmlComponent is not loaded in a QtQuickView.");
        } else {
            quickView.setProperty(str, obj);
        }
    }

    protected <T> T getProperty(String str) {
        QtQuickView quickView = getQuickView();
        if (quickView == null) {
            Log.w(TAG, "Cannot get property as the QQmlComponent is not loaded in a QtQuickView.");
            return null;
        }
        return (T) quickView.getProperty(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <T> int connectSignalListener(String str, Class<T> cls, QtSignalListener<T> qtSignalListener) {
        return connectSignalListener(str, (Class<?>[]) new Class[]{cls}, qtSignalListener);
    }

    protected int connectSignalListener(String str, Class<?>[] clsArr, Object obj) {
        int iGenerateSignalId = generateSignalId();
        if (isViewAttached()) {
            getQuickView().connectSignalListener(str, clsArr, obj, iGenerateSignalId);
            this.m_signalListenerIds.add(Integer.valueOf(iGenerateSignalId));
            return iGenerateSignalId;
        }
        this.m_signalQueue.add(str, clsArr, obj, iGenerateSignalId);
        return iGenerateSignalId;
    }

    public boolean disconnectSignalListener(int i) {
        if (isViewAttached()) {
            QtQuickView quickView = getQuickView();
            this.m_signalListenerIds.remove(Integer.valueOf(i));
            return quickView.disconnectSignalListener(i);
        }
        return this.m_signalQueue.remove(i);
    }

    static int generateSignalId() {
        return m_nextSignalId.getAndIncrement();
    }

    public void invokeMethod(String str, Object[] objArr) {
        QtQuickView quickView = getQuickView();
        if (quickView != null) {
            quickView.invokeMethod(str, objArr);
        } else {
            Log.w(TAG, "Cannot call method " + str + " as the QQmlComponent is not loaded in a QtQuickView.");
        }
    }

    public void invokeMethod(String str) {
        QtQuickView quickView = getQuickView();
        if (quickView != null) {
            quickView.invokeMethod(str);
        } else {
            Log.w(TAG, "Cannot call method " + str + " as the QQmlComponent is not loaded in a QtQuickView.");
        }
    }
}
