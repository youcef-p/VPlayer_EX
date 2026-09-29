package com.google.android.gms.common;

import com.google.android.gms.internal.common.zzam;
import java.util.HashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public class GmsSignatureVerifier {
    private static final zzab zza;
    private static final zzab zzb;
    private static final HashMap zzc;

    static {
        zzaa zzaaVar = new zzaa();
        zzaaVar.zza("com.google.android.gms");
        zzaaVar.zzb(204200000L);
        zzaaVar.zzc(zzam.zzm(zzo.zzf.zzc(), zzo.zzd.zzc(), zzo.zzb.zzc()));
        zzaaVar.zzd(zzam.zzm(zzo.zze.zzc(), zzo.zzc.zzc(), zzo.zza.zzc()));
        zza = zzaaVar.zze();
        zzaa zzaaVar2 = new zzaa();
        zzaaVar2.zza("com.android.vending");
        zzaaVar2.zzb(82240000L);
        zzaaVar2.zzc(zzam.zzk(zzo.zzf.zzc()));
        zzaaVar2.zzd(zzam.zzl(zzo.zze.zzc(), zzo.zzc.zzc()));
        zzb = zzaaVar2.zze();
        zzc = new HashMap();
    }
}
