###### Class com.google.android.gms.common.internal.zzf (com.google.android.gms.common.internal.zzf)
.class public final Lcom/google/android/gms/common/internal/zzf;
.super Lcom/google/android/gms/common/internal/zza;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field public final zzf:Landroid/os/IBinder;

.field final synthetic zzg:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzf;->zzg:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/gms/common/internal/zza;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected final zza()Z
    .registers 8

    .line 1
    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_f} :catch_b5

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzf;->zzg:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x22

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "service descriptor mismatch: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzf:Landroid/os/IBinder;

    .line 5
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eqz v2, :cond_6f

    iget v2, p0, Lcom/google/android/gms/common/internal/zzf;->zzc:I

    .line 6
    invoke-virtual {v3, v5, v6, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(IILandroid/os/IInterface;I)Z

    move-result v5

    if-nez v5, :cond_7b

    .line 7
    invoke-virtual {v3, v4, v6, v0, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(IILandroid/os/IInterface;I)Z

    move-result v0

    if-eqz v0, :cond_b4

    goto :goto_7b

    .line 8
    :cond_6f
    invoke-virtual {v3, v5, v6, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 9
    invoke-virtual {v3, v4, v6, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_b4

    :cond_7b
    :goto_7b
    const/4 v0, 0x0

    .line 10
    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Landroid/os/Bundle;

    move-result-object v1

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->usesClientThrottling()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getConnectionThrottlingConfig()Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

    move-result-object v0

    :cond_8d
    const-string v2, "com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG"

    if-eqz v0, :cond_a0

    if-nez v1, :cond_98

    new-instance v1, Landroid/os/Bundle;

    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    :cond_98
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object v0

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_a5

    :cond_a0
    if-eqz v1, :cond_a5

    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 15
    :cond_a5
    :goto_a5
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_b2

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnected(Landroid/os/Bundle;)V

    :cond_b2
    const/4 v0, 0x1

    return v0

    :cond_b4
    return v1

    .line 9
    :catch_b5
    const-string v2, "service probably died"

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected final zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzf;->zzg:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    :cond_f
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
