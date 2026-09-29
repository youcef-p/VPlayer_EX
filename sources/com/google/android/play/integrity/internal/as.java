package com.google.android.play.integrity.internal;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class as extends aq {
    static final as a;
    private static final Object[] d;
    final transient Object[] b;
    final transient Object[] c;

    static {
        Object[] objArr = new Object[0];
        d = objArr;
        a = new as(objArr, 0, objArr, 0, 0);
    }

    as(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.b = objArr;
        this.c = objArr2;
    }

    @Override // com.google.android.play.integrity.internal.am
    final int a(Object[] objArr, int i) {
        System.arraycopy(this.b, 0, objArr, 0, 0);
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.am
    final int b() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.am
    final int c() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        int length = this.c.length;
        return false;
    }

    @Override // com.google.android.play.integrity.internal.aq, com.google.android.play.integrity.internal.am
    /* JADX INFO: renamed from: d */
    public final at iterator() {
        return f().listIterator(0);
    }

    @Override // com.google.android.play.integrity.internal.am
    final Object[] e() {
        return this.b;
    }

    @Override // com.google.android.play.integrity.internal.aq
    final ap g() {
        int i = ap.d;
        return ar.a;
    }

    @Override // com.google.android.play.integrity.internal.aq, java.util.Collection, java.util.Set
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.android.play.integrity.internal.aq
    final boolean i() {
        return true;
    }

    @Override // com.google.android.play.integrity.internal.aq, com.google.android.play.integrity.internal.am, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return f().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 0;
    }
}
