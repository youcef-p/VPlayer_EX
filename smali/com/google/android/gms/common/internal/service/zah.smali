###### Class com.google.android.gms.common.internal.service.zah (com.google.android.gms.common.internal.service.zah)
.class abstract Lcom/google/android/gms/common/internal/service/zah;
.super Lcom/google/android/gms/common/internal/service/zai;
.source "com.google.android.gms:play-services-base@@18.10.1"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/service/zai;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 2

    return-object p1
.end method
