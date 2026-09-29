###### Class com.google.android.gms.common.api.internal.zabb (com.google.android.gms.common.api.internal.zabb)
.class abstract Lcom/google/android/gms/common/api/internal/zabb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zaba;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/internal/zaba;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Lcom/google/android/gms/common/api/internal/zaba;

    return-void
.end method


# virtual methods
.method protected abstract zaa()V
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zabd;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabd;->zat()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabd;->zau()Lcom/google/android/gms/common/api/internal/zaba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zaa:Lcom/google/android/gms/common/api/internal/zaba;

    if-ne v0, v1, :cond_12

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabb;->zaa()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1a

    .line 5
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabd;->zat()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1a
    move-exception v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabd;->zat()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw v0
.end method
