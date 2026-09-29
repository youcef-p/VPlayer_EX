package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import android.os.UserHandle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzr implements ServiceConnection, zzu {
    final /* synthetic */ zzt zza;
    private final Map zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private IBinder zzf;
    private final zzo zzg;
    private ComponentName zzh;
    private zzp zzi;

    public zzr(zzt zztVar, zzo zzoVar) {
        java.util.Objects.requireNonNull(zztVar);
        this.zza = zztVar;
        this.zzc = 0;
        this.zzg = zzoVar;
        this.zzb = new HashMap();
        this.zzd = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final void zza(List list, int i, ComponentName componentName) {
        Object obj;
        Object value;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            synchronized (this.zza.zzh()) {
                if (this.zzc != i) {
                    return;
                }
                obj = this.zzb.get(entry.getKey());
                value = entry.getValue();
            }
            if (obj == value) {
                ((ServiceConnection) entry.getValue()).onServiceDisconnected(componentName);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        int i;
        ArrayList arrayList;
        Object obj;
        Object value;
        zzt zztVar = this.zza;
        if (!zztVar.zzm()) {
            zzt zztVar2 = this.zza;
            synchronized (zztVar2.zzh()) {
                zztVar2.zzj().removeMessages(1, this.zzg);
                this.zzf = iBinder;
                this.zzh = componentName;
                Iterator it = this.zzb.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.zzd = 1;
            }
            return;
        }
        synchronized (zztVar.zzh()) {
            zztVar.zzg(this);
            this.zzf = iBinder;
            this.zzh = componentName;
            this.zzd = 1;
            i = this.zzc + 1;
            this.zzc = i;
            Map map = this.zzb;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry((ServiceConnection) entry.getKey(), (ServiceConnection) entry.getValue()));
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Map.Entry entry2 = (Map.Entry) arrayList.get(i2);
            synchronized (this.zza.zzh()) {
                if (this.zzc != i) {
                    return;
                }
                obj = this.zzb.get(entry2.getKey());
                value = entry2.getValue();
            }
            if (obj == value) {
                ((ServiceConnection) entry2.getValue()).onServiceConnected(componentName, iBinder);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        int i;
        ArrayList arrayList;
        zzt zztVar = this.zza;
        if (!zztVar.zzm()) {
            zzt zztVar2 = this.zza;
            synchronized (zztVar2.zzh()) {
                zztVar2.zzj().removeMessages(1, this.zzg);
                this.zzf = null;
                this.zzh = componentName;
                Iterator it = this.zzb.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.zzd = 2;
            }
            return;
        }
        synchronized (zztVar.zzh()) {
            zztVar.zzg(this);
            this.zzf = null;
            this.zzh = componentName;
            this.zzd = 2;
            i = this.zzc + 1;
            this.zzc = i;
            Map map = this.zzb;
            arrayList = new ArrayList(map.size());
            for (Map.Entry entry : map.entrySet()) {
                arrayList.add(new AbstractMap.SimpleImmutableEntry((ServiceConnection) entry.getKey(), (ServiceConnection) entry.getValue()));
            }
        }
        zza(arrayList, i, componentName);
    }

    final /* synthetic */ ConnectionResult zzb(String str, Executor executor) throws Throwable {
        try {
            Intent intentZza = zzam.zza(this.zza.zzi(), this.zzg);
            this.zzd = 3;
            StrictMode.VmPolicy vmPolicyZza = com.google.android.gms.common.util.zze.zza();
            try {
                zzt zztVar = this.zza;
                ConnectionTracker connectionTrackerZzk = zztVar.zzk();
                Context contextZzi = zztVar.zzi();
                zzo zzoVar = this.zzg;
                try {
                    boolean zZza = connectionTrackerZzk.zza(contextZzi, str, intentZza, this, 4225, executor);
                    this.zze = zZza;
                    if (!zZza) {
                        this.zzd = 2;
                        try {
                            zztVar.zzk().unbindService(zztVar.zzi(), this);
                        } catch (IllegalArgumentException unused) {
                        }
                        ConnectionResult connectionResult = new ConnectionResult(16);
                        StrictMode.setVmPolicy(vmPolicyZza);
                        return connectionResult;
                    }
                    if (zztVar.zzm()) {
                        this.zzi = new zzp(zzoVar, this);
                        zztVar.zzj().sendMessageDelayed(zztVar.zzj().obtainMessage(1, this.zzi), zztVar.zzl());
                    } else {
                        zztVar.zzj().sendMessageDelayed(zztVar.zzj().obtainMessage(1, zzoVar), zztVar.zzl());
                    }
                    ConnectionResult connectionResult2 = ConnectionResult.RESULT_SUCCESS;
                    StrictMode.setVmPolicy(vmPolicyZza);
                    return connectionResult2;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    StrictMode.setVmPolicy(vmPolicyZza);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (zzak e) {
            return e.zza;
        }
    }

    final /* synthetic */ ConnectionResult zzc(String str, UserHandle userHandle) throws Throwable {
        try {
            Intent intentZza = zzam.zza(this.zza.zzi(), this.zzg);
            this.zzd = 3;
            StrictMode.VmPolicy vmPolicyZza = com.google.android.gms.common.util.zze.zza();
            try {
                zzt zztVar = this.zza;
                ConnectionTracker connectionTrackerZzk = zztVar.zzk();
                Context contextZzi = zztVar.zzi();
                zzo zzoVar = this.zzg;
                try {
                    boolean zZzb = connectionTrackerZzk.zzb(contextZzi, str, intentZza, this, 4225, userHandle);
                    this.zze = zZzb;
                    if (!zZzb) {
                        this.zzd = 2;
                        if (zztVar.zzm()) {
                            try {
                                zztVar.zzk().unbindService(zztVar.zzi(), this);
                            } catch (IllegalArgumentException unused) {
                            }
                        }
                        ConnectionResult connectionResult = new ConnectionResult(16);
                        StrictMode.setVmPolicy(vmPolicyZza);
                        return connectionResult;
                    }
                    if (zztVar.zzm()) {
                        this.zzi = new zzp(zzoVar, this);
                        zztVar.zzj().sendMessageDelayed(zztVar.zzj().obtainMessage(1, this.zzi), zztVar.zzl());
                    } else {
                        zztVar.zzj().sendMessageDelayed(zztVar.zzj().obtainMessage(1, zzoVar), zztVar.zzl());
                    }
                    ConnectionResult connectionResult2 = ConnectionResult.RESULT_SUCCESS;
                    StrictMode.setVmPolicy(vmPolicyZza);
                    return connectionResult2;
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    StrictMode.setVmPolicy(vmPolicyZza);
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (zzak e) {
            return e.zza;
        }
    }

    final /* synthetic */ void zzd(String str) {
        zzt zztVar = this.zza;
        if (zztVar.zzm()) {
            synchronized (zztVar.zzh()) {
                zztVar.zzg(this);
            }
        } else {
            zzt zztVar2 = this.zza;
            zztVar2.zzj().removeMessages(1, this.zzg);
        }
        try {
            zzt zztVar3 = this.zza;
            zztVar3.zzk().unbindService(zztVar3.zzi(), this);
        } finally {
            this.zze = false;
            this.zzd = 2;
        }
    }

    final /* synthetic */ void zze(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.zzb.put(serviceConnection, new zzq(serviceConnection2));
    }

    final /* synthetic */ void zzf(ServiceConnection serviceConnection, String str) {
        this.zzb.remove(serviceConnection);
    }

    final /* synthetic */ boolean zzg() {
        return this.zze;
    }

    final /* synthetic */ int zzh() {
        return this.zzd;
    }

    final /* synthetic */ boolean zzi(ServiceConnection serviceConnection) {
        return this.zzb.containsKey(serviceConnection);
    }

    final /* synthetic */ boolean zzj() {
        return this.zzb.isEmpty();
    }

    final /* synthetic */ IBinder zzk() {
        return this.zzf;
    }

    final /* synthetic */ ComponentName zzl() {
        return this.zzh;
    }

    final /* synthetic */ Map zzm() {
        return this.zzb;
    }

    final /* synthetic */ int zzn() {
        return this.zzc;
    }

    final /* synthetic */ void zzo(int i) {
        this.zzc = i;
    }

    final /* synthetic */ void zzp(int i) {
        this.zzd = 2;
    }

    final /* synthetic */ void zzq(IBinder iBinder) {
        this.zzf = null;
    }

    final /* synthetic */ void zzr(ComponentName componentName) {
        this.zzh = componentName;
    }

    final /* synthetic */ zzp zzs() {
        return this.zzi;
    }

    final /* synthetic */ void zzt(zzp zzpVar) {
        this.zzi = null;
    }
}
