###### Class com.google.android.gms.internal.common.zzak (com.google.android.gms.internal.common.zzak)
.class final Lcom/google/android/gms/internal/common/zzak;
.super Lcom/google/android/gms/internal/common/zzam;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final transient zza:Lcom/google/android/gms/internal/common/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzam;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzam;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzam;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v1

    const-string v2, "index"

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/common/zzs;->zzb(IILjava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/common/zzam;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzam;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ltz p1, :cond_10

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_10
    return v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzam;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ltz p1, :cond_10

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0

    :cond_10
    return v1
.end method

.method public final size()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzam;->zzi(II)Lcom/google/android/gms/internal/common/zzam;

    move-result-object p1

    return-object p1
.end method

.method final zzf()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->zzf()Z

    move-result v0

    return v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/common/zzam;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    return-object v0
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/common/zzam;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzak;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v1

    .line 2
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/common/zzs;->zzd(III)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result p2

    sub-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/common/zzam;->zzi(II)Lcom/google/android/gms/internal/common/zzam;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzam;->zzh()Lcom/google/android/gms/internal/common/zzam;

    move-result-object p1

    return-object p1
.end method
