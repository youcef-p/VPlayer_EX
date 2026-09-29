package org.qtproject.qt.android;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class QtAbstractItemModel {
    private OnDataChangedListener m_OnDataChangedListener;
    private long m_nativeReference;

    public interface OnDataChangedListener {
        void onDataChanged(QtModelIndex qtModelIndex, QtModelIndex qtModelIndex2, int[] iArr);
    }

    private native void jni_beginInsertColumns(QtModelIndex qtModelIndex, int i, int i2);

    private native void jni_beginInsertRows(QtModelIndex qtModelIndex, int i, int i2);

    private native boolean jni_beginMoveColumns(QtModelIndex qtModelIndex, int i, int i2, QtModelIndex qtModelIndex2, int i3);

    private native boolean jni_beginMoveRows(QtModelIndex qtModelIndex, int i, int i2, QtModelIndex qtModelIndex2, int i3);

    private native void jni_beginRemoveColumns(QtModelIndex qtModelIndex, int i, int i2);

    private native void jni_beginRemoveRows(QtModelIndex qtModelIndex, int i, int i2);

    private native void jni_beginResetModel();

    private native Object jni_createIndex(int i, int i2, long j);

    private native void jni_dataChanged(QtModelIndex qtModelIndex, QtModelIndex qtModelIndex2, int[] iArr);

    private native void jni_endInsertColumns();

    private native void jni_endInsertRows();

    private native void jni_endMoveColumns();

    private native void jni_endMoveRows();

    private native void jni_endRemoveColumns();

    private native void jni_endRemoveRows();

    private native void jni_endResetModel();

    private native Object jni_roleNames();

    private native boolean jni_setData(QtModelIndex qtModelIndex, Object obj, int i);

    private native Object jni_sibling(int i, int i2, QtModelIndex qtModelIndex);

    public native boolean canFetchMore(QtModelIndex qtModelIndex);

    public abstract int columnCount(QtModelIndex qtModelIndex);

    public abstract Object data(QtModelIndex qtModelIndex, int i);

    public native void fetchMore(QtModelIndex qtModelIndex);

    public native boolean hasChildren(QtModelIndex qtModelIndex);

    public native boolean hasIndex(int i, int i2, QtModelIndex qtModelIndex);

    public abstract QtModelIndex index(int i, int i2, QtModelIndex qtModelIndex);

    public abstract QtModelIndex parent(QtModelIndex qtModelIndex);

    public abstract int rowCount(QtModelIndex qtModelIndex);

    public QtAbstractItemModel() {
        this.m_nativeReference = 0L;
    }

    public HashMap<Integer, String> roleNames() {
        return (HashMap) jni_roleNames();
    }

    public QtModelIndex sibling(int i, int i2, QtModelIndex qtModelIndex) {
        return (QtModelIndex) jni_sibling(i, i2, qtModelIndex);
    }

    public boolean setData(QtModelIndex qtModelIndex, Object obj, int i) {
        return jni_setData(qtModelIndex, obj, i);
    }

    public void dataChanged(QtModelIndex qtModelIndex, QtModelIndex qtModelIndex2, int[] iArr) {
        jni_dataChanged(qtModelIndex, qtModelIndex2, iArr);
    }

    public void setOnDataChangedListener(OnDataChangedListener onDataChangedListener) {
        this.m_OnDataChangedListener = onDataChangedListener;
    }

    protected final void beginInsertColumns(QtModelIndex qtModelIndex, int i, int i2) {
        jni_beginInsertColumns(qtModelIndex, i, i2);
    }

    protected final void beginInsertRows(QtModelIndex qtModelIndex, int i, int i2) {
        jni_beginInsertRows(qtModelIndex, i, i2);
    }

    protected final boolean beginMoveColumns(QtModelIndex qtModelIndex, int i, int i2, QtModelIndex qtModelIndex2, int i3) {
        return jni_beginMoveColumns(qtModelIndex, i, i2, qtModelIndex2, i3);
    }

    protected final boolean beginMoveRows(QtModelIndex qtModelIndex, int i, int i2, QtModelIndex qtModelIndex2, int i3) {
        return jni_beginMoveRows(qtModelIndex, i, i2, qtModelIndex2, i3);
    }

    protected final void beginRemoveColumns(QtModelIndex qtModelIndex, int i, int i2) {
        jni_beginRemoveColumns(qtModelIndex, i, i2);
    }

    protected final void beginRemoveRows(QtModelIndex qtModelIndex, int i, int i2) {
        jni_beginRemoveRows(qtModelIndex, i, i2);
    }

    protected final void beginResetModel() {
        jni_beginResetModel();
    }

    protected final QtModelIndex createIndex(int i, int i2, long j) {
        return (QtModelIndex) jni_createIndex(i, i2, j);
    }

    protected final void endInsertColumns() {
        jni_endInsertColumns();
    }

    protected final void endInsertRows() {
        jni_endInsertRows();
    }

    protected final void endMoveColumns() {
        jni_endMoveColumns();
    }

    protected final void endMoveRows() {
        jni_endMoveRows();
    }

    protected final void endRemoveColumns() {
        jni_endRemoveColumns();
    }

    protected final void endRemoveRows() {
        jni_endRemoveRows();
    }

    protected final void endResetModel() {
        jni_endResetModel();
    }

    private void handleDataChanged(final QtModelIndex qtModelIndex, final QtModelIndex qtModelIndex2, final int[] iArr) {
        if (this.m_OnDataChangedListener != null) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtAbstractItemModel$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1895lambda$handleDataChanged$0$orgqtprojectqtandroidQtAbstractItemModel(qtModelIndex, qtModelIndex2, iArr);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$handleDataChanged$0$org-qtproject-qt-android-QtAbstractItemModel, reason: not valid java name */
    /* synthetic */ void m1895lambda$handleDataChanged$0$orgqtprojectqtandroidQtAbstractItemModel(QtModelIndex qtModelIndex, QtModelIndex qtModelIndex2, int[] iArr) {
        OnDataChangedListener onDataChangedListener = this.m_OnDataChangedListener;
        if (onDataChangedListener != null) {
            onDataChangedListener.onDataChanged(qtModelIndex, qtModelIndex2, iArr);
        }
    }

    private QtAbstractItemModel(long j) {
        this.m_nativeReference = j;
    }

    private void detachFromNative() {
        this.m_nativeReference = 0L;
    }

    private long nativeReference() {
        return this.m_nativeReference;
    }

    private void setNativeReference(long j) {
        this.m_nativeReference = j;
    }

    private static boolean instanceOf(Object obj) {
        return obj instanceof QtAbstractItemModel;
    }
}
