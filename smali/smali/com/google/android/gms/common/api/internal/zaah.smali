###### Class com.google.android.gms.common.api.internal.zaah (com.google.android.gms.common.api.internal.zaah)
.class final Lcom/google/android/gms/common/api/internal/zaah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaah;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zau()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zat()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->cancelAvailabilityErrorNotifications(Landroid/content/Context;)V

    return-void
.end method
