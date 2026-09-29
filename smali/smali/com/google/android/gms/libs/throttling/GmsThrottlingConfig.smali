###### Class com.google.android.gms.libs.throttling.GmsThrottlingConfig (com.google.android.gms.libs.throttling.GmsThrottlingConfig)
.class public final Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/libs/throttling/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method constructor <init>(Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2
    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.libs.throttling.GmsThrottlingConfig.Builder (com.google.android.gms.libs.throttling.GmsThrottlingConfig$Builder)
.class public final Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig$Builder;->zza:Lcom/google/android/gms/libs/throttling/GmsThrottlingConfig;

    return-void
.end method
