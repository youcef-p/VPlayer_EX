package com.google.android.play.integrity.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ar extends ap {
    static final ap a = new ar(new Object[0], 0);
    final transient Object[] b;

    ar(Object[] objArr, int i) {
        this.b = objArr;
    }

    @Override // com.google.android.play.integrity.internal.ap, com.google.android.play.integrity.internal.am
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

    @Override // com.google.android.play.integrity.internal.am
    final Object[] e() {
        return this.b;
    }

    @Override // java.util.List
    public final Object get(int i) {
        aj.a(i, 0, "index");
        return Objects.requireNonNull(this.b[i]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }
}
