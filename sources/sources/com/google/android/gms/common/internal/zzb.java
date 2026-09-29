package com.google.android.gms.common.internal;

import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzb extends com.google.android.gms.internal.common.zzh {
    final /* synthetic */ BaseGmsClient zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zza = baseGmsClient;
    }

    private static final void zza(Message message) {
        zzc zzcVar = (zzc) message.obj;
        if (zzcVar != null) {
            zzcVar.zze();
        }
    }

    private static final boolean zzb(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 7;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient baseGmsClient = this.zza;
        if (baseGmsClient.zzd.get() != message.arg1) {
            if (zzb(message)) {
                zza(message);
                return;
            }
            return;
        }
        boolean zZzs = true;
        if ((message.what == 1 || message.what == 7 || ((message.what == 4 && !baseGmsClient.enableLocalFallback()) || message.what == 5)) && !baseGmsClient.isConnecting()) {
            zza(message);
            return;
        }
        if (message.what == 4) {
            baseGmsClient.zzr(new ConnectionResult(message.arg2));
            if (!baseGmsClient.zzk()) {
                zZzs = baseGmsClient.zzs();
            } else if (baseGmsClient.zzt() != baseGmsClient.zzd.get()) {
                zZzs = false;
            }
            if (!baseGmsClient.zzj() || zZzs) {
                ConnectionResult connectionResultZzq = baseGmsClient.zzq() != null ? baseGmsClient.zzq() : new ConnectionResult(8);
                baseGmsClient.zzc.onReportServiceBinding(connectionResultZzq);
                baseGmsClient.onConnectionFailed(connectionResultZzq);
                return;
            } else if (baseGmsClient.zzk()) {
                baseGmsClient.zze(3, null, message.arg1);
                return;
            } else {
                baseGmsClient.zzd(3, null);
                return;
            }
        }
        if (message.what == 5) {
            ConnectionResult connectionResultZzq2 = baseGmsClient.zzq() != null ? baseGmsClient.zzq() : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResultZzq2);
            baseGmsClient.onConnectionFailed(connectionResultZzq2);
            return;
        }
        if (message.what == 3) {
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, message.obj instanceof PendingIntent ? (PendingIntent) message.obj : null);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult);
            baseGmsClient.onConnectionFailed(connectionResult);
            return;
        }
        if (message.what == 6) {
            if (baseGmsClient.zzk()) {
                baseGmsClient.zze(5, null, message.arg1);
            } else {
                baseGmsClient.zzd(5, null);
            }
            if (baseGmsClient.zzo() != null) {
                baseGmsClient.zzo().onConnectionSuspended(message.arg2);
            }
            baseGmsClient.onConnectionSuspended(message.arg2);
            if (baseGmsClient.zzk()) {
                baseGmsClient.zzg(5, 1, null, message.arg1);
                return;
            } else {
                baseGmsClient.zzf(5, 1, null);
                return;
            }
        }
        if (message.what == 2 && !baseGmsClient.isConnected()) {
            zza(message);
            return;
        }
        if (zzb(message)) {
            ((zzc) message.obj).zzd();
            return;
        }
        int i = message.what;
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 34);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClient", sb.toString(), new Exception());
    }
}
