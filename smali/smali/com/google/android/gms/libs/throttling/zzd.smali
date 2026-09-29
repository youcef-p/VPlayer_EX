###### Class com.google.android.gms.libs.throttling.zzd (com.google.android.gms.libs.throttling.zzd)
.class public final Lcom/google/android/gms/libs/throttling/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 2
    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_30

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1e

    .line 6
    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_1e
    sget-object v2, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4
    invoke-static {p1, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/libs/throttling/ThrottlingLimits;

    goto :goto_6

    :cond_27
    sget-object v1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 5
    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/libs/throttling/ThrottlingSelector;

    goto :goto_6

    .line 7
    :cond_30
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance p1, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/libs/throttling/ThrottlingOverride;-><init>(Lcom/google/android/gms/libs/throttling/ThrottlingSelector;Lcom/google/android/gms/libs/throttling/ThrottlingLimits;)V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/libs/throttling/ThrottlingOverride;

    return-object p1
.end method
