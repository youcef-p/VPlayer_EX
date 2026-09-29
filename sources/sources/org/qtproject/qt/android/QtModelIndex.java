package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
public class QtModelIndex {
    private QtModelIndex m_parent;
    private final long[] m_privateData;

    public native Object data(int i);

    public native long internalId();

    public native boolean isValid();

    public native QtModelIndex parent();

    public QtModelIndex() {
        this.m_privateData = new long[]{-1, -1, 0, 0};
        this.m_parent = null;
    }

    public int column() {
        return (int) this.m_privateData[1];
    }

    public int row() {
        return (int) this.m_privateData[0];
    }

    private QtModelIndex(int i, int i2, long j, long j2) {
        long[] jArr = {-1, -1, 0, 0};
        this.m_privateData = jArr;
        jArr[0] = i;
        jArr[1] = i2;
        jArr[2] = j;
        jArr[3] = j2;
        this.m_parent = null;
    }

    private QtModelIndex(int i, int i2, QtModelIndex qtModelIndex, long j) {
        long[] jArr = {-1, -1, 0, 0};
        this.m_privateData = jArr;
        jArr[0] = i;
        jArr[1] = i2;
        jArr[2] = 0;
        jArr[3] = j;
        this.m_parent = qtModelIndex;
    }

    private void detachFromNative() {
        long[] jArr = this.m_privateData;
        jArr[0] = -1;
        jArr[1] = -1;
        jArr[2] = 0;
        jArr[3] = 0;
    }
}
