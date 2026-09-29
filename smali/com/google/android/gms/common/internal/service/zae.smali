###### Class com.google.android.gms.common.internal.service.zae (com.google.android.gms.common.internal.service.zae)
.class final Lcom/google/android/gms/common/internal/service/zae;
.super Lcom/google/android/gms/common/internal/service/zah;
.source "com.google.android.gms:play-services-base@@18.10.1"


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/service/zag;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/internal/service/zah;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/common/internal/service/zaj;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/service/zaj;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/zap;

    new-instance v0, Lcom/google/android/gms/common/internal/service/zaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/service/zaf;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/internal/service/zap;->zae(Lcom/google/android/gms/common/internal/service/zao;)V

    return-void
.end method
