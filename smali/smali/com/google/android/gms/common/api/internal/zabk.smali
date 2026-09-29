###### Class com.google.android.gms.common.api.internal.zabk (com.google.android.gms.common.api.internal.zabk)
.class public final Lcom/google/android/gms/common/api/internal/zabk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/common/api/internal/zat;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private final zab:Ljava/util/Queue;

.field private final zac:Lcom/google/android/gms/common/api/Api$Client;

.field private final zad:Lcom/google/android/gms/common/api/internal/ApiKey;

.field private final zae:Lcom/google/android/gms/common/api/internal/zaaa;

.field private final zaf:Ljava/util/Set;

.field private final zag:Ljava/util/Map;

.field private final zah:I

.field private final zai:Lcom/google/android/gms/common/api/internal/zacl;

.field private volatile zaj:Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

.field private zak:Z

.field private final zal:Ljava/util/List;

.field private zam:Lcom/google/android/gms/common/ConnectionResult;

.field private zan:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    .line 2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaf:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zal:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zan:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lcom/google/android/gms/common/api/GoogleApi;->zaf(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/zabk;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaa;

    .line 8
    invoke-direct {v2}, Lcom/google/android/gms/common/api/internal/zaaa;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/GoogleApi;->zab()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zah:I

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaB()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    .line 11
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/api/GoogleApi;->zac(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/zacl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zai:Lcom/google/android/gms/common/api/internal/zacl;

    return-void

    :cond_60
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zai:Lcom/google/android/gms/common/api/internal/zacl;

    return-void
.end method

.method private final zaC(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zah()V

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaN(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaK()V

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 4
    const-string v1, "com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_25

    .line 6
    sget-object v0, Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

    :cond_25
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaj:Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

    goto :goto_2a

    .line 18
    :cond_28
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaj:Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

    .line 6
    :goto_2a
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 8
    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacc;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->getRequiredFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zaO([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    :cond_50
    :try_start_50
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    new-instance v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->registerListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    :try_end_5a
    .catch Landroid/os/DeadObjectException; {:try_start_50 .. :try_end_5a} :catch_69
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_5a} :catch_5d
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_5a} :catch_5b

    goto :goto_34

    :catch_5b
    move-exception v0

    goto :goto_5e

    :catch_5d
    move-exception v0

    .line 16
    :goto_5e
    const-string v1, "GoogleApiManager"

    const-string v2, "Failed to register listener on re-connection."

    .line 12
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_34

    :catch_69
    const/4 p1, 0x3

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "DeadObjectException thrown while calling register listener method."

    .line 16
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    .line 17
    :cond_74
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaF()V

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaL()V

    return-void
.end method

.method private final zaD(I)V
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zah()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/common/api/internal/zaaa;->zae(ILjava/lang/String;)V

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->getLastDisconnectMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection suspended: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    .line 6
    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x1388

    .line 7
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    .line 8
    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v3, 0x1d4c0

    .line 9
    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->zac()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_65
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacc;

    .line 12
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_65

    :cond_77
    return-void
.end method

.method private final zaE(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaA()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF()Lcom/google/android/gms/common/api/internal/zaab;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaG()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaF()Lcom/google/android/gms/common/api/internal/zaab;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zah:I

    .line 3
    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/zap;->zaf(Lcom/google/android/gms/common/ConnectionResult;I)V

    .line 4
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_25
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_28
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method private final zaF()V
    .registers 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_29

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/zai;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v5}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_29

    .line 3
    :cond_1d
    invoke-direct {p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->zaG(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 4
    invoke-interface {v1, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    return-void
.end method

.method private final zaG(Lcom/google/android/gms/common/api/internal/zai;)Z
    .registers 13

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/common/api/internal/zac;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaH(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    .line 2
    :cond_9
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/api/internal/zac;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/common/api/internal/zabk;->zaO([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaH(Lcom/google/android/gms/common/api/internal/zai;)V

    return v1

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x35

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v6, v7

    const/4 v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v6, v8

    add-int/2addr v6, v7

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " could not execute call because it requires feature ("

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v3, "GoogleApiManager"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaL()Z

    move-result v4

    if-eqz v4, :cond_161

    .line 10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->zab(Lcom/google/android/gms/common/api/internal/zabk;)Z

    move-result v4

    if-eqz v4, :cond_161

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/zac;->zac(Lcom/google/android/gms/common/api/internal/zabk;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    new-instance v4, Lcom/google/android/gms/common/api/internal/zabl;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, v5}, Lcom/google/android/gms/common/api/internal/zabl;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;[B)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zal:Ljava/util/List;

    .line 12
    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const-wide/16 v8, 0x1388

    const/16 v10, 0xf

    if-ltz v6, :cond_b5

    .line 13
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabl;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    .line 14
    invoke-virtual {v1, v10, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    .line 15
    invoke-static {v1, v10, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_15f

    .line 17
    :cond_b5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    .line 18
    invoke-static {v1, v10, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v6

    .line 19
    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    const/16 v6, 0x10

    .line 20
    invoke-static {v1, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v4

    const-wide/32 v8, 0x1d4c0

    .line 21
    invoke-virtual {v4, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 22
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v7, v5, v5, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const-string v4, ", version: "

    if-nez v0, :cond_12a

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zah:I

    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    if-eqz p1, :cond_15f

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x37

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notification displayed for missing feature: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15f

    .line 29
    :cond_12a
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v2}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x3d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v2, v5

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "A dialog should be displayed for missing feature: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    :goto_15f
    const/4 p1, 0x0

    return p1

    .line 32
    :cond_161
    invoke-static {}, Lcom/google/android/gms/common/internal/InternalClientFlagRegistry;->getClientFlags()Lcom/google/android/gms/common/internal/InternalClientFlags;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/InternalClientFlags;->useApiExceptionOnMissingFeature()Z

    move-result p1

    if-eqz p1, :cond_175

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 33
    invoke-static {p1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_17d

    .line 35
    :cond_175
    new-instance p1, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {p1, v2}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zac;->zae(Ljava/lang/Exception;)V

    :goto_17d
    return v1
.end method

.method private final zaH(Lcom/google/android/gms/common/api/internal/zai;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zap()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zai;->zaf(Lcom/google/android/gms/common/api/internal/zaaa;Z)V

    .line 2
    :try_start_9
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/zai;->zag(Lcom/google/android/gms/common/api/internal/zabk;)V
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->onConnectionSuspended(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method private final zaI(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-eqz p2, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    if-eq v2, v0, :cond_3d

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zai;

    if-eqz p3, :cond_2f

    .line 6
    iget v2, v1, Lcom/google/android/gms/common/api/internal/zai;->zac:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    :cond_2f
    if-eqz p1, :cond_35

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zai;->zad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_38

    .line 8
    :cond_35
    invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/internal/zai;->zae(Ljava/lang/Exception;)V

    .line 9
    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1c

    :cond_3c
    return-void

    .line 1
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Status XOR exception should be null"

    .line 2
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zaJ(Lcom/google/android/gms/common/api/Status;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zaI(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method private final zaK()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x9

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    :cond_1d
    return-void
.end method

.method private final zaL()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v4

    .line 2
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay()J

    move-result-wide v1

    .line 3
    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private final zaM(Z)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zaaa;->zac()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz p1, :cond_27

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaL()V

    :cond_27
    return v3

    :cond_28
    const-string p1, "Timing out service connection."

    .line 5
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    .line 6
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaf:Ljava/util/Set;

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zal:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau(Lcom/google/android/gms/common/api/internal/ApiKey;)Z

    move-result v1

    if-nez v1, :cond_70

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaE()Ljava/util/Map;

    move-result-object v1

    .line 10
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zap()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaH()Ljava/util/Set;

    move-result-object v1

    .line 12
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaI()Ljava/util/Set;

    move-result-object v0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_70

    :cond_69
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaJ()Ljava/util/Set;

    move-result-object v0

    .line 14
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_70
    :goto_70
    const/4 p1, 0x1

    return p1

    :cond_72
    return v3
.end method

.method private final zaN(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zal;

    .line 2
    sget-object v3, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 3
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 4
    invoke-virtual {v2, v4, p1, v3}, Lcom/google/android/gms/common/api/internal/zal;->zad(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    .line 5
    :cond_28
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zaO([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/Feature;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_51

    array-length v1, p1

    if-eqz v1, :cond_51

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->getAvailableFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    new-array v1, v2, [Lcom/google/android/gms/common/Feature;

    .line 2
    :cond_11
    new-instance v3, Landroidx/collection/ArrayMap;

    array-length v4, v1

    invoke-direct {v3, v4}, Landroidx/collection/ArrayMap;-><init>(I)V

    move v4, v2

    :goto_18
    array-length v5, v1

    if-ge v4, v5, :cond_2f

    .line 3
    aget-object v5, v1, v4

    .line 4
    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_2f
    array-length v1, p1

    :goto_30
    if-ge v2, v1, :cond_51

    .line 5
    aget-object v4, p1, v2

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_50

    .line 7
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/gms/common/Feature;->getVersion()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_4d

    goto :goto_50

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_50
    :goto_50
    return-object v4

    :cond_51
    return-object v0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v2, v1, :cond_14

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaC(Landroid/os/Bundle;)V

    return-void

    :cond_14
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabg;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabg;-><init>(Lcom/google/android/gms/common/api/internal/zabk;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v2, v1, :cond_14

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaD(I)V

    return-void

    :cond_14
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabh;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/zabh;-><init>(Lcom/google/android/gms/common/api/internal/zabk;I)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zaA()Lcom/google/android/gms/common/api/internal/ApiKey;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    return-object v0
.end method

.method final synthetic zaB()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    return v0
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 4

    const/4 p1, 0x0

    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x19

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "onSignInFailed for "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zai:Lcom/google/android/gms/common/api/internal/zacl;

    if-eqz v1, :cond_10

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacl;->zad()V

    .line 3
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zah()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Lcom/google/android/gms/common/internal/zav;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zav;->zac()V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaN(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    instance-of v1, v1, Lcom/google/android/gms/common/internal/service/zaz;

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v3, 0x18

    if-eq v1, v3, :cond_43

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaz(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x13

    .line 8
    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    .line 9
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 10
    :cond_43
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_52

    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 12
    :cond_52
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v3, 0x19

    if-ne v1, v3, :cond_64

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_64
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    .line 15
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6f

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    return-void

    :cond_6f
    const/4 v3, 0x0

    if-eqz p2, :cond_7e

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 17
    invoke-direct {p0, v3, p2, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaI(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    .line 18
    :cond_7e
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaL()Z

    move-result p2

    if-eqz p2, :cond_cc

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object v4

    .line 20
    invoke-direct {p0, v4, v3, v2}, Lcom/google/android/gms/common/api/internal/zabk;->zaI(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 21
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_94

    goto :goto_cb

    .line 22
    :cond_94
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaE(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-nez v1, :cond_cb

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zah:I

    .line 23
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_ac

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    :cond_ac
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    if-eqz v1, :cond_c4

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    .line 27
    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    .line 28
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 25
    :cond_c4
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    :cond_cb
    :goto_cb
    return-void

    :cond_cc
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 29
    invoke-static {p2, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/zai;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaG(Lcom/google/android/gms/common/api/internal/zai;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaL()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_37

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    .line 9
    :cond_37
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    return-void
.end method

.method public final zae()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zae:Lcom/google/android/gms/common/api/internal/zaaa;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaa;->zad()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    array-length v2, v0

    :goto_23
    if-ge v1, v2, :cond_37

    aget-object v3, v0, v1

    new-instance v4, Lcom/google/android/gms/common/api/internal/zah;

    .line 5
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->zad(Lcom/google/android/gms/common/api/internal/zai;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 6
    :cond_37
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaN(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 8
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zabj;-><init>(Lcom/google/android/gms/common/api/internal/zabk;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    :cond_50
    return-void
.end method

.method public final zaf()Lcom/google/android/gms/common/api/Api$Client;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    return-object v0
.end method

.method public final zag()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zag:Ljava/util/Map;

    return-object v0
.end method

.method public final zah()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public final zai()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zam:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final zaj()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    :cond_10
    return-void
.end method

.method public final zak()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    if-eqz v1, :cond_3d

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaK()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaB()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaC()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2a

    .line 4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_33

    .line 5
    :cond_2a
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    const-string v2, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 6
    :goto_33
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    const-string v1, "Timing out connection while resuming."

    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->disconnect(Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method public final zal()Z
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zaM(Z)Z

    move-result v0

    return v0
.end method

.method public final zam()V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    const-string v1, " is not available: "

    const-string v2, "The service for "

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v4

    if-nez v4, :cond_9d

    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->isConnecting()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto/16 :goto_9d

    :cond_1d
    const/16 v4, 0xa

    :try_start_1f
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaD()Lcom/google/android/gms/common/internal/zav;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaB()Landroid/content/Context;

    move-result-object v6

    .line 3
    invoke-virtual {v5, v6, v3}, Lcom/google/android/gms/common/internal/zav;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/Api$Client;)I

    move-result v5

    if-eqz v5, :cond_6e

    .line 10
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v3, 0x0

    invoke-direct {v0, v5, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const-string v5, "GoogleApiManager"

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x23

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V
    :try_end_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_6d} :catch_94

    return-void

    :cond_6e
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 4
    new-instance v2, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {v2, v0, v3, v1}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/Api$Client;Lcom/google/android/gms/common/api/internal/ApiKey;)V

    .line 5
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zai:Lcom/google/android/gms/common/api/internal/zacl;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacl;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/zacl;->zac(Lcom/google/android/gms/common/api/internal/zack;)V

    .line 7
    :cond_86
    :try_start_86
    invoke-interface {v3, v2}, Lcom/google/android/gms/common/api/Api$Client;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    :try_end_89
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_89} :catch_8a

    return-void

    :catch_8a
    move-exception v0

    .line 8
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    return-void

    :catch_94
    move-exception v0

    .line 14
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zabk;->zac(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/Exception;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public final zan(Lcom/google/android/gms/common/api/internal/zal;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkHandlerThread(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaf:Ljava/util/Set;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final zao()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final zap()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    return v0
.end method

.method public final zaq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zah:I

    return v0
.end method

.method final zar()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zan:I

    return v0
.end method

.method final zas()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zan:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zan:I

    return-void
.end method

.method final synthetic zat(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaC(Landroid/os/Bundle;)V

    return-void
.end method

.method final synthetic zau(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaD(I)V

    return-void
.end method

.method final synthetic zav(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaJ(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method final synthetic zaw(Z)Z
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaM(Z)Z

    move-result p1

    return p1
.end method

.method final synthetic zax(Lcom/google/android/gms/common/api/internal/zabl;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1c

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zak:Z

    if-nez p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result p1

    if-nez p1, :cond_19

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    return-void

    .line 4
    :cond_19
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabk;->zaF()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method final synthetic zay(Lcom/google/android/gms/common/api/internal/zabl;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zaa:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xf

    .line 2
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaK()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabl;->zab()Lcom/google/android/gms/common/Feature;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zab:Ljava/util/Queue;

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zai;

    instance-of v4, v3, Lcom/google/android/gms/common/api/internal/zac;

    if-eqz v4, :cond_2f

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/common/api/internal/zac;

    invoke-virtual {v4, p0}, Lcom/google/android/gms/common/api/internal/zac;->zaa(Lcom/google/android/gms/common/api/internal/zabk;)[Lcom/google/android/gms/common/Feature;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 8
    invoke-static {v4, p1}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 9
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 10
    :cond_52
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_57
    if-ge v3, v2, :cond_81

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Lcom/google/android/gms/common/api/internal/zai;

    .line 12
    invoke-interface {v0, v4}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Lcom/google/android/gms/common/internal/InternalClientFlagRegistry;->getClientFlags()Lcom/google/android/gms/common/internal/InternalClientFlags;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/internal/InternalClientFlags;->useApiExceptionOnMissingFeature()Z

    move-result v5

    if-eqz v5, :cond_76

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabk;->zad:Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 14
    invoke-static {v5, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/Status;

    move-result-object v5

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zai;->zad(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_7e

    .line 16
    :cond_76
    new-instance v5, Lcom/google/android/gms/common/api/UnsupportedApiCallException;

    invoke-direct {v5, p1}, Lcom/google/android/gms/common/api/UnsupportedApiCallException;-><init>(Lcom/google/android/gms/common/Feature;)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/internal/zai;->zae(Ljava/lang/Exception;)V

    :goto_7e
    add-int/lit8 v3, v3, 0x1

    goto :goto_57

    :cond_81
    return-void
.end method

.method final synthetic zaz()Lcom/google/android/gms/common/api/Api$Client;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabk;->zac:Lcom/google/android/gms/common/api/Api$Client;

    return-object v0
.end method
