package org.qtproject.qt.android.extras;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
class QtNative {
    static native void onServiceConnected(long j, String str, IBinder iBinder);

    static native void onServiceDisconnected(long j, String str);

    static native boolean onTransact(long j, int i, Parcel parcel, Parcel parcel2, int i2);

    QtNative() {
    }
}
