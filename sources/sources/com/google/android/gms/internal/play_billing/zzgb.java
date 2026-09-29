package com.google.android.gms.internal.play_billing;

import androidx.core.internal.view.SupportMenu;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzgb {
    private final Object zza;
    private final int zzb;

    zzgb(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgb)) {
            return false;
        }
        zzgb zzgbVar = (zzgb) obj;
        return this.zza == zzgbVar.zza && this.zzb == zzgbVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * SupportMenu.USER_MASK) + this.zzb;
    }
}
