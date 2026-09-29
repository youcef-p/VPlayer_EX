###### Class com.google.android.gms.libs.throttling.ThrottlingSelector (com.google.android.gms.libs.throttling.ThrottlingSelector)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingSelector;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/libs/throttling/ThrottlingSelector$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/libs/throttling/ThrottlingSelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private final zzb:I

.field private final zzc:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/libs/throttling/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    iput v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zza:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    iput p3, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    iput p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

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
    instance-of v1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    check-cast p1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zza:Ljava/lang/String;

    .line 2
    iget-object v3, p1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zza:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    iget v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    return v0

    :cond_3a
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zza:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzb:I

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->zzc:I

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.libs.throttling.ThrottlingSelector.Builder (com.google.android.gms.libs.throttling.ThrottlingSelector$Builder)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingSelector$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/ThrottlingSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingSelector$Builder;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    return-void
.end method
