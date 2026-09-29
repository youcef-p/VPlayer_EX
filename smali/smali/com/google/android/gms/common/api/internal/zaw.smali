###### Class com.google.android.gms.common.api.internal.zaw (com.google.android.gms.common.api.internal.zaw)
.class final Lcom/google/android/gms/common/api/internal/zaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabt;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zax;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zax;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zax;->zav(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zao()V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_1b

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zav(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_19
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method public final zac(IZ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaw()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zax;->zax(Z)V

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zax;->zap(IZ)V

    goto :goto_22

    :cond_17
    const/4 p2, 0x1

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/zax;->zax(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zar()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2a

    .line 5
    :goto_22
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2a
    move-exception p1

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaw;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method
