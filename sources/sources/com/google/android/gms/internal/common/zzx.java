package com.google.android.gms.internal.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzx {
    private final zzq zza;
    private final boolean zzb;
    private final zzv zzc;

    private zzx(zzv zzvVar, boolean z, zzq zzqVar, int i) {
        this.zzc = zzvVar;
        this.zzb = z;
        this.zza = zzqVar;
    }

    public static zzx zza(zzq zzqVar) {
        return new zzx(new zzv(zzqVar), false, zzp.zza, Integer.MAX_VALUE);
    }

    public final zzx zzb() {
        return new zzx(this.zzc, true, this.zza, Integer.MAX_VALUE);
    }

    public final Iterable zzc(CharSequence charSequence) {
        return new zzu(this, charSequence);
    }

    final /* synthetic */ Iterator zze(CharSequence charSequence) {
        return this.zzc.zza(this, charSequence);
    }

    final /* synthetic */ zzq zzf() {
        return this.zza;
    }

    final /* synthetic */ boolean zzg() {
        return this.zzb;
    }

    public final List zzd(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itZza = this.zzc.zza(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (itZza.hasNext()) {
            arrayList.add((String) itZza.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
