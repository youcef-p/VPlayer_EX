package com.google.android.gms.internal.base;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
final class zaz extends zaaa {
    final transient int zaa;
    final transient int zab;
    final /* synthetic */ zaaa zac;

    zaz(zaaa zaaaVar, int i, int i2) {
        Objects.requireNonNull(zaaaVar);
        this.zac = zaaaVar;
        this.zaa = i;
        this.zab = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zau.zaa(i, this.zab, "index");
        return this.zac.get(i + this.zaa);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zab;
    }

    @Override // com.google.android.gms.internal.base.zaaa, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.base.zax
    final Object[] zab() {
        return this.zac.zab();
    }

    @Override // com.google.android.gms.internal.base.zax
    final int zac() {
        return this.zac.zac() + this.zaa;
    }

    @Override // com.google.android.gms.internal.base.zax
    final int zad() {
        return this.zac.zac() + this.zaa + this.zab;
    }

    @Override // com.google.android.gms.internal.base.zaaa
    /* JADX INFO: renamed from: zaf */
    public final zaaa subList(int i, int i2) {
        zau.zac(i, i2, this.zab);
        int i3 = this.zaa;
        return this.zac.subList(i + i3, i2 + i3);
    }
}
