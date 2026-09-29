package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzf extends zza {
    public final IBinder zzf;
    final /* synthetic */ BaseGmsClient zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i, IBinder iBinder, Bundle bundle, int i2) {
        super(baseGmsClient, i, bundle, i2);
        java.util.Objects.requireNonNull(baseGmsClient);
        this.zzg = baseGmsClient;
        this.zzf = iBinder;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006c, code lost:
    
        if (r3.zzg(3, 4, r0, r2) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0079, code lost:
    
        if (r3.zzf(3, 4, r0) == false) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.gms.common.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final boolean zza() {
        /*
            r7 = this;
            java.lang.String r0 = "GmsClient"
            r1 = 0
            android.os.IBinder r2 = r7.zzf     // Catch: android.os.RemoteException -> Lb5
            com.google.android.gms.common.internal.Preconditions.checkNotNull(r2)     // Catch: android.os.RemoteException -> Lb5
            r3 = r2
            android.os.IBinder r3 = (android.os.IBinder) r3     // Catch: android.os.RemoteException -> Lb5
            java.lang.String r2 = r2.getInterfaceDescriptor()     // Catch: android.os.RemoteException -> Lb5
            com.google.android.gms.common.internal.BaseGmsClient r3 = r7.zzg
            java.lang.String r4 = r3.getServiceDescriptor()
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L4f
            java.lang.String r3 = r3.getServiceDescriptor()
            java.lang.String r4 = java.lang.String.valueOf(r3)
            int r4 = r4.length()
            java.lang.String r5 = java.lang.String.valueOf(r2)
            int r4 = r4 + 34
            int r5 = r5.length()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            int r4 = r4 + r5
            r6.<init>(r4)
            java.lang.String r4 = "service descriptor mismatch: "
            r6.append(r4)
            r6.append(r3)
            java.lang.String r3 = " vs. "
            r6.append(r3)
            r6.append(r2)
            java.lang.String r2 = r6.toString()
            android.util.Log.w(r0, r2)
            return r1
        L4f:
            android.os.IBinder r0 = r7.zzf
            android.os.IInterface r0 = r3.createServiceInterface(r0)
            if (r0 == 0) goto Lb4
            boolean r2 = r3.zzk()
            r4 = 3
            r5 = 2
            r6 = 4
            if (r2 == 0) goto L6f
            int r2 = r7.zzc
            boolean r5 = r3.zzg(r5, r6, r0, r2)
            if (r5 != 0) goto L7b
            boolean r0 = r3.zzg(r4, r6, r0, r2)
            if (r0 == 0) goto Lb4
            goto L7b
        L6f:
            boolean r2 = r3.zzf(r5, r6, r0)
            if (r2 != 0) goto L7b
            boolean r0 = r3.zzf(r4, r6, r0)
            if (r0 == 0) goto Lb4
        L7b:
            r0 = 0
            r3.zzr(r0)
            android.os.Bundle r1 = r3.getConnectionHint()
            boolean r2 = r3.usesClientThrottling()
            if (r2 == 0) goto L8d
            com.google.android.gms.common.internal.ConnectionThrottlingConfig r0 = r3.getConnectionThrottlingConfig()
        L8d:
            java.lang.String r2 = "com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG"
            if (r0 == 0) goto La0
            if (r1 != 0) goto L98
            android.os.Bundle r1 = new android.os.Bundle
            r1.<init>()
        L98:
            byte[] r0 = com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer.serializeToBytes(r0)
            r1.putByteArray(r2, r0)
            goto La5
        La0:
            if (r1 == 0) goto La5
            r1.remove(r2)
        La5:
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = r3.zzo()
            if (r0 == 0) goto Lb2
            com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks r0 = r3.zzo()
            r0.onConnected(r1)
        Lb2:
            r0 = 1
            return r0
        Lb4:
            return r1
        Lb5:
            java.lang.String r2 = "service probably died"
            android.util.Log.w(r0, r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.zzf.zza():boolean");
    }

    @Override // com.google.android.gms.common.internal.zza
    protected final void zzb(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.zzg;
        if (baseGmsClient.zzp() != null) {
            baseGmsClient.zzp().onConnectionFailed(connectionResult);
        }
        baseGmsClient.onConnectionFailed(connectionResult);
    }
}
