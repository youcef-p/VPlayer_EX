###### Class com.google.android.gms.common.api.internal.zaal (com.google.android.gms.common.api.internal.zaal)
.class final Lcom/google/android/gms/common/api/internal/zaal;
.super Lcom/google/android/gms/common/api/internal/zaaq;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaar;

.field private final zac:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zaar;Ljava/util/Map;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zaaq;-><init>(Lcom/google/android/gms/common/api/internal/zaar;[B)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaal;->zaa:Lcom/google/android/gms/common/api/internal/zaar;

    new-instance v1, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zau()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/zav;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaal;->zac:Ljava/util/Map;

    .line 4
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-interface {v6}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/internal/zaai;

    invoke-virtual {v7}, Lcom/google/android/gms/common/api/internal/zaai;->zaa()Z

    move-result v7

    if-nez v7, :cond_41

    .line 6
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 7
    :cond_41
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 8
    :cond_45
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v5, :cond_66

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_51
    if-ge v6, v2, :cond_7e

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zat()Landroid/content/Context;

    move-result-object v7

    .line 10
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/common/internal/zav;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    if-nez v7, :cond_51

    goto :goto_7e

    .line 21
    :cond_66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :cond_6a
    if-ge v6, v3, :cond_7e

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Lcom/google/android/gms/common/api/Api$Client;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zat()Landroid/content/Context;

    move-result-object v7

    .line 12
    invoke-virtual {v1, v7, v5}, Lcom/google/android/gms/common/internal/zav;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v7

    add-int/lit8 v6, v6, 0x1

    if-eqz v7, :cond_6a

    :cond_7e
    :goto_7e
    if-eqz v7, :cond_93

    .line 13
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaj;

    .line 14
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaaj;-><init>(Lcom/google/android/gms/common/api/internal/zaal;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zar()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    return-void

    :cond_93
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zaw()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zav()Lcom/google/android/gms/signin/zae;

    move-result-object v2

    if-eqz v2, :cond_a6

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zav()Lcom/google/android/gms/signin/zae;

    move-result-object v2

    .line 15
    invoke-interface {v2}, Lcom/google/android/gms/signin/zae;->zad()V

    .line 16
    :cond_a6
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ae
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 17
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 18
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresGooglePlayServices()Z

    move-result v6

    if-eqz v6, :cond_dd

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zat()Landroid/content/Context;

    move-result-object v6

    .line 19
    invoke-virtual {v1, v6, v3}, Lcom/google/android/gms/common/internal/zav;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v6

    if-eqz v6, :cond_dd

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaak;

    .line 20
    invoke-direct {v3, p0, v0, v5}, Lcom/google/android/gms/common/api/internal/zaak;-><init>(Lcom/google/android/gms/common/api/internal/zaal;Lcom/google/android/gms/common/api/internal/zaba;Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaar;->zar()Lcom/google/android/gms/common/api/internal/zabd;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    goto :goto_ae

    .line 21
    :cond_dd
    invoke-interface {v3, v5}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    goto :goto_ae

    :cond_e1
    return-void
.end method
