package com.android.billingclient.api;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.zzjj;
import com.google.android.gms.internal.play_billing.zzjl;
import com.google.android.gms.internal.play_billing.zzjn;
import com.google.android.gms.internal.play_billing.zzjp;
import com.google.android.gms.internal.play_billing.zzjq;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzju;
import com.google.android.gms.internal.play_billing.zzjx;
import com.google.android.gms.internal.play_billing.zzle;
import com.google.android.gms.internal.play_billing.zzlg;
import com.google.android.gms.internal.play_billing.zzlk;
import com.google.android.gms.internal.play_billing.zzll;
import com.google.android.gms.internal.play_billing.zzln;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzbz implements ServiceConnection {
    final /* synthetic */ BillingClientImpl zza;
    private final BillingClientStateListener zzb;
    private final com.google.android.gms.internal.play_billing.zzbn zzc;
    private final com.google.android.gms.internal.play_billing.zzbn zzd;
    private final int zze;

    /* synthetic */ zzbz(BillingClientImpl billingClientImpl, BillingClientStateListener billingClientStateListener, int i, zzcm zzcmVar) {
        Objects.requireNonNull(billingClientImpl);
        this.zza = billingClientImpl;
        this.zzc = com.google.android.gms.internal.play_billing.zzbn.zzc(billingClientImpl.zzN);
        this.zzd = com.google.android.gms.internal.play_billing.zzbn.zzc(billingClientImpl.zzN);
        this.zzb = billingClientStateListener;
        this.zze = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:149:0x017b A[EDGE_INSN: B:149:0x017b->B:76:0x017b BREAK  A[LOOP:0: B:27:0x00a6->B:69:0x0150], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0135  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object zza(com.android.billingclient.api.zzbz r23) {
        /*
            Method dump skipped, instruction units count: 611
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.zzbz.zza(com.android.billingclient.api.zzbz):java.lang.Object");
    }

    public static /* synthetic */ void zzb(zzbz zzbzVar) {
        BillingClientImpl billingClientImpl = zzbzVar.zza;
        billingClientImpl.zzbs(0);
        zzjs zzjsVar = zzjs.EXECUTE_ASYNC_TIMEOUT;
        BillingResult billingResult = zzdh.zzk;
        billingClientImpl.zzbr(zzjsVar, billingResult, zzbzVar.zze);
        zzbzVar.zzk(billingResult);
    }

    private final Long zzh(boolean z) {
        try {
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception getting connection establishment duration.", th);
        }
        if (z) {
            synchronized (this.zza.zza) {
                com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzc;
                if (!zzbnVar.zzg()) {
                    return null;
                }
                zzbnVar.zzf();
                return Long.valueOf(zzbnVar.zza(TimeUnit.MILLISECONDS));
            }
        }
        synchronized (this.zza.zza) {
            com.google.android.gms.internal.play_billing.zzbn zzbnVar2 = this.zzd;
            if (!zzbnVar2.zzg()) {
                return null;
            }
            zzbnVar2.zzf();
            return Long.valueOf(zzbnVar2.zza(TimeUnit.MILLISECONDS));
        }
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception getting connection establishment duration.", th);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzi(BillingResult billingResult, zzjs zzjsVar, String str, boolean z, int i) {
        try {
            zzjq zzjqVarZza = zzju.zza();
            zzjqVarZza.zzp(billingResult.getResponseCode());
            zzjqVarZza.zzb(billingResult.getDebugMessage());
            zzjqVarZza.zze(zzjsVar);
            zzjqVarZza.zzc(i);
            if (str != null) {
                zzjqVarZza.zza(str);
            }
            Long lZzh = zzh(z);
            if (!z) {
                zzle zzleVarZza = zzlg.zza();
                zzleVarZza.zza(zzjqVarZza);
                if (lZzh != null) {
                    zzleVarZza.zzb(lZzh.longValue());
                }
                this.zza.zzh.zzm((zzlg) zzleVarZza.zzi());
                return;
            }
            zzll zzllVarZza = zzln.zza();
            int i2 = this.zze;
            zzllVarZza.zza(i2 > 0);
            zzllVarZza.zzb(i2);
            zzllVarZza.zzd(i);
            if (lZzh != null) {
                zzllVarZza.zzc(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            zzjj zzjjVarZza = zzjl.zza();
            zzjjVarZza.zzb(zzjqVarZza);
            zzjjVarZza.zzp(6);
            zzjjVarZza.zze(zzllVarZza);
            billingClientImpl.zzbo((zzjl) zzjjVarZza.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzj(boolean z, int i) {
        try {
            Long lZzh = zzh(z);
            if (!z) {
                zzle zzleVarZza = zzlg.zza();
                zzjq zzjqVarZza = zzju.zza();
                zzjqVarZza.zzp(0);
                zzjqVarZza.zzc(i);
                zzleVarZza.zza(zzjqVarZza);
                if (lZzh != null) {
                    zzleVarZza.zzb(lZzh.longValue());
                }
                this.zza.zzh.zzm((zzlg) zzleVarZza.zzi());
                return;
            }
            zzjn zzjnVarZza = zzjp.zza();
            zzjnVarZza.zze(6);
            zzll zzllVarZza = zzln.zza();
            int i2 = this.zze;
            zzllVarZza.zza(i2 > 0);
            zzllVarZza.zzb(i2);
            zzllVarZza.zzd(i);
            if (lZzh != null) {
                zzllVarZza.zzc(lZzh.longValue());
            }
            BillingClientImpl billingClientImpl = this.zza;
            zzjnVarZza.zzd(zzllVarZza);
            billingClientImpl.zzbq((zzjp) zzjnVarZza.zzi());
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzk(BillingResult billingResult) {
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            try {
                this.zzb.onBillingSetupFinished(billingResult);
            } catch (Throwable th) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingSetupFinished.", th);
            }
        }
    }

    private final void zzl(Exception exc, boolean z, int i) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while invoking initialize AIDL method", exc);
        zzjs zzjsVar = exc instanceof DeadObjectException ? zzjs.INITIALIZE_DEAD_OBJECT_EXCEPTION : exc instanceof RemoteException ? zzjs.INITIALIZE_REMOTE_EXCEPTION : exc instanceof SecurityException ? zzjs.INITIALIZE_SECURITY_EXCEPTION : zzjs.INITIALIZE_SERVICE_CALL_EXCEPTION;
        String strZza = zzdc.zza(exc);
        this.zza.zzbs(0);
        zzi(BillingClientImpl.zzn(exc), zzjsVar, strZza, z, i);
        zzk(BillingClientImpl.zzn(exc));
    }

    private final void zzm(Exception exc, boolean z) {
        com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while checking if billing is supported; try to reconnect", exc);
        zzjs zzjsVar = exc instanceof DeadObjectException ? zzjs.IS_BILLING_SUPPORTED_DEAD_OBJECT_EXCEPTION : exc instanceof RemoteException ? zzjs.IS_BILLING_SUPPORTED_REMOTE_EXCEPTION : exc instanceof SecurityException ? zzjs.IS_BILLING_SUPPORTED_SECURITY_EXCEPTION : zzjs.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION;
        String strZza = zzjsVar.equals(zzjs.IS_BILLING_SUPPORTED_SERVICE_CALL_EXCEPTION) ? zzdc.zza(exc) : null;
        this.zza.zzbs(0);
        zzi(BillingClientImpl.zzn(exc), zzjsVar, strZza, z, 0);
        zzk(BillingClientImpl.zzn(exc));
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service died.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzaz(billingClientImpl)) {
                zzdd zzddVar = billingClientImpl.zzh;
                zzjj zzjjVarZza = zzjl.zza();
                zzjjVarZza.zzp(6);
                zzjq zzjqVarZza = zzju.zza();
                zzjqVarZza.zze(zzjs.BINDING_DIED);
                zzjjVarZza.zzb(zzjqVarZza);
                zzll zzllVarZza = zzln.zza();
                int i = this.zze;
                zzllVarZza.zza(i > 0);
                zzllVarZza.zzb(i);
                zzjjVarZza.zze(zzllVarZza);
                zzddVar.zza((zzjl) zzjjVarZza.zzi());
            } else {
                billingClientImpl.zzh.zzi(zzjx.zzb());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                billingClientImpl2.zzbs(0);
                billingClientImpl2.zzbv();
                try {
                    this.zzb.onBillingServiceDisconnected();
                } catch (Throwable th2) {
                    com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
                }
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        com.google.android.gms.internal.play_billing.zzc.zzm("BillingClient", "Billing service connected.");
        BillingClientImpl billingClientImpl = this.zza;
        synchronized (billingClientImpl.zza) {
            if (billingClientImpl.zzb == 3) {
                return;
            }
            billingClientImpl.zzi = com.google.android.gms.internal.play_billing.zzaq.zzu(iBinder);
            if (BillingClientImpl.zzP(new Callable() { // from class: com.android.billingclient.api.zzbx
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzbz.zza(this.zza);
                    return null;
                }
            }, 30000L, new Runnable() { // from class: com.android.billingclient.api.zzby
                @Override // java.lang.Runnable
                public final void run() {
                    zzbz.zzb(this.zza);
                }
            }, billingClientImpl.zzaE(), billingClientImpl.zzO()) == null) {
                int i = this.zze;
                BillingResult billingResultZzaH = billingClientImpl.zzaH();
                billingClientImpl.zzbr(zzjs.MISSING_RESULT_FROM_EXECUTE_ASYNC, billingResultZzaH, i);
                zzk(billingResultZzaH);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.internal.play_billing.zzc.zzn("BillingClient", "Billing service disconnected.");
        try {
            BillingClientImpl billingClientImpl = this.zza;
            if (BillingClientImpl.zzaz(billingClientImpl)) {
                zzdd zzddVar = billingClientImpl.zzh;
                zzjj zzjjVarZza = zzjl.zza();
                zzjjVarZza.zzp(6);
                zzjq zzjqVarZza = zzju.zza();
                zzjqVarZza.zze(zzjs.SERVICE_DISCONNECTED);
                zzjjVarZza.zzb(zzjqVarZza);
                zzll zzllVarZza = zzln.zza();
                int i = this.zze;
                zzllVarZza.zza(i > 0);
                zzllVarZza.zzb(i);
                zzjjVarZza.zze(zzllVarZza);
                zzddVar.zza((zzjl) zzjjVarZza.zzi());
            } else {
                billingClientImpl.zzh.zzn(zzlk.zzb());
            }
        } catch (Throwable th) {
            com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Unable to log.", th);
        }
        BillingClientImpl billingClientImpl2 = this.zza;
        synchronized (billingClientImpl2.zza) {
            if (zzdq.zzi()) {
                if (billingClientImpl2.zzb != 3 && billingClientImpl2.zzb != 0) {
                    com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzd;
                    zzbnVar.zzd();
                    zzbnVar.zze();
                }
                return;
            }
            com.google.android.gms.internal.play_billing.zzbn zzbnVar2 = this.zzd;
            zzbnVar2.zzd();
            zzbnVar2.zze();
            if (billingClientImpl2.zzb == 3) {
                return;
            }
            billingClientImpl2.zzbs(0);
            try {
                this.zzb.onBillingServiceDisconnected();
            } catch (Throwable th2) {
                com.google.android.gms.internal.play_billing.zzc.zzo("BillingClient", "Exception while calling onBillingServiceDisconnected.", th2);
            }
        }
    }

    public final void zzf() {
        synchronized (this.zza.zza) {
            com.google.android.gms.internal.play_billing.zzbn zzbnVar = this.zzc;
            zzbnVar.zzd();
            zzbnVar.zze();
        }
    }

    final boolean zzg() {
        return this.zze > 0;
    }
}
