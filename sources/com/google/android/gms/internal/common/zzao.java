package com.google.android.gms.internal.common;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzao extends zzam {
    static final zzam zza = new zzao(new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    zzao(Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzs.zzb(i, this.zzc, "index");
        return Objects.requireNonNull(this.zzb[i]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.common.zzah
    final Object[] zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.common.zzah
    final int zzc() {
        return 0;
    }

    @Override // com.google.android.gms.internal.common.zzah
    final int zzd() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.common.zzah
    final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.common.zzam, com.google.android.gms.internal.common.zzah
    final int zzg(Object[] objArr, int i) {
        Object[] objArr2 = this.zzb;
        int i2 = this.zzc;
        System.arraycopy(objArr2, 0, objArr, 0, i2);
        return i2;
    }
}
