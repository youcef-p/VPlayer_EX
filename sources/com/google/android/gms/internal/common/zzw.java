package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzw extends zzl {
    final CharSequence zzb;
    final zzq zzc;
    final boolean zzd;
    int zze = 0;
    int zzf = Integer.MAX_VALUE;

    zzw(zzx zzxVar, CharSequence charSequence) {
        this.zzc = zzxVar.zzf();
        this.zzd = zzxVar.zzg();
        this.zzb = charSequence;
    }

    @Override // com.google.android.gms.internal.common.zzl
    protected final /* bridge */ /* synthetic */ Object zza() {
        int iZzc;
        int iZzd;
        int i = this.zze;
        while (true) {
            int i2 = this.zze;
            if (i2 == -1) {
                zzb();
                return null;
            }
            iZzc = zzc(i2);
            if (iZzc == -1) {
                iZzc = this.zzb.length();
                this.zze = -1;
                iZzd = -1;
            } else {
                iZzd = zzd(iZzc);
                this.zze = iZzd;
            }
            if (iZzd == i) {
                int i3 = iZzd + 1;
                this.zze = i3;
                if (i3 > this.zzb.length()) {
                    this.zze = -1;
                }
            } else {
                if (i < iZzc) {
                    this.zzb.charAt(i);
                }
                if (i < iZzc) {
                    this.zzb.charAt(iZzc - 1);
                }
                if (!this.zzd || i != iZzc) {
                    break;
                }
                i = this.zze;
            }
        }
        int i4 = this.zzf;
        if (i4 == 1) {
            CharSequence charSequence = this.zzb;
            int length = charSequence.length();
            this.zze = -1;
            if (length > i) {
                charSequence.charAt(length - 1);
            }
            iZzc = length;
        } else {
            this.zzf = i4 - 1;
        }
        return this.zzb.subSequence(i, iZzc).toString();
    }

    abstract int zzc(int i);

    abstract int zzd(int i);
}
