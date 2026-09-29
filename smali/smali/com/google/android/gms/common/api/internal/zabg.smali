###### Class com.google.android.gms.common.api.internal.zabg (com.google.android.gms.common.api.internal.zabg)
.class final Lcom/google/android/gms/common/api/internal/zabg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Landroid/os/Bundle;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabk;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabg;->zaa:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabg;->zab:Lcom/google/android/gms/common/api/internal/zabk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabg;->zab:Lcom/google/android/gms/common/api/internal/zabk;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabg;->zaa:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zat(Landroid/os/Bundle;)V

    return-void
.end method
