package org.qtproject.qt.android.extras;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
class QtAndroidServiceConnection implements ServiceConnection {
    private long m_id;

    QtAndroidServiceConnection(long j) {
        this.m_id = j;
    }

    void setId(long j) {
        synchronized (this) {
            this.m_id = j;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            QtNative.onServiceConnected(this.m_id, componentName.flattenToString(), iBinder);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            QtNative.onServiceDisconnected(this.m_id, componentName.flattenToString());
        }
    }
}
