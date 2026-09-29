package com.google.android.gms.libs.throttling;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public interface GmsThrottler {
    void release(long j);

    boolean tryAcquire(long j, ThrottlingLimits throttlingLimits);
}
