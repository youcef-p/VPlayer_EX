package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
public abstract class QtAbstractListModel extends QtAbstractItemModel {
    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public final int columnCount(QtModelIndex qtModelIndex) {
        return !qtModelIndex.isValid() ? 1 : 0;
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public QtModelIndex index(int i, int i2, QtModelIndex qtModelIndex) {
        return hasIndex(i, i2, qtModelIndex) ? createIndex(i, i2, 0L) : new QtModelIndex();
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public final QtModelIndex parent(QtModelIndex qtModelIndex) {
        return new QtModelIndex();
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public final boolean hasChildren(QtModelIndex qtModelIndex) {
        return !qtModelIndex.isValid() && rowCount(new QtModelIndex()) > 0;
    }

    @Override // org.qtproject.qt.android.QtAbstractItemModel
    public QtModelIndex sibling(int i, int i2, QtModelIndex qtModelIndex) {
        return index(i, i2, new QtModelIndex());
    }
}
