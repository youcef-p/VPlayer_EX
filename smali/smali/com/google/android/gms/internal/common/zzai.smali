###### Class com.google.android.gms.internal.common.zzai (com.google.android.gms.internal.common.zzai)
.class public final Lcom/google/android/gms/internal/common/zzai;
.super Lcom/google/android/gms/internal/common/zzaf;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzaf;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/common/zzaf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzai;
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/common/zzaf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzaf;

    return-object p0
.end method

.method public final zzc(Ljava/util/Iterator;)Lcom/google/android/gms/internal/common/zzai;
    .registers 3

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-super {p0, v0}, Lcom/google/android/gms/internal/common/zzaf;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzaf;

    goto :goto_0

    :cond_e
    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/common/zzam;
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/common/zzai;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzai;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzai;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/common/zzam;->zzq([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzam;

    move-result-object v0

    return-object v0
.end method
