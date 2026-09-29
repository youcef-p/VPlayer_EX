###### Class com.google.android.gms.internal.base.zat (com.google.android.gms.internal.base.zat)
.class public final Lcom/google/android/gms/internal/base/zat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field public static final zaa:Lcom/google/android/gms/common/Feature;

.field public static final zab:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "moduleinstall"

    const-wide/16 v2, 0x7

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;JZ)V

    sput-object v0, Lcom/google/android/gms/internal/base/zat;->zaa:Lcom/google/android/gms/common/Feature;

    new-array v1, v4, [Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/base/zat;->zab:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
