###### Class com.google.android.gms.libs.throttling.ThrottlingOverride (com.google.android.gms.libs.throttling.ThrottlingOverride)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingOverride;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/libs/throttling/ThrottlingOverride$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/libs/throttling/ThrottlingOverride;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

.field private zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/libs/throttling/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method constructor <init>(Lcom/google/android/gms/libs/throttling/ThrottlingSelector;Lcom/google/android/gms/libs/throttling/ThrottlingLimits;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    iput-object p2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

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
    instance-of v1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    iget-object p1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v0

    :cond_20
    return v2
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.libs.throttling.ThrottlingOverride.Builder (com.google.android.gms.libs.throttling.ThrottlingOverride$Builder)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingOverride$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/ThrottlingOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/ThrottlingOverride;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingOverride$Builder;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    return-void
.end method
