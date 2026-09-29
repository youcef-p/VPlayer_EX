###### Class com.google.android.gms.common.internal.zza (com.google.android.gms.common.internal.zza)
.class public abstract Lcom/google/android/gms/common/internal/zza;
.super Lcom/google/android/gms/common/internal/zzc;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field public final zza:I

.field public final zzb:Landroid/os/Bundle;

.field final zzc:I

.field final synthetic zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzc;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    iput p4, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    return-void
.end method


# virtual methods
.method protected abstract zza()Z
.end method

.method protected abstract zzb(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method protected final bridge synthetic zzc(Ljava/lang/Object;)V
    .registers 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzd:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v0, p0, Lcom/google/android/gms/common/internal/zza;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zza;->zza()Z

    move-result v0

    if-nez v0, :cond_29

    if-eqz v1, :cond_1c

    iget v0, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    .line 3
    invoke-virtual {p1, v2, v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    goto :goto_1f

    .line 4
    :cond_1c
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)Z

    .line 3
    :goto_1f
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_29
    return-void

    :cond_2a
    if-eqz v1, :cond_32

    .line 4
    iget v1, p0, Lcom/google/android/gms/common/internal/zza;->zzc:I

    .line 6
    invoke-virtual {p1, v2, v3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    goto :goto_35

    .line 7
    :cond_32
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)Z

    .line 6
    :goto_35
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zza;->zzb:Landroid/os/Bundle;

    if-eqz p1, :cond_42

    const-string v1, "pendingIntent"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/PendingIntent;

    :cond_42
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v0, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
