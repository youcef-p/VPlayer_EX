###### Class com.google.android.gms.common.internal.zzg (com.google.android.gms.common.internal.zzg)
.class public final Lcom/google/android/gms/common/internal/zzg;
.super Lcom/google/android/gms/common/internal/zza;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field final synthetic zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzg;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/zza;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V

    return-void
.end method


# virtual methods
.method protected final zza()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzg;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    sget-object v1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final zzb(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzg;->zzf:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result p1

    const/16 v1, 0x10

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/google/android/gms/common/internal/zzg;->zzc:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi(IIZ)V

    return-void

    .line 3
    :cond_1d
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh(I)V

    return-void

    :cond_21
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
