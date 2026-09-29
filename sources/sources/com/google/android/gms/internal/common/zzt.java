package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzt extends zzw {
    final /* synthetic */ zzq zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzt(zzx zzxVar, CharSequence charSequence, zzq zzqVar) {
        super(zzxVar, charSequence);
        this.zza = zzqVar;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int zzc(int i) {
        CharSequence charSequence = this.zzb;
        int length = charSequence.length();
        zzs.zzc(i, length, "index");
        while (i < length) {
            if (this.zza.zza(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.common.zzw
    final int zzd(int i) {
        return i + 1;
    }
}
