###### Class com.google.android.gms.common.internal.ClientThrottlingManagerImpl (com.google.android.gms.common.internal.ClientThrottlingManagerImpl)
.class public Lcom/google/android/gms/common/internal/ClientThrottlingManagerImpl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ClientThrottlingManager;


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/GmsThrottler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/libs/throttling/zza;->zza()Lcom/google/android/gms/libs/throttling/GmsThrottler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/ClientThrottlingManagerImpl;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottler;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/libs/throttling/GmsThrottler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ClientThrottlingManagerImpl;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottler;

    return-void
.end method


# virtual methods
.method public release(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientThrottlingManagerImpl;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottler;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/libs/throttling/GmsThrottler;->release(J)V

    return-void
.end method

.method public tryAcquire(ILcom/google/android/gms/common/internal/ConnectionThrottlingConfig;)I
    .registers 6

    .line 1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;->zza(I)Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_15

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/ClientThrottlingManagerImpl;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottler;

    int-to-long v1, p1

    .line 2
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/libs/throttling/GmsThrottler;->tryAcquire(JLcom/google/android/gms/libs/throttling/ThrottlingLimits;)Z

    move-result p1

    if-nez p1, :cond_15

    invoke-virtual {p2}, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->getMaxInflight()I

    move-result p1

    return p1

    :cond_15
    :goto_15
    const/high16 p1, -0x80000000

    return p1
.end method
