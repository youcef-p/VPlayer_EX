package org.qtproject.qt.android.extras;

import android.os.Binder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class QtAndroidBinder extends Binder {
    private long m_id;

    QtAndroidBinder(long j) {
        this.m_id = j;
    }

    void setId(long j) {
        synchronized (this) {
            this.m_id = j;
        }
    }

    @Override // android.os.Binder
    protected boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean zOnTransact;
        synchronized (this) {
            zOnTransact = QtNative.onTransact(this.m_id, i, parcel, parcel2, i2);
        }
        return zOnTransact;
    }
}
