package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
class BackendRegister {
    static native boolean isNull();

    static native void registerBackend(Class<?> cls, Object obj);

    static native void unregisterBackend(Class<?> cls);

    BackendRegister() {
    }
}
