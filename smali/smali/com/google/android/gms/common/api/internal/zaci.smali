###### Class com.google.android.gms.common.api.internal.zaci (com.google.android.gms.common.api.internal.zaci)
.class final Lcom/google/android/gms/common/api/internal/zaci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zacl;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaci;->zaa:Lcom/google/android/gms/common/api/internal/zacl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaci;->zaa:Lcom/google/android/gms/common/api/internal/zacl;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacl;->zaf()Lcom/google/android/gms/common/api/internal/zack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
