###### Class com.google.android.gms.internal.base.zar (com.google.android.gms.internal.base.zar)
.class public final Lcom/google/android/gms/internal/base/zar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field private static final zaa:Lcom/google/android/gms/internal/base/zao;

.field private static volatile zab:Lcom/google/android/gms/internal/base/zao;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/base/zap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zap;-><init>([B)V

    sput-object v0, Lcom/google/android/gms/internal/base/zar;->zaa:Lcom/google/android/gms/internal/base/zao;

    sput-object v0, Lcom/google/android/gms/internal/base/zar;->zab:Lcom/google/android/gms/internal/base/zao;

    return-void
.end method

.method public static zaa()Lcom/google/android/gms/internal/base/zao;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/base/zar;->zab:Lcom/google/android/gms/internal/base/zao;

    return-object v0
.end method
