###### Class com.google.android.gms.internal.base.zad (com.google.android.gms.internal.base.zad)
.class public final Lcom/google/android/gms/internal/base/zad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/Feature;

.field public static final zab:Lcom/google/android/gms/common/Feature;

.field public static final zac:Lcom/google/android/gms/common/Feature;

.field public static final zad:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "CLIENT_TELEMETRY"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/internal/base/zad;->zaa:Lcom/google/android/gms/common/Feature;

    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v5, "CLIENT_NOTIFICATION_TELEMETRY"

    .line 2
    invoke-direct {v1, v5, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v1, Lcom/google/android/gms/internal/base/zad;->zab:Lcom/google/android/gms/common/Feature;

    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "CLIENT_THROTTLING_TELEMETRY"

    .line 3
    invoke-direct {v5, v6, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v5, Lcom/google/android/gms/internal/base/zad;->zac:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const/4 v0, 0x2

    aput-object v5, v2, v0

    sput-object v2, Lcom/google/android/gms/internal/base/zad;->zad:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
