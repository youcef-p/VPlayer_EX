package com.google.android.gms.common.internal;

import com.google.android.gms.libs.throttling.GmsThrottler;
import com.google.android.gms.libs.throttling.ThrottlingLimits;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public class ClientThrottlingManagerImpl implements ClientThrottlingManager {
    private final GmsThrottler zza;

    public ClientThrottlingManagerImpl() {
        this.zza = com.google.android.gms.libs.throttling.zza.zza();
    }

    public ClientThrottlingManagerImpl(GmsThrottler gmsThrottler) {
        this.zza = gmsThrottler;
    }

    @Override // com.google.android.gms.common.internal.ClientThrottlingManager
    public void release(int i) {
        this.zza.release(i);
    }

    @Override // com.google.android.gms.common.internal.ClientThrottlingManager
    public int tryAcquire(int i, ConnectionThrottlingConfig connectionThrottlingConfig) {
        ThrottlingLimits throttlingLimitsZza = connectionThrottlingConfig.zza(i);
        if (throttlingLimitsZza == null || this.zza.tryAcquire(i, throttlingLimitsZza)) {
            return Integer.MIN_VALUE;
        }
        return throttlingLimitsZza.getMaxInflight();
    }
}
