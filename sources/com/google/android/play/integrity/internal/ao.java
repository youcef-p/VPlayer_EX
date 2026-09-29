package com.google.android.play.integrity.internal;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ao extends ap {
    final transient int a;
    final transient int b;
    final /* synthetic */ ap c;

    ao(ap apVar, int i, int i2) {
        Objects.requireNonNull(apVar);
        this.c = apVar;
        this.a = i;
        this.b = i2;
    }

    @Override // com.google.android.play.integrity.internal.am
    final int b() {
        return this.c.c() + this.a + this.b;
    }

    @Override // com.google.android.play.integrity.internal.am
    final int c() {
        return this.c.c() + this.a;
    }

    @Override // com.google.android.play.integrity.internal.am
    final Object[] e() {
        return this.c.e();
    }

    @Override // com.google.android.play.integrity.internal.ap
    /* JADX INFO: renamed from: f */
    public final ap subList(int i, int i2) {
        aj.c(i, i2, this.b);
        int i3 = this.a;
        return this.c.subList(i + i3, i2 + i3);
    }

    @Override // java.util.List
    public final Object get(int i) {
        aj.a(i, this.b, "index");
        return this.c.get(i + this.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.b;
    }

    @Override // com.google.android.play.integrity.internal.ap, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }
}
