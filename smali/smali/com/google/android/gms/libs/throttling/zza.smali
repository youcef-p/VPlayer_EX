###### Class com.google.android.gms.libs.throttling.zza (com.google.android.gms.libs.throttling.zza)
.class public final Lcom/google/android/gms/libs/throttling/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# direct methods
.method public static zza()Lcom/google/android/gms/libs/throttling/GmsThrottler;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/libs/throttling/InFlightThrottler;

    invoke-direct {v0}, Lcom/google/android/gms/libs/throttling/InFlightThrottler;-><init>()V

    return-object v0
.end method
