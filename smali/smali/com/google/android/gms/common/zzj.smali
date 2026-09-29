###### Class com.google.android.gms.common.zzj (com.google.android.gms.common.zzj)
.class abstract Lcom/google/android/gms/common/zzj;
.super Lcom/google/android/gms/common/internal/zzy;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final zza:I


# direct methods
.method protected constructor <init>([B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzy;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x19

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/internal/zzz;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    check-cast p1, Lcom/google/android/gms/common/internal/zzz;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzz;->zze()I

    move-result v0

    iget v2, p0, Lcom/google/android/gms/common/zzj;->zza:I

    if-eq v0, v2, :cond_11

    return v1

    .line 3
    :cond_11
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzz;->zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzc()[B

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_23} :catch_24

    return p1

    :catch_24
    move-exception p1

    const-string v0, "GoogleCertificates"

    const-string v2, "Failed to get Google certificates from remote"

    .line 6
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method

.method abstract zzc()[B
.end method

.method public final zzd()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/zzj;->zzc()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/zzj;->zza:I

    return v0
.end method
