###### Class com.google.android.gms.tasks.zzr (com.google.android.gms.tasks.zzr)
.class final Lcom/google/android/gms/tasks/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.4.1"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private zzb:Ljava/util/Queue;

.field private zzc:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/zzq;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzr;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    if-eqz v1, :cond_28

    iget-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    if-eqz v1, :cond_c

    goto :goto_28

    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    .line 1
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2a

    :goto_10
    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzr;->zzb:Ljava/util/Queue;

    .line 2
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/tasks/zzq;

    if-nez v1, :cond_20

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/tasks/zzr;->zzc:Z

    .line 5
    monitor-exit v0

    return-void

    .line 3
    :cond_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_25

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/tasks/zzq;->zza(Lcom/google/android/gms/tasks/Task;)V

    goto :goto_10

    :catchall_25
    move-exception p1

    .line 3
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    .line 6
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    .line 1
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw p1
.end method
