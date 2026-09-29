###### Class com.google.android.gms.common.internal.zzag (com.google.android.gms.common.internal.zzag)
.class public final Lcom/google/android/gms/common/internal/zzag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zza:Lcom/google/android/gms/common/internal/InternalClientFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/internal/InternalClientFlags;->DEFAULT:Lcom/google/android/gms/common/internal/InternalClientFlags;

    sput-object v0, Lcom/google/android/gms/common/internal/zzag;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;

    return-void
.end method

.method public static declared-synchronized zza()Lcom/google/android/gms/common/internal/InternalClientFlags;
    .registers 2

    const-class v0, Lcom/google/android/gms/common/internal/zzag;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/zzag;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v1
.end method
