###### Class com.google.android.gms.libs.throttling.ThrottlingLimits (com.google.android.gms.libs.throttling.ThrottlingLimits)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingLimits;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/libs/throttling/ThrottlingLimits$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/libs/throttling/ThrottlingLimits;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/libs/throttling/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

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
    instance-of v0, p1, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    iget v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public getMaxInflight()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->getMaxInflight()I

    move-result v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.libs.throttling.ThrottlingLimits.Builder (com.google.android.gms.libs.throttling.ThrottlingLimits$Builder)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingLimits$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/ThrottlingLimits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingLimits$Builder;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    return-void
.end method
