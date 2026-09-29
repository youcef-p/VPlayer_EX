package com.google.android.gms.libs.throttling;

import android.util.LongSparseArray;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public final class InFlightThrottler implements GmsThrottler {
    private long zza = 0;
    private final LongSparseArray zzb = new LongSparseArray(2000);

    InFlightThrottler() {
    }

    @Override // com.google.android.gms.libs.throttling.GmsThrottler
    public void release(long j) {
        LongSparseArray longSparseArray = this.zzb;
        synchronized (longSparseArray) {
            long[] jArr = (long[]) longSparseArray.get(j);
            if (jArr == null) {
                return;
            }
            long j2 = jArr[0] - 1;
            jArr[0] = j2;
            if (j2 <= 0) {
                longSparseArray.delete(j);
            } else {
                long j3 = this.zza + 1;
                this.zza = j3;
                jArr[1] = j3;
            }
        }
    }

    @Override // com.google.android.gms.libs.throttling.GmsThrottler
    public boolean tryAcquire(long j, ThrottlingLimits throttlingLimits) {
        int maxInflight = throttlingLimits.getMaxInflight();
        if (maxInflight <= 0) {
            return false;
        }
        LongSparseArray longSparseArray = this.zzb;
        synchronized (longSparseArray) {
            long[] jArr = (long[]) longSparseArray.get(j);
            if (jArr != null) {
                long j2 = jArr[0];
                long j3 = this.zza + 1;
                this.zza = j3;
                jArr[1] = j3;
                if (j2 >= maxInflight) {
                    return false;
                }
                jArr[0] = j2 + 1;
                return true;
            }
            if (longSparseArray.size() >= 2000) {
                int size = longSparseArray.size();
                long j4 = Long.MAX_VALUE;
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    long j5 = ((long[]) longSparseArray.valueAt(i2))[1];
                    if (j5 < j4) {
                        j4 = j5;
                    }
                    if (j5 < j4) {
                        i = i2;
                    }
                }
                longSparseArray.removeAt(i);
            }
            long j6 = this.zza + 1;
            this.zza = j6;
            longSparseArray.put(j, new long[]{1, j6});
            return true;
        }
    }
}
