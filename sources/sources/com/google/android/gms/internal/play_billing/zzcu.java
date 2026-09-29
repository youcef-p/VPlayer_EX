package com.google.android.gms.internal.play_billing;

import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.logging.Level;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzcu<V> extends zzcv<V> {

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
    final class zza {
        static final zza zza;
        static final zza zzb;
        final boolean zzc;
        final Throwable zzd;

        static {
            if (zzcv.zzc) {
                zzb = null;
                zza = null;
            } else {
                zzb = new zza(false, null);
                zza = new zza(true, null);
            }
        }

        zza(boolean z, Throwable th) {
            this.zzc = z;
            this.zzd = th;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
    final class zzb<V> implements Runnable {
        final zzcu<V> zza;
        final zzdk<? extends V> zzb;

        zzb(zzcu zzcuVar, zzdk zzdkVar) {
            this.zza = zzcuVar;
            this.zzb = zzdkVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.zza.valueField != this) {
                return;
            }
            if (zzcv.zzq(this.zza, this, zzcu.zzr(this.zzb))) {
                zzcu.zzu(this.zza, false);
            }
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
    final class zzc {
        static final zzc zza = new zzc(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.android.gms.internal.play_billing.zzcu.zzc.1
            {
                super("Failure occurred while trying to finish a future.");
            }

            @Override // java.lang.Throwable
            public final Throwable fillInStackTrace() {
                return this;
            }
        });
        final Throwable zzb;

        zzc(Throwable th) {
            th.getClass();
            this.zzb = th;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
    final class zzd {
        static final zzd zza = new zzd();
        zzd next;
        final Runnable zzb;
        final Executor zzc;

        zzd() {
            this.zzb = null;
            this.zzc = null;
        }

        zzd(Runnable runnable, Executor executor) {
            this.zzb = runnable;
            this.zzc = executor;
        }
    }

    /* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
    interface zze<V> extends zzdk<V> {
    }

    protected zzcu() {
    }

    static Object zzc(Object obj) throws ExecutionException {
        if (obj instanceof zza) {
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(((zza) obj).zzd);
            throw cancellationException;
        }
        if (obj instanceof zzc) {
            throw new ExecutionException(((zzc) obj).zzb);
        }
        if (obj == zza) {
            return null;
        }
        return obj;
    }

    static boolean zzh(Object obj) {
        return !(obj instanceof zzb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static Object zzr(zzdk zzdkVar) {
        Throwable thZze;
        if (zzdkVar instanceof zze) {
            Object zzaVar = ((zzcu) zzdkVar).valueField;
            if (zzaVar instanceof zza) {
                zza zzaVar2 = (zza) zzaVar;
                if (zzaVar2.zzc) {
                    Throwable th = zzaVar2.zzd;
                    zzaVar = th != null ? new zza(false, th) : zza.zzb;
                }
            }
            return Objects.requireNonNull(zzaVar);
        }
        if ((zzdkVar instanceof zzdq) && (thZze = ((zzdq) zzdkVar).zze()) != null) {
            return new zzc(thZze);
        }
        boolean zIsCancelled = zzdkVar.isCancelled();
        if ((!zzc) && zIsCancelled) {
            return Objects.requireNonNull(zza.zzb);
        }
        try {
            Object objZzs = zzs(zzdkVar);
            if (!zIsCancelled) {
                return objZzs == null ? zza : objZzs;
            }
            return new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + String.valueOf(zzdkVar)));
        } catch (Error | Exception e) {
            return new zzc(e);
        } catch (CancellationException e2) {
            return !zIsCancelled ? new zzc(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: ".concat(String.valueOf(String.valueOf(zzdkVar))), e2)) : new zza(false, e2);
        } catch (ExecutionException e3) {
            return zIsCancelled ? new zza(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: ".concat(String.valueOf(String.valueOf(zzdkVar))), e3)) : new zzc(e3.getCause());
        }
    }

    private static Object zzs(Future future) throws ExecutionException {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private final void zzt(StringBuilder sb) {
        try {
            Object objZzs = zzs(this);
            sb.append("SUCCESS, result=[");
            if (objZzs == null) {
                sb.append("null");
            } else if (objZzs == this) {
                sb.append("this future");
            } else {
                sb.append(objZzs.getClass().getName());
                sb.append("@");
                sb.append(Integer.toHexString(System.identityHashCode(objZzs)));
            }
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e) {
            sb.append("FAILURE, cause=[");
            sb.append(e.getCause());
            sb.append("]");
        } catch (Exception e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzu(zzcu zzcuVar, boolean z) {
        zzd zzdVar;
        zzd zzdVar2 = null;
        while (true) {
            zzcuVar.zzo();
            zzcuVar.zzg();
            zzd zzdVar3 = zzdVar2;
            zzd zzdVarZzk = zzcuVar.zzk(zzd.zza);
            zzd zzdVar4 = zzdVar3;
            while (zzdVarZzk != null) {
                zzd zzdVar5 = zzdVarZzk.next;
                zzdVarZzk.next = zzdVar4;
                zzdVar4 = zzdVarZzk;
                zzdVarZzk = zzdVar5;
            }
            while (zzdVar4 != null) {
                Runnable runnable = zzdVar4.zzb;
                zzdVar = zzdVar4.next;
                Runnable runnable2 = (Runnable) Objects.requireNonNull(runnable);
                if (runnable2 instanceof zzb) {
                    zzb zzbVar = (zzb) runnable2;
                    zzcuVar = zzbVar.zza;
                    if (zzcuVar.valueField != zzbVar || !zzq(zzcuVar, zzbVar, zzr(zzbVar.zzb))) {
                    }
                } else {
                    zzv(runnable2, (Executor) Objects.requireNonNull(zzdVar4.zzc));
                }
                zzdVar4 = zzdVar;
            }
            return;
            zzdVar2 = zzdVar;
        }
    }

    private static void zzv(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e) {
            zzb.zza().logp(Level.SEVERE, "com.google.common.util.concurrent.AbstractFuture", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.valueField
            boolean r1 = r0 instanceof com.google.android.gms.internal.play_billing.zzcu.zzb
            r2 = 0
            r3 = 1
            if (r0 != 0) goto La
            r4 = r3
            goto Lb
        La:
            r4 = r2
        Lb:
            r1 = r1 | r4
            if (r1 == 0) goto L60
            boolean r1 = com.google.android.gms.internal.play_billing.zzcu.zzc
            if (r1 == 0) goto L1f
            com.google.android.gms.internal.play_billing.zzcu$zza r1 = new com.google.android.gms.internal.play_billing.zzcu$zza
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r1.<init>(r8, r4)
            goto L2a
        L1f:
            if (r8 == 0) goto L24
            com.google.android.gms.internal.play_billing.zzcu$zza r1 = com.google.android.gms.internal.play_billing.zzcu.zza.zza
            goto L26
        L24:
            com.google.android.gms.internal.play_billing.zzcu$zza r1 = com.google.android.gms.internal.play_billing.zzcu.zza.zzb
        L26:
            java.lang.Object r1 = java.util.Objects.requireNonNull(r1)
        L2a:
            r4 = r7
            r5 = r2
        L2c:
            boolean r6 = zzq(r4, r0, r1)
            if (r6 == 0) goto L57
            zzu(r4, r8)
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.zzcu.zzb
            if (r4 == 0) goto L56
            com.google.android.gms.internal.play_billing.zzcu$zzb r0 = (com.google.android.gms.internal.play_billing.zzcu.zzb) r0
            com.google.android.gms.internal.play_billing.zzdk<? extends V> r0 = r0.zzb
            boolean r4 = r0 instanceof com.google.android.gms.internal.play_billing.zzcu.zze
            if (r4 == 0) goto L53
            r4 = r0
            com.google.android.gms.internal.play_billing.zzcu r4 = (com.google.android.gms.internal.play_billing.zzcu) r4
            java.lang.Object r0 = r4.valueField
            if (r0 != 0) goto L4a
            r5 = r3
            goto L4b
        L4a:
            r5 = r2
        L4b:
            boolean r6 = r0 instanceof com.google.android.gms.internal.play_billing.zzcu.zzb
            r5 = r5 | r6
            if (r5 == 0) goto L52
            r5 = r3
            goto L2c
        L52:
            return r3
        L53:
            r0.cancel(r8)
        L56:
            return r3
        L57:
            java.lang.Object r0 = r4.valueField
            boolean r6 = zzh(r0)
            if (r6 == 0) goto L2c
            return r5
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzcu.cancel(boolean):boolean");
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        return zzl();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.valueField instanceof zza;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.valueField;
        return (obj != null) & zzh(obj);
    }

    public final String toString() {
        String strConcat;
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.valueField instanceof zza) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            zzt(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.valueField;
            if (obj instanceof zzb) {
                sb.append(", setFuture=[");
                zzdk<? extends V> zzdkVar = ((zzb) obj).zzb;
                try {
                    if (zzdkVar == this) {
                        sb.append("this future");
                    } else {
                        sb.append(zzdkVar);
                    }
                } catch (Throwable th) {
                    zzdl.zza(th);
                    sb.append("Exception thrown from implementation: ");
                    sb.append(th.getClass());
                }
                sb.append("]");
            } else {
                try {
                    strConcat = zzbo.zza(zzd());
                } catch (Throwable th2) {
                    zzdl.zza(th2);
                    strConcat = "Exception thrown from implementation: ".concat(String.valueOf(String.valueOf(th2.getClass())));
                }
                if (strConcat != null) {
                    sb.append(", info=[");
                    sb.append(strConcat);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                zzt(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzdk
    public final void zzb(Runnable runnable, Executor executor) {
        zzd zzdVar;
        zzbl.zzc(executor, "Executor was null.");
        if (!isDone() && (zzdVar = this.listenersField) != zzd.zza) {
            zzd zzdVar2 = new zzd(runnable, executor);
            do {
                zzdVar2.next = zzdVar;
                if (zzp(zzdVar, zzdVar2)) {
                    return;
                } else {
                    zzdVar = this.listenersField;
                }
            } while (zzdVar != zzd.zza);
        }
        zzv(runnable, executor);
    }

    protected String zzd() {
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzdq
    protected final Throwable zze() {
        if (!(this instanceof zze)) {
            return null;
        }
        Object obj = this.valueField;
        if (obj instanceof zzc) {
            return ((zzc) obj).zzb;
        }
        return null;
    }

    protected void zzg() {
    }

    protected final boolean zzi(Throwable th) {
        if (!zzq(this, null, new zzc(th))) {
            return false;
        }
        zzu(this, false);
        return true;
    }

    protected final boolean zzj(zzdk zzdkVar) {
        zzc zzcVar;
        Object obj = this.valueField;
        if (obj == null) {
            if (zzdkVar.isDone()) {
                if (!zzq(this, null, zzr(zzdkVar))) {
                    return false;
                }
                zzu(this, false);
                return true;
            }
            zzb zzbVar = new zzb(this, zzdkVar);
            if (zzq(this, null, zzbVar)) {
                try {
                    zzdkVar.zzb(zzbVar, zzda.INSTANCE);
                } catch (Throwable th) {
                    try {
                        zzcVar = new zzc(th);
                    } catch (Error | Exception unused) {
                        zzcVar = zzc.zza;
                    }
                    zzq(this, zzbVar, zzcVar);
                }
                return true;
            }
            obj = this.valueField;
        }
        if (obj instanceof zza) {
            zzdkVar.cancel(((zza) obj).zzc);
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return zzm(j, timeUnit);
    }
}
