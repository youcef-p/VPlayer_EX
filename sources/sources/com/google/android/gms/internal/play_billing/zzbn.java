package com.google.android.gms.internal.play_billing;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzbn {
    private final zzbq zza;
    private boolean zzb;
    private long zzc;
    private long zzd;

    zzbn() {
        this.zza = zzbq.zzb();
    }

    public static zzbn zzb(zzbq zzbqVar) {
        zzbn zzbnVar = new zzbn(zzbqVar);
        zzbnVar.zze();
        return zzbnVar;
    }

    public static zzbn zzc(zzbq zzbqVar) {
        return new zzbn(zzbqVar);
    }

    private final long zzh() {
        return this.zzb ? (this.zza.zza() - this.zzd) + this.zzc : this.zzc;
    }

    public final String toString() {
        String str;
        long jZzh = zzh();
        TimeUnit timeUnit = TimeUnit.DAYS.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.DAYS : TimeUnit.HOURS.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.HOURS : TimeUnit.MINUTES.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MINUTES : TimeUnit.SECONDS.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.SECONDS : TimeUnit.MILLISECONDS.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MILLISECONDS : TimeUnit.MICROSECONDS.convert(jZzh, TimeUnit.NANOSECONDS) > 0 ? TimeUnit.MICROSECONDS : TimeUnit.NANOSECONDS;
        String str2 = String.format(Locale.ROOT, "%.4g", Double.valueOf(jZzh / TimeUnit.NANOSECONDS.convert(1L, timeUnit)));
        switch (zzbm.zza[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = "d";
                break;
            default:
                throw new AssertionError();
        }
        return str2 + " " + str;
    }

    public final long zza(TimeUnit timeUnit) {
        return timeUnit.convert(zzh(), TimeUnit.NANOSECONDS);
    }

    public final zzbn zzd() {
        this.zzc = 0L;
        this.zzb = false;
        return this;
    }

    public final zzbn zze() {
        zzbl.zze(!this.zzb, "This stopwatch is already running.");
        this.zzb = true;
        this.zzd = this.zza.zza();
        return this;
    }

    public final zzbn zzf() {
        long jZza = this.zza.zza();
        zzbl.zze(this.zzb, "This stopwatch is already stopped.");
        this.zzb = false;
        this.zzc += jZza - this.zzd;
        return this;
    }

    public final boolean zzg() {
        return this.zzb;
    }

    zzbn(zzbq zzbqVar) {
        zzbl.zzc(zzbqVar, "ticker");
        this.zza = zzbqVar;
    }
}
