package com.google.android.gms.internal.base;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
abstract class zaw extends zaad {
    private final int zaa;
    private int zab;

    zaw(int i, int i2) {
        zau.zab(i2, i, "index");
        this.zaa = i;
        this.zab = i2;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.zab < this.zaa;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.zab > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.zab;
        this.zab = i + 1;
        return zaa(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.zab;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.zab - 1;
        this.zab = i;
        return zaa(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.zab - 1;
    }

    abstract Object zaa(int i);
}
