package org.qtproject.qt.android;

/* JADX INFO: compiled from: QtAbstractItemModelProxy.java */
/* JADX INFO: loaded from: classes.dex */
class QtAndroidItemModelProxy extends QtAbstractItemModel {
    private native int jni_columnCount(QtModelIndex qtModelIndex);

    private native Object jni_data(QtModelIndex qtModelIndex, int i);

    private native Object jni_index(int i, int i2, QtModelIndex qtModelIndex);

    private native Object jni_parent(QtModelIndex qtModelIndex);

    private native int jni_rowCount(QtModelIndex qtModelIndex);

    QtAndroidItemModelProxy() {
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public int columnCount(QtModelIndex qtModelIndex) {
        return jni_columnCount(qtModelIndex);
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public Object data(QtModelIndex qtModelIndex, int i) {
        return jni_data(qtModelIndex, i);
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public QtModelIndex index(int i, int i2, QtModelIndex qtModelIndex) {
        return (QtModelIndex) jni_index(i, i2, qtModelIndex);
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public QtModelIndex parent(QtModelIndex qtModelIndex) {
        return (QtModelIndex) jni_parent(qtModelIndex);
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public int rowCount(QtModelIndex qtModelIndex) {
        return jni_rowCount(qtModelIndex);
    }
}
