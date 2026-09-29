package com.google.android.gms.common.internal;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public interface ClientThrottlingManager {
    public static final int NO_THROTTLING = Integer.MIN_VALUE;

    void release(int i);

    int tryAcquire(int i, ConnectionThrottlingConfig connectionThrottlingConfig);
}
