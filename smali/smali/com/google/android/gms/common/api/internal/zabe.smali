###### Class com.google.android.gms.common.api.internal.zabe (com.google.android.gms.common.api.internal.zabe)
.class public final Lcom/google/android/gms/common/api/internal/zabe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field private static final zaa:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/base/zar;->zaa()Lcom/google/android/gms/internal/base/zao;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;

    const-string v2, "GAC_Executor"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/NumberedThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 2
    invoke-interface {v0, v2, v1, v2}, Lcom/google/android/gms/internal/base/zao;->zab(ILjava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zaa()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/zabe;->zaa:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
