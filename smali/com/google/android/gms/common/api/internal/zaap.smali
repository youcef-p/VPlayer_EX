###### Class com.google.android.gms.common.api.internal.zaap (com.google.android.gms.common.api.internal.zaap)
.class final Lcom/google/android/gms/common/api/internal/zaap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zay()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zav()Lcom/google/android/gms/signin/zae;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/zae;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaao;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/api/internal/zaao;-><init>(Lcom/google/android/gms/common/api/internal/zaar;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/signin/zae;->zaa(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zas()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->zan(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zam()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zak()V

    goto :goto_19

    .line 3
    :cond_16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaar;->zao(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_23

    .line 5
    :goto_19
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaar;->zas()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_23
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaap;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zas()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
