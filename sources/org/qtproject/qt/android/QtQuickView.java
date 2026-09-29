package org.qtproject.qt.android;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.security.InvalidParameterException;
import org.qtproject.qt.android.QtNative;

/* JADX INFO: loaded from: classes.dex */
public class QtQuickView extends QtView {
    private static final String TAG = "QtQuickView";
    private boolean m_hasQueuedStatus;
    private QtQmlStatus m_lastStatus;
    private WeakReference<QtQuickViewContent> m_loadedComponent;
    private String[] m_qmlImportPaths;
    private String m_qmlUri;
    private QtSignalQueue m_signalQueue;
    private QtQmlStatusChangeListener m_statusChangeListener;

    native boolean addRootObjectSignalListener(long j, String str, Class<?>[] clsArr, Object obj, int i);

    native void createQuickView(String str, int i, int i2, long j, long j2, String[] strArr);

    native Object getRootObjectProperty(long j, String str);

    native void invokeMethod(long j, String str, Object[] objArr);

    native boolean removeRootObjectSignalListener(long j, int i);

    native void setRootObjectProperty(long j, String str, Object obj);

    @Override // org.qtproject.qt.android.QtView, org.qtproject.qt.android.QtNative.AppStateDetailsListener
    public /* bridge */ /* synthetic */ void onAppStateDetailsChanged(QtNative.ApplicationStateDetails applicationStateDetails) {
        super.onAppStateDetailsChanged(applicationStateDetails);
    }

    @Override // org.qtproject.qt.android.QtView, android.view.ViewGroup, android.view.View
    public /* bridge */ /* synthetic */ void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    public QtQuickView(Context context, String str, String str2) throws InvalidParameterException {
        this(context, str, str2, null);
    }

    public QtQuickView(Context context, String str, String str2, String[] strArr) throws InvalidParameterException {
        super(context, str2);
        this.m_qmlImportPaths = null;
        this.m_statusChangeListener = null;
        this.m_lastStatus = QtQmlStatus.NULL;
        this.m_hasQueuedStatus = false;
        this.m_signalQueue = new QtSignalQueue();
        if (str == null || str.isEmpty()) {
            throw new InvalidParameterException("QtQuickView: argument 'qmlUri' may not be empty or null");
        }
        this.m_qmlUri = str;
        this.m_qmlImportPaths = strArr;
    }

    public QtQuickView(Context context) {
        super(context);
        this.m_qmlImportPaths = null;
        this.m_statusChangeListener = null;
        this.m_lastStatus = QtQmlStatus.NULL;
        this.m_hasQueuedStatus = false;
        this.m_signalQueue = new QtSignalQueue();
    }

    public <T extends QtQuickViewContent> void loadContent(T t, String[] strArr) throws InvalidParameterException {
        String libraryName = t.getLibraryName();
        String filePath = t.getFilePath();
        if (libraryName == null || libraryName.isEmpty()) {
            throw new InvalidParameterException("QtQuickViewContent: return value of getLibraryName() may not be empty or null");
        }
        if (filePath == null || filePath.isEmpty()) {
            throw new InvalidParameterException("QtQuickViewContent: return value of getFilePath() may not be empty or null");
        }
        this.m_qmlUri = filePath;
        this.m_qmlImportPaths = strArr;
        WeakReference<QtQuickViewContent> weakReference = this.m_loadedComponent;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.m_loadedComponent = new WeakReference<>(t);
        t.detachView();
        t.attachView(this);
        if (getWindowReference() == 0) {
            loadQtLibraries(libraryName);
        } else {
            createQuickView(this.m_qmlUri, getWidth(), getHeight(), 0L, getWindowReference(), this.m_qmlImportPaths);
        }
    }

    @Override // org.qtproject.qt.android.QtView
    void setWindowReference(long j) {
        super.setWindowReference(j);
        this.m_signalQueue.connectQueuedSignalListeners(this);
    }

    private boolean hasUnderlyingView() {
        return getWindowReference() != 0;
    }

    public <T extends QtQuickViewContent> void loadContent(T t) throws InvalidParameterException {
        loadContent(t, null);
    }

    @Override // org.qtproject.qt.android.QtView
    protected void createWindow(long j) {
        createQuickView(this.m_qmlUri, getWidth(), getHeight(), j, getWindowReference(), this.m_qmlImportPaths);
    }

    public void setProperty(String str, Object obj) {
        setRootObjectProperty(getWindowReference(), str, obj);
    }

    public <T> T getProperty(String str) {
        return (T) getRootObjectProperty(getWindowReference(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> int connectSignalListener(String str, Class<T> cls, QtSignalListener<T> qtSignalListener) {
        return connectSignalListener(str, (Class<?>[]) new Class[]{cls}, qtSignalListener);
    }

    public int connectSignalListener(String str, Class<?>[] clsArr, Object obj) {
        int iGenerateSignalId = QtQuickViewContent.generateSignalId();
        connectSignalListener(str, clsArr, obj, iGenerateSignalId);
        return iGenerateSignalId;
    }

    void connectSignalListener(String str, Class<?>[] clsArr, Object obj, int i) {
        if (hasUnderlyingView()) {
            addRootObjectSignalListener(getWindowReference(), str, clsArr, obj, i);
        } else {
            this.m_signalQueue.add(str, clsArr, obj, i);
        }
    }

    public boolean disconnectSignalListener(int i) {
        if (hasUnderlyingView()) {
            return removeRootObjectSignalListener(getWindowReference(), i);
        }
        return this.m_signalQueue.remove(i);
    }

    public QtQmlStatus getStatus() {
        return this.m_lastStatus;
    }

    public void setStatusChangeListener(QtQmlStatusChangeListener qtQmlStatusChangeListener) {
        this.m_statusChangeListener = qtQmlStatusChangeListener;
        if (this.m_hasQueuedStatus) {
            sendStatusChanged(this.m_lastStatus);
            this.m_hasQueuedStatus = false;
        }
    }

    public void invokeMethod(String str, Object[] objArr) {
        invokeMethod(getWindowReference(), str, objArr);
    }

    public void invokeMethod(String str) {
        invokeMethod(getWindowReference(), str, new Object[0]);
    }

    private void handleStatusChange(int i) {
        try {
            this.m_lastStatus = QtQmlStatus.fromInt(i);
        } catch (IllegalArgumentException e) {
            this.m_lastStatus = QtQmlStatus.NULL;
            e.printStackTrace();
        }
        if (this.m_statusChangeListener == null) {
            this.m_hasQueuedStatus = true;
        } else {
            sendStatusChanged(this.m_lastStatus);
        }
    }

    private void sendStatusChanged(QtQmlStatus qtQmlStatus) {
        if (this.m_statusChangeListener != null) {
            WeakReference<QtQuickViewContent> weakReference = this.m_loadedComponent;
            QtQuickViewContent qtQuickViewContent = weakReference != null ? weakReference.get() : null;
            if (qtQuickViewContent == null) {
                this.m_statusChangeListener.onStatusChanged(qtQmlStatus);
            } else {
                this.m_statusChangeListener.onStatusChanged(qtQmlStatus, qtQuickViewContent);
            }
        }
    }
}
