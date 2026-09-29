package com.google.android.gms.internal.play_billing;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzjy implements zzgs {
    static final zzgs zza = new zzjy();

    private zzjy() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzgs
    public final boolean zza(int i) {
        return (i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : zzjz.PLAY_BILLING_ACTIVITY_CREATED_ACTION : zzjz.IN_APP_BILLING_RESULT_UPDATE_ACTION : zzjz.ALTERNATIVE_BILLING_ACTION : zzjz.LOCAL_PURCHASES_UPDATED_ACTION : zzjz.PURCHASES_UPDATED_ACTION : zzjz.BROADCAST_ACTION_UNSPECIFIED) != null;
    }
}
