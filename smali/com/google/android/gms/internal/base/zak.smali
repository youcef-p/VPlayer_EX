###### Class com.google.android.gms.internal.base.zak (com.google.android.gms.internal.base.zak)
.class public final Lcom/google/android/gms/internal/base/zak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field private static volatile zaa:Lcom/google/android/gms/internal/base/zal;

.field private static volatile zab:Lcom/google/android/gms/internal/base/zam;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/base/zal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/base/zak;->zaa:Lcom/google/android/gms/internal/base/zal;

    new-instance v0, Lcom/google/android/gms/internal/base/zam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/base/zam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/base/zak;->zab:Lcom/google/android/gms/internal/base/zam;

    return-void
.end method

.method public static zaa()Lcom/google/android/gms/internal/base/zam;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/base/zak;->zab:Lcom/google/android/gms/internal/base/zam;

    return-object v0
.end method
