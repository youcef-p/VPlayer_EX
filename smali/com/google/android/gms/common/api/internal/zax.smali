###### Class com.google.android.gms.common.api.internal.zax (com.google.android.gms.common.api.internal.zax)
.class final Lcom/google/android/gms/common/api/internal/zax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;


# instance fields
.field private final zaa:Landroid/content/Context;

.field private final zab:Lcom/google/android/gms/common/api/internal/zaaz;

.field private final zac:Landroid/os/Looper;

.field private final zad:Lcom/google/android/gms/common/api/internal/zabd;

.field private final zae:Lcom/google/android/gms/common/api/internal/zabd;

.field private final zaf:Ljava/util/Map;

.field private final zag:Ljava/util/Set;

.field private final zah:Lcom/google/android/gms/common/api/Api$Client;

.field private zai:Landroid/os/Bundle;

.field private zaj:Lcom/google/android/gms/common/ConnectionResult;

.field private zak:Lcom/google/android/gms/common/ConnectionResult;

.field private zal:Z

.field private final zam:Ljava/util/concurrent/locks/Lock;

.field private zan:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .registers 29

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, p0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    move-object/from16 v5, p3

    iput-object v5, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v6, p4

    iput-object v6, p0, Lcom/google/android/gms/common/api/internal/zax;->zac:Landroid/os/Looper;

    move-object/from16 v1, p10

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zah:Lcom/google/android/gms/common/api/Api$Client;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v13, Lcom/google/android/gms/common/api/internal/zav;

    .line 3
    invoke-direct {v13, p0, v0}, Lcom/google/android/gms/common/api/internal/zav;-><init>(Lcom/google/android/gms/common/api/internal/zax;[B)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move-object/from16 v12, p12

    move-object/from16 v10, p14

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v13, Lcom/google/android/gms/common/api/internal/zaw;

    .line 4
    invoke-direct {v13, p0, v0}, Lcom/google/android/gms/common/api/internal/zaw;-><init>(Lcom/google/android/gms/common/api/internal/zax;[B)V

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move-object/from16 v10, p13

    invoke-direct/range {v2 .. v13}, Lcom/google/android/gms/common/api/internal/zabd;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance p1, Landroidx/collection/ArrayMap;

    .line 5
    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 6
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 7
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_64

    .line 8
    :cond_76
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 9
    invoke-virtual {p1, v1, v2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 10
    :cond_90
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    return-void
.end method

.method private final zaA()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V

    goto :goto_6

    .line 3
    :cond_16
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zaB()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private final zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabd;

    const-string v0, "GoogleApiClient is not configured to use the API required for this call."

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final zaD()Landroid/app/PendingIntent;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zah:Lcom/google/android/gms/common/api/Api$Client;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaa:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    sget v3, Lcom/google/android/gms/internal/base/zan;->zaa:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    .line 3
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/gms/internal/base/zan;->zaa(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static zaE(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zax;
    .registers 25

    move-object/from16 v0, p7

    .line 1
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v7, Landroidx/collection/ArrayMap;

    .line 2
    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 3
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v5

    if-ne v3, v5, :cond_30

    move-object v10, v4

    .line 6
    :cond_30
    invoke-interface {v4}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 8
    :cond_40
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v7, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 9
    :cond_4a
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 10
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    new-instance v13, Landroidx/collection/ArrayMap;

    .line 11
    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v14, Landroidx/collection/ArrayMap;

    .line 12
    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 13
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    .line 15
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 17
    :cond_86
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 27
    :cond_96
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_9e
    new-instance v11, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_ad
    if-ge v1, v0, :cond_d7

    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Lcom/google/android/gms/common/api/internal/zas;

    .line 23
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zas;->zaa:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 24
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 25
    :cond_c3
    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cf

    .line 26
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_ad

    :cond_cf
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    .line 27
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_d7
    new-instance v0, Lcom/google/android/gms/common/api/internal/zax;

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    .line 28
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method private final zaz(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 3
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaaz;->zab(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 2
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    :goto_1d
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    return-void
.end method


# virtual methods
.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zax;->zaC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaf:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaD()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 4
    :cond_23
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public final zae()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    return-void
.end method

.method public final zaf()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final zag(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final zah()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    return-void
.end method

.method public final zai()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_28

    if-ne v0, v2, :cond_22

    :cond_21
    move v1, v2

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method public final zaj()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 2
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 3
    throw v0
.end method

.method public final zak(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaj()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zax;->zai()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zai()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zag:Ljava/util/Set;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    const/4 v1, 0x1

    if-nez p1, :cond_26

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    :cond_26
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_32

    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_32
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 7
    throw p1
.end method

.method public final zal()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zal()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zal()V

    return-void
.end method

.method public final zam()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaj()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    .line 4
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/base/zas;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zac:Landroid/os/Looper;

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zas;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zau;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zau;-><init>(Lcom/google/android/gms/common/api/internal/zax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 7
    :cond_28
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 6
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw v0
.end method

.method public final zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabd;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabd;->zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zao()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaB()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2d

    .line 4
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_88

    iget v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    if-ne v2, v1, :cond_24

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    return-void

    .line 7
    :cond_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    return-void

    .line 2
    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    if-eq v0, v1, :cond_4e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    new-instance v0, Ljava/lang/AssertionError;

    .line 5
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaaz;->zaa(Landroid/os/Bundle;)V

    .line 4
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zax;->zaA()V

    :goto_51
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zan:I

    return-void

    .line 8
    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zax;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_88

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_88

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    .line 12
    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabd;->zaf:I

    iget v3, v3, Lcom/google/android/gms/common/api/internal/zabd;->zaf:I

    if-ge v2, v3, :cond_85

    move-object v0, v1

    .line 13
    :cond_85
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zax;->zaz(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_88
    return-void
.end method

.method final synthetic zap(IZ)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zab:Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaaz;->zac(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method final synthetic zaq(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zai:Landroid/os/Bundle;

    return-void

    :cond_7
    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method final synthetic zar()Lcom/google/android/gms/common/api/internal/zabd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zad:Lcom/google/android/gms/common/api/internal/zabd;

    return-object v0
.end method

.method final synthetic zas()Lcom/google/android/gms/common/api/internal/zabd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zae:Lcom/google/android/gms/common/api/internal/zabd;

    return-object v0
.end method

.method final synthetic zat(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zaj:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method final synthetic zau()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method final synthetic zav(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zak:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method final synthetic zaw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    return v0
.end method

.method final synthetic zax(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zax;->zal:Z

    return-void
.end method

.method final synthetic zay()Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zax;->zam:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method
