###### Class com.google.android.gms.common.api.internal.zacl (com.google.android.gms.common.api.internal.zacl)
.class public final Lcom/google/android/gms/common/api/internal/zacl;
.super Lcom/google/android/gms/signin/internal/zac;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static final zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;


# instance fields
.field private final zab:Landroid/content/Context;

.field private final zac:Landroid/os/Handler;

.field private final zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field private final zae:Ljava/util/Set;

.field private final zaf:Lcom/google/android/gms/common/internal/ClientSettings;

.field private zag:Lcom/google/android/gms/signin/zae;

.field private zah:Lcom/google/android/gms/common/api/internal/zack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/signin/zad;->zac:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sput-object v0, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ClientSettings;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/zac;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zab:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacl;->zac:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    .line 2
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->getRequiredScopes()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zae:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    invoke-interface {p1, p0}, Lcom/google/android/gms/signin/zae;->zaa(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zack;->zab(I)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zacj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/zacj;-><init>(Lcom/google/android/gms/common/api/internal/zacl;Lcom/google/android/gms/signin/internal/zak;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zac:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/zack;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    :cond_7
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zacl;->zaf:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/common/internal/ClientSettings;->zae(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zad:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zacl;->zab:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zac:Landroid/os/Handler;

    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->zac()Lcom/google/android/gms/signin/SignInOptions;

    move-result-object v5

    move-object v7, p0

    move-object v6, p0

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/signin/zae;

    iput-object v1, v6, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    iput-object p1, v6, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    iget-object p1, v6, Lcom/google/android/gms/common/api/internal/zacl;->zae:Ljava/util/Set;

    if-eqz p1, :cond_3f

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3f

    .line 7
    :cond_39
    iget-object p1, v6, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/signin/zae;->zad()V

    return-void

    .line 6
    :cond_3f
    :goto_3f
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaci;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaci;-><init>(Lcom/google/android/gms/common/api/internal/zacl;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zad()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/signin/zae;->disconnect()V

    :cond_7
    return-void
.end method

.method final synthetic zae(Lcom/google/android/gms/signin/internal/zak;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zaa()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->zab()Lcom/google/android/gms/common/internal/zaaf;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zaaf;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zaaf;->zab()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_44

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    .line 8
    invoke-interface {p1}, Lcom/google/android/gms/signin/zae;->disconnect()V

    return-void

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zaaf;->zaa()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zae:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zack;->zac(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_55

    .line 11
    :cond_50
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zack;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 9
    :goto_55
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zag:Lcom/google/android/gms/signin/zae;

    .line 11
    invoke-interface {p1}, Lcom/google/android/gms/signin/zae;->disconnect()V

    return-void
.end method

.method final synthetic zaf()Lcom/google/android/gms/common/api/internal/zack;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zah:Lcom/google/android/gms/common/api/internal/zack;

    return-object v0
.end method
