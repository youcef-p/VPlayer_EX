package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zza extends zzc {
    public final int zza;
    public final Bundle zzb;
    final int zzc;
    final /* synthetic */ BaseGmsClient zzd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zza(BaseGmsClient baseGmsClient, int i, Bundle bundle, int i2) {
        super(baseGmsClient, true);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zzd = baseGmsClient;
        this.zza = i;
        this.zzb = bundle;
        this.zzc = i2;
    }

    protected abstract boolean zza();

    protected abstract void zzb(ConnectionResult connectionResult);

    @Override // com.google.android.gms.common.internal.zzc
    protected final /* bridge */ /* synthetic */ void zzc(Object obj) {
        BaseGmsClient baseGmsClient = this.zzd;
        int i = this.zza;
        boolean zZzk = baseGmsClient.zzk();
        if (i != 0) {
            if (zZzk) {
                baseGmsClient.zze(1, null, this.zzc);
            } else {
                baseGmsClient.zzd(1, null);
            }
            Bundle bundle = this.zzb;
            zzb(new ConnectionResult(i, bundle != null ? (PendingIntent) bundle.getParcelable(BaseGmsClient.KEY_PENDING_INTENT) : null));
            return;
        }
        if (zza()) {
            return;
        }
        if (zZzk) {
            baseGmsClient.zze(1, null, this.zzc);
        } else {
            baseGmsClient.zzd(1, null);
        }
        zzb(new ConnectionResult(8, null));
    }
}
