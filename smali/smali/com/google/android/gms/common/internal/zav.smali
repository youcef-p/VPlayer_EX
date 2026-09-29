###### Class com.google.android.gms.common.internal.zav (com.google.android.gms.common.internal.zav)
.class public final Lcom/google/android/gms/common/internal/zav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:Landroid/util/SparseIntArray;

.field private zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/zav;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zav;->zaa:Landroid/util/SparseIntArray;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zav;->zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    return-void
.end method


# virtual methods
.method public final zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 4
    :cond_e
    invoke-interface {p2}, Lcom/google/android/gms/common/api/Api$Client;->getMinApkVersion()I

    move-result p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/zav;->zab(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    return v0

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zav;->zaa:Landroid/util/SparseIntArray;

    monitor-enter v0

    move v3, v1

    .line 6
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 7
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p2, :cond_31

    .line 8
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_31

    goto :goto_35

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_34
    move v1, v2

    :goto_35
    if-ne v1, v2, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zav;->zab:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 9
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v1

    .line 10
    :cond_3d
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 11
    monitor-exit v0

    return v1

    :catchall_42
    move-exception p1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_42

    throw p1
.end method

.method public final zab(Landroid/content/Context;I)I
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zav;->zaa:Landroid/util/SparseIntArray;

    monitor-enter p1

    const/4 v0, -0x1

    :try_start_4
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    monitor-exit p1

    return p2

    :catchall_a
    move-exception p2

    .line 2
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public final zac()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zav;->zaa:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
