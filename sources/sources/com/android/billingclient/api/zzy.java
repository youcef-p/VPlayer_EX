package com.android.billingclient.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzjz;
import java.util.Objects;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzy extends BroadcastReceiver {
    final /* synthetic */ zzz zza;
    private boolean zzb;
    private final boolean zzc;

    zzy(zzz zzzVar, boolean z) {
        Objects.requireNonNull(zzzVar);
        this.zza = zzzVar;
        this.zzc = z;
    }

    private final void zzd(Bundle bundle, BillingResult billingResult, int i, zzjz zzjzVar, long j, boolean z) {
        try {
            if (bundle.getByteArray("FAILURE_LOGGING_PAYLOAD") != null) {
                this.zza.zze.zzd(zzjl.zzc(bundle.getByteArray("FAILURE_LOGGING_PAYLOAD")), j, z);
            } else {
                this.zza.zze.zzd(zzdc.zzb(zzjs.BILLING_RESULT_RECEIVED_FROM_PHONESKY, i, billingResult, null, zzjzVar), j, z);
            }
        } catch (Throwable unused) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Failed parsing Api failure.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onReceive(android.content.Context r11, android.content.Intent r12) {
        /*
            Method dump skipped, instruction units count: 555
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.zzy.onReceive(android.content.Context, android.content.Intent):void");
    }

    public final synchronized void zza(Context context, IntentFilter intentFilter) {
        if (this.zzb) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            context.registerReceiver(this, intentFilter, true != this.zzc ? 4 : 2);
        } else {
            context.registerReceiver(this, intentFilter);
        }
        this.zzb = true;
    }

    public final synchronized void zzb(Context context, IntentFilter intentFilter, String str) {
        zzy zzyVar;
        try {
            try {
                if (this.zzb) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    zzyVar = this;
                    context.registerReceiver(zzyVar, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null, true != this.zzc ? 4 : 2);
                } else {
                    zzyVar = this;
                    context.registerReceiver(this, intentFilter, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST", null);
                }
                zzyVar.zzb = true;
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        throw th;
    }

    public final synchronized void zzc(Context context) {
        if (!this.zzb) {
            com.google.android.gms.internal.play_billing.zzc.zzn("BillingBroadcastManager", "Receiver is not registered.");
        } else {
            context.unregisterReceiver(this);
            this.zzb = false;
        }
    }
}
