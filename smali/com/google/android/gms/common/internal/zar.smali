###### Class com.google.android.gms.common.internal.zar (com.google.android.gms.common.internal.zar)
.class final Lcom/google/android/gms/common/internal/zar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field static final zaa:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/internal/zas;->zab()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zar;->zaa:Landroid/os/Handler;

    return-void
.end method
