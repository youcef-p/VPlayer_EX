###### Class com.google.android.gms.common.api.internal.zan (com.google.android.gms.common.api.internal.zan)
.class final Lcom/google/android/gms/common/api/internal/zan;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field final synthetic zaa:Landroid/app/Dialog;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Landroid/app/Dialog;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zan;->zab:Lcom/google/android/gms/common/api/internal/zao;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zab:Lcom/google/android/gms/common/api/internal/zao;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zap;->zag()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zan;->zaa:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_12
    return-void
.end method
