###### Class com.google.android.gms.common.api.internal.zao (com.google.android.gms.common.api.internal.zao)
.class final Lcom/google/android/gms/common/api/internal/zao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zap;

.field private final zab:Lcom/google/android/gms/common/api/internal/zam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zap;Lcom/google/android/gms/common/api/internal/zam;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zao;->zaa:Lcom/google/android/gms/common/api/internal/zap;

    iget-boolean v0, v5, Lcom/google/android/gms/common/api/internal/zap;->zaa:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zao;->zab:Lcom/google/android/gms/common/api/internal/zam;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zam;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    move-object v2, v0

    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/zap;->zac:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaj(I)Z

    move-result v1

    if-nez v1, :cond_38

    .line 2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseLifecycleHelper"

    const-string v3, "Not showing dialog since ConnectionResult is not user-facing: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v0

    .line 3
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void

    .line 4
    :cond_38
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_5c

    .line 5
    iget-object v0, v5, Lcom/google/android/gms/common/api/internal/zap;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 7
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v2

    const/4 v4, 0x0

    .line 8
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-interface {v0, v1, v7}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 9
    :cond_5c
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v0, v1, v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorResolutionIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_85

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/common/api/internal/zap;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 12
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v3

    const/4 v4, 0x2

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zab(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;IILandroid/content/DialogInterface$OnCancelListener;)Z

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;Z)V

    return-void

    .line 16
    :cond_85
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_b1

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaf(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v1

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zan;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/common/api/internal/zan;-><init>(Lcom/google/android/gms/common/api/internal/zao;Landroid/app/Dialog;)V

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zag(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/zap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, v6, v7}, Lcom/google/android/gms/common/GoogleApiAvailability;->zae(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;Z)V

    return-void

    :cond_b1
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zam;->zaa()I

    move-result v0

    .line 22
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/common/api/internal/zap;->zah(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
