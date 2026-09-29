###### Class com.google.android.gms.internal.common.zzx (com.google.android.gms.internal.common.zzx)
.class public final Lcom/google/android/gms/internal/common/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/common/zzq;

.field private final zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/common/zzv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/common/zzv;ZLcom/google/android/gms/internal/common/zzq;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzx;->zzc:Lcom/google/android/gms/internal/common/zzv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/common/zzx;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/common/zzx;->zza:Lcom/google/android/gms/internal/common/zzq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/common/zzq;)Lcom/google/android/gms/internal/common/zzx;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/common/zzx;

    new-instance v1, Lcom/google/android/gms/internal/common/zzv;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/common/zzv;-><init>(Lcom/google/android/gms/internal/common/zzq;)V

    sget-object p0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzq;

    const v2, 0x7fffffff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/google/android/gms/internal/common/zzx;-><init>(Lcom/google/android/gms/internal/common/zzv;ZLcom/google/android/gms/internal/common/zzq;I)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/common/zzx;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzx;->zza:Lcom/google/android/gms/internal/common/zzq;

    new-instance v1, Lcom/google/android/gms/internal/common/zzx;

    iget-object v2, p0, Lcom/google/android/gms/internal/common/zzx;->zzc:Lcom/google/android/gms/internal/common/zzv;

    const/4 v3, 0x1

    const v4, 0x7fffffff

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/common/zzx;-><init>(Lcom/google/android/gms/internal/common/zzv;ZLcom/google/android/gms/internal/common/zzq;I)V

    return-object v1
.end method

.method public final zzc(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/common/zzu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/common/zzu;-><init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public final zzd(Ljava/lang/CharSequence;)Ljava/util/List;
    .registers 4

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzx;->zzc:Lcom/google/android/gms/internal/common/zzv;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/common/zzv;->zza(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 4
    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzx;->zzc:Lcom/google/android/gms/internal/common/zzv;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/common/zzv;->zza(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/common/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzx;->zza:Lcom/google/android/gms/internal/common/zzq;

    return-object v0
.end method

.method final synthetic zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/common/zzx;->zzb:Z

    return v0
.end method
