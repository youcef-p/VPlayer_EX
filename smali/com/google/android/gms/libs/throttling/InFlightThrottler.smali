###### Class com.google.android.gms.libs.throttling.InFlightThrottler (com.google.android.gms.libs.throttling.InFlightThrottler)
.class public final Lcom/google/android/gms/libs/throttling/InFlightThrottler;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Lcom/google/android/gms/libs/throttling/GmsThrottler;


# instance fields
.field private zza:J

.field private final zzb:Landroid/util/LongSparseArray;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    new-instance v0, Landroid/util/LongSparseArray;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zzb:Landroid/util/LongSparseArray;

    return-void
.end method


# virtual methods
.method public release(J)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zzb:Landroid/util/LongSparseArray;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_d

    .line 2
    monitor-exit v0

    return-void

    :cond_d
    const/4 v2, 0x0

    .line 3
    aget-wide v3, v1, v2

    const-wide/16 v5, -0x1

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-gtz v2, :cond_1f

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_29

    .line 6
    :cond_1f
    iget-wide p1, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    const-wide/16 v2, 0x1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    const/4 v2, 0x1

    .line 5
    aput-wide p1, v1, v2

    .line 6
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public tryAcquire(JLcom/google/android/gms/libs/throttling/ThrottlingLimits;)Z
    .registers 16

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->getMaxInflight()I

    move-result p3

    const/4 v0, 0x0

    if-gtz p3, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zzb:Landroid/util/LongSparseArray;

    monitor-enter v1

    .line 2
    :try_start_b
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_2b

    .line 9
    aget-wide p1, v2, v0

    iget-wide v6, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    .line 10
    aput-wide v6, v2, v5

    int-to-long v6, p3

    cmp-long p3, p1, v6

    if-ltz p3, :cond_26

    .line 11
    monitor-exit v1

    return v0

    :cond_26
    add-long/2addr p1, v3

    .line 12
    aput-wide p1, v2, v0

    .line 13
    monitor-exit v1

    return v5

    .line 3
    :cond_2b
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result p3

    const/16 v2, 0x7d0

    if-lt p3, v2, :cond_56

    .line 4
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result p3

    const-wide v6, 0x7fffffffffffffffL

    move v2, v0

    move v8, v2

    :goto_3e
    if-ge v2, p3, :cond_53

    .line 5
    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    aget-wide v9, v9, v5

    cmp-long v11, v9, v6

    if-gez v11, :cond_4d

    move-wide v6, v9

    :cond_4d
    if-gez v11, :cond_50

    move v8, v2

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 6
    :cond_53
    invoke-virtual {v1, v8}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_56
    iget-wide v6, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    add-long/2addr v6, v3

    iput-wide v6, p0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;->zza:J

    const/4 p3, 0x2

    new-array p3, p3, [J

    aput-wide v3, p3, v0

    aput-wide v6, p3, v5

    .line 7
    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8
    monitor-exit v1

    return v5

    :catchall_67
    move-exception p1

    .line 14
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_b .. :try_end_69} :catchall_67

    throw p1
.end method
