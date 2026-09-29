package com.google.android.gms.internal.base;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
final class zaab extends zaaa {
    static final zaaa zaa = new zaab(new Object[0], 0);
    final transient Object[] zab;

    zaab(Object[] objArr, int i) {
        this.zab = objArr;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zau.zaa(i, 0, "index");
        return Objects.requireNonNull(this.zab[i]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return 0;
    }

    @Override // com.google.android.gms.internal.base.zax
    final Object[] zab() {
        return this.zab;
    }

    @Override // com.google.android.gms.internal.base.zax
    final int zac() {
        return 0;
    }

    @Override // com.google.android.gms.internal.base.zax
    final int zad() {
        return 0;
    }

    @Override // com.google.android.gms.internal.base.zaaa, com.google.android.gms.internal.base.zax
    final int zae(Object[] objArr, int i) {
        System.arraycopy(this.zab, 0, objArr, 0, 0);
        return 0;
    }
}
