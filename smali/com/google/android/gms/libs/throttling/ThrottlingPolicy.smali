###### Class com.google.android.gms.libs.throttling.ThrottlingPolicy (com.google.android.gms.libs.throttling.ThrottlingPolicy)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/libs/throttling/ThrottlingPolicy$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Z

.field private zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

.field private zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/libs/throttling/zze;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    return-void
.end method

.method constructor <init>(ZLcom/google/android/gms/libs/throttling/ThrottlingLimits;[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    iput-object p3, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

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
    instance-of v1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    check-cast p1, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    iget-boolean v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    iget-object v3, p1, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    .line 3
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    iget-object p1, p1, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    .line 4
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    return v0

    :cond_32
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    iget-object v2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    .line 2
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zza:Z

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzb:Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;->zzc:[Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.libs.throttling.ThrottlingPolicy.Builder (com.google.android.gms.libs.throttling.ThrottlingPolicy$Builder)
.class public final Lcom/google/android/gms/libs/throttling/ThrottlingPolicy$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/libs/throttling/ThrottlingPolicy$Builder;->zza:Lcom/google/android/gms/libs/throttling/ThrottlingPolicy;

    return-void
.end method
