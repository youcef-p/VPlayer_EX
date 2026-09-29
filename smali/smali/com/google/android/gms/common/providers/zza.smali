###### Class com.google.android.gms.common.providers.zza (com.google.android.gms.common.providers.zza)
.class final Lcom/google/android/gms/common/providers/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Lcom/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/common/zzg;->zza()Lcom/google/android/gms/internal/common/zzd;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/common/zzd;->zza(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method
