###### Class com.google.android.gms.common.api.internal.zav (com.google.android.gms.common.api.internal.zav)
.class final Lcom/google/android/gms/common/api/internal/zav;
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

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zaq(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zat(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1e

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zat(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zao()V
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_19

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_19
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

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
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_9
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaw()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zau()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zau()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_2c

    :cond_20
    const/4 p2, 0x1

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/internal/zax;->zax(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zas()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V

    goto :goto_33

    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zax;->zax(Z)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zax;->zap(IZ)V
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_3b

    :goto_33
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 7
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3b
    move-exception p1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zav;->zaa:Lcom/google/android/gms/common/api/internal/zax;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zax;->zay()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method
