###### Class com.google.android.gms.internal.common.zzal (com.google.android.gms.internal.common.zzal)
.class final Lcom/google/android/gms/internal/common/zzal;
.super Lcom/google/android/gms/internal/common/zzam;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/common/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzam;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/common/zzam;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/common/zzal;->zza:I

    iput p3, p0, Lcom/google/android/gms/internal/common/zzal;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzb:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/common/zzs;->zzb(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    iget v1, p0, Lcom/google/android/gms/internal/common/zzal;->zza:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzam;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzb:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/common/zzam;->zzi(II)Lcom/google/android/gms/internal/common/zzam;

    move-result-object p1

    return-object p1
.end method

.method final zzb()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzah;->zzb()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzc()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzah;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzal;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzd()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/common/zzah;->zzc()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/common/zzal;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/common/zzal;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzf()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzi(II)Lcom/google/android/gms/internal/common/zzam;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/common/zzal;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/common/zzs;->zzd(III)V

    iget v0, p0, Lcom/google/android/gms/internal/common/zzal;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzal;->zzc:Lcom/google/android/gms/internal/common/zzam;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/common/zzam;->zzi(II)Lcom/google/android/gms/internal/common/zzam;

    move-result-object p1

    return-object p1
.end method
