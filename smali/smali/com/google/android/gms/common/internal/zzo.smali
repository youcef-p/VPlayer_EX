###### Class com.google.android.gms.common.internal.zzo (com.google.android.gms.common.internal.zzo)
.class public final Lcom/google/android/gms/common/internal/zzo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Landroid/content/ComponentName;

.field private final zzd:I

.field private final zze:Z

.field private final zzf:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;ILandroid/os/UserHandle;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    const/16 p1, 0x1081

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    const/16 p1, 0x1081

    iput p1, p0, Lcom/google/android/gms/common/internal/zzo;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    iput-object p5, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget v1, p1, Lcom/google/android/gms/common/internal/zzo;->zzd:I

    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    iget-boolean v3, p1, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    if-ne v1, v3, :cond_3d

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    return v0

    :cond_3d
    return v2
.end method

.method public final hashCode()I
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    const/16 v3, 0x1081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public final zza()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzc:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzo;->zze:Z

    return v0
.end method

.method public final zze()Landroid/os/UserHandle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzo;->zzf:Landroid/os/UserHandle;

    return-object v0
.end method
