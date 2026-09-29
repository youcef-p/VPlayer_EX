###### Class com.google.android.gms.common.internal.zze (com.google.android.gms.common.internal.zze)
.class public final Lcom/google/android/gms/common/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzb:I

.field private final zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;IZ)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zze;->zzc:Z

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    if-nez p2, :cond_18

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result p2

    const/16 v0, 0x10

    if-eqz p2, :cond_14

    iget p2, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zze;->zzc:Z

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(IIZ)V

    return-void

    .line 2
    :cond_14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh(I)V

    return-void

    :cond_18
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1f
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    if-eqz v1, :cond_31

    iget v1, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    iget-object v2, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 9
    monitor-exit v0

    return-void

    :cond_31
    const-string v1, "com.google.android.gms.common.internal.IGmsServiceBroker"

    .line 4
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_40

    instance-of v2, v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v2, :cond_40

    .line 5
    check-cast v1, Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    goto :goto_45

    .line 8
    :cond_40
    new-instance v1, Lcom/google/android/gms/common/internal/zzac;

    invoke-direct {v1, p2}, Lcom/google/android/gms/common/internal/zzac;-><init>(Landroid/os/IBinder;)V

    .line 6
    :goto_45
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    .line 7
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_1f .. :try_end_49} :catchall_51

    const/4 p2, 0x0

    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v1, p2, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(ILandroid/os/Bundle;I)V

    return-void

    :catchall_51
    move-exception p1

    .line 7
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm(Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V

    .line 2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zze;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v0, p0, Lcom/google/android/gms/common/internal/zze;->zzb:I

    iget-object p1, p1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x1

    .line 3
    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_1c
    move-exception p1

    .line 2
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method
