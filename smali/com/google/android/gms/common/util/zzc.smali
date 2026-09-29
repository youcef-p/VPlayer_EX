###### Class com.google.android.gms.common.util.zzc (com.google.android.gms.common.util.zzc)
.class public final Lcom/google/android/gms/common/util/zzc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/common/zzz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/common/util/zzb;->zza:Lcom/google/android/gms/common/util/zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/common/zzab;->zza(Lcom/google/android/gms/internal/common/zzz;)Lcom/google/android/gms/internal/common/zzz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/zzc;->zza:Lcom/google/android/gms/internal/common/zzz;

    return-void
.end method

.method public static zza(I)I
    .registers 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method
