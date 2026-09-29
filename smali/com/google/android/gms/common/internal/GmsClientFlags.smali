###### Class com.google.android.gms.common.internal.GmsClientFlags (com.google.android.gms.common.internal.GmsClientFlags)
.class public final Lcom/google/android/gms/common/internal/GmsClientFlags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static volatile zza:Z = true

.field private static volatile zzb:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBindServiceOptimizationEnabled(Ljava/lang/String;)Z
    .registers 1

    sget-boolean p0, Lcom/google/android/gms/common/internal/GmsClientFlags;->zza:Z

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static zza()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
