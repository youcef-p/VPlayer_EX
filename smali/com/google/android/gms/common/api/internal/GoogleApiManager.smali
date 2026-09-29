###### Class com.google.android.gms.common.api.internal.GoogleApiManager (com.google.android.gms.common.api.internal.GoogleApiManager)
.class public Lcom/google/android/gms/common/api/internal/GoogleApiManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final zaa:Lcom/google/android/gms/common/api/Status;

.field static final zab:Lcom/google/android/gms/common/api/Status;

.field private static final zac:Lcom/google/android/gms/common/api/Status;

.field private static final zaf:Ljava/lang/Object;

.field private static final zag:Ljava/lang/Object;

.field private static zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

.field private static volatile zal:Z


# instance fields
.field private zad:J

.field private zae:Z

.field private zah:Lcom/google/android/gms/common/internal/TelemetryData;

.field private zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

.field private zaj:Lcom/google/android/gms/common/internal/zag;

.field private final zam:Landroid/content/Context;

.field private final zan:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zao:Lcom/google/android/gms/common/internal/zav;

.field private final zap:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zaq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zar:Ljava/util/Map;

.field private zas:Lcom/google/android/gms/common/api/internal/zaab;

.field private final zat:Ljava/util/Set;

.field private final zau:Ljava/util/Set;

.field private final zav:Ljava/util/Set;

.field private final zaw:Ljava/util/Set;

.field private final zax:Landroid/os/Handler;

.field private volatile zay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x17

    .line 2
    const-string v3, "API call is throttled."

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zab:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 3
    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zag:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    .line 3
    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    .line 4
    new-instance v1, Landroidx/collection/ArraySet;

    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    new-instance v1, Landroidx/collection/ArraySet;

    .line 5
    invoke-direct {v1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Ljava/util/Set;

    new-instance v1, Ljava/util/WeakHashMap;

    .line 6
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav:Ljava/util/Set;

    new-instance v1, Ljava/util/WeakHashMap;

    .line 8
    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/base/zas;

    .line 10
    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/base/zas;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance p2, Lcom/google/android/gms/common/internal/zav;

    .line 11
    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/zav;-><init>(Lcom/google/android/gms/common/GoogleApiAvailabilityLight;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Lcom/google/android/gms/common/internal/zav;

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isAuto(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_66

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay:Z

    :cond_66
    const/4 p1, 0x6

    .line 12
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static reportSignOut()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-eqz v1, :cond_17

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 v2, 0xa

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 4
    :cond_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method static synthetic zaA()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    return-object v0
.end method

.method private final zaM(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/zabk;

    if-nez v2, :cond_20

    new-instance v2, Lcom/google/android/gms/common/api/internal/zabk;

    .line 3
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/common/api/internal/zabk;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;Lcom/google/android/gms/common/api/GoogleApi;)V

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav:Ljava/util/Set;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw:Ljava/util/Set;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    :cond_20
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabk;->zap()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Ljava/util/Set;

    .line 8
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_2b
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    return-object v2
.end method

.method private final zaN(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V
    .registers 5

    if-eqz p2, :cond_1d

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/zabx;->zaa(Lcom/google/android/gms/common/api/internal/GoogleApiManager;ILcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabx;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabo;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/api/internal/zabo;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_1d
    return-void
.end method

.method private static zaO(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ApiKey;->zaa()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return-object v0
.end method

.method private final zaP()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v1

    if-gtz v1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2
    :cond_10
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaQ()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    :cond_1a
    return-void
.end method

.method private final zaQ()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/TelemetryLogging;->getClient(Landroid/content/Context;)Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zai:Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    return-object v0
.end method

.method public static zaa(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    if-nez v1, :cond_33

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getOrStartHandlerThread()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/GmsClientFlags;->isBindServiceOptimizationEnabled(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Z

    new-instance v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-direct {v3, p0, v1, v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    if-eqz v2, :cond_31

    iget-object p0, v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zas;->zaa(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zas;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/GmsClient;->zag(Ljava/util/concurrent/Executor;)V

    :cond_31
    sput-object v3, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    :cond_33
    sget-object p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_37
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public static zab()Lcom/google/android/gms/common/api/internal/GoogleApiManager;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    const-string v2, "Must guarantee manager is non-null before using getInstance"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    .line 3
    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static zat()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zal:Z

    return v0
.end method

.method static synthetic zav(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaO(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zaw(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/Status;
    .registers 7

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/ApiKey;->zaa()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x37

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. missing feature "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic zax()Lcom/google/android/gms/common/api/Status;
    .registers 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zac:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_394

    .line 97
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x14

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown message id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 17
    :pswitch_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zacp;

    .line 18
    iget-wide v0, p1, Lcom/google/android/gms/common/api/internal/zacp;->zab:J

    .line 19
    new-instance v0, Lcom/google/android/gms/common/internal/zai;

    new-array v1, v7, [Lcom/google/android/gms/common/internal/zah;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacp;->zaa:Lcom/google/android/gms/common/internal/zah;

    aput-object v6, v1, v8

    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/internal/zai;-><init>(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/internal/zag;

    if-nez v1, :cond_54

    .line 21
    new-instance v1, Lcom/google/android/gms/common/internal/service/zav;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/service/zav;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/internal/zag;

    :cond_54
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaj:Lcom/google/android/gms/common/internal/zag;

    .line 22
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/zag;->zaa(Lcom/google/android/gms/common/internal/zai;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_392

    .line 30
    :pswitch_5b
    iput-boolean v8, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:Z

    goto/16 :goto_392

    .line 23
    :pswitch_5f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaby;

    .line 24
    iget-wide v0, p1, Lcom/google/android/gms/common/api/internal/zaby;->zac:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_85

    .line 25
    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v1, p1, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    new-array v2, v7, [Lcom/google/android/gms/common/internal/MethodInvocation;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    aput-object p1, v2, v8

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaQ()Lcom/google/android/gms/common/internal/TelemetryLoggingClient;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/TelemetryLoggingClient;->log(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/Task;

    goto/16 :goto_392

    :cond_85
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v2, :cond_b0

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/TelemetryData;->zab()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v2

    .line 28
    iget v4, p1, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    if-ne v2, v4, :cond_a8

    if-eqz v3, :cond_a0

    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/common/api/internal/zaby;->zad:I

    if-lt v2, v3, :cond_a0

    goto :goto_a8

    .line 37
    :cond_a0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 30
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/TelemetryData;->zac(Lcom/google/android/gms/common/internal/MethodInvocation;)V

    goto :goto_b0

    .line 29
    :cond_a8
    :goto_a8
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    .line 31
    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaP()V

    :cond_b0
    :goto_b0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v2, :cond_392

    new-instance v2, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/zaby;->zaa:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v3, Lcom/google/android/gms/common/internal/TelemetryData;

    iget p1, p1, Lcom/google/android/gms/common/api/internal/zaby;->zab:I

    invoke-direct {v3, p1, v2}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zah:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    .line 36
    invoke-virtual {p1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 37
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_392

    .line 38
    :pswitch_d2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaP()V

    goto/16 :goto_392

    .line 39
    :pswitch_d7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabl;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zay(Lcom/google/android/gms/common/api/internal/zabl;)V

    goto/16 :goto_392

    .line 42
    :pswitch_f6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabl;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 44
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabl;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zax(Lcom/google/android/gms/common/api/internal/zabl;)V

    goto/16 :goto_392

    .line 45
    :pswitch_115
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zaac;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaac;->zaa()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 47
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_132

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_392

    .line 49
    :cond_132
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/api/internal/zabk;->zaw(Z)Z

    move-result v0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto/16 :goto_392

    :pswitch_149
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 51
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 52
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->zal()Z

    goto/16 :goto_392

    :pswitch_160
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 54
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 55
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->zak()V

    goto/16 :goto_392

    .line 11
    :pswitch_177
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Ljava/util/Set;

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17d
    :goto_17d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_197

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabk;

    if-eqz v1, :cond_17d

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabk;->zae()V

    goto :goto_17d

    .line 15
    :cond_197
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav:Ljava/util/Set;

    .line 16
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_392

    .line 55
    :pswitch_1a1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 56
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_392

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabk;->zaj()V

    goto/16 :goto_392

    .line 58
    :pswitch_1b8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaM(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;

    goto/16 :goto_392

    .line 4
    :pswitch_1c1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_392

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zabf;-><init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v7}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->readCurrentStateIfPossible(Z)Z

    move-result p1

    if-nez p1, :cond_392

    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    goto/16 :goto_392

    .line 59
    :pswitch_1ee
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 60
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1fe
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_211

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabk;

    .line 61
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabk;->zaq()I

    move-result v8

    if-ne v8, v0, :cond_1fe

    move-object v6, v3

    :cond_211
    if-eqz v6, :cond_26a

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    if-ne v0, v1, :cond_25d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 63
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x45

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v5, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 63
    invoke-virtual {v6, v1}, Lcom/google/android/gms/common/api/internal/zabk;->zav(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_392

    :cond_25d
    invoke-virtual {v6}, Lcom/google/android/gms/common/api/internal/zabk;->zaA()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v0

    .line 66
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaO(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zav(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_392

    .line 67
    :cond_26a
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x41

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_392

    .line 68
    :pswitch_294
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zacb;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 69
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zacb;->zac:Lcom/google/android/gms/common/api/GoogleApi;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    if-nez v0, :cond_2ac

    .line 70
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaM(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;

    move-result-object v0

    .line 71
    :cond_2ac
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->zap()Z

    move-result v1

    if-eqz v1, :cond_2c8

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/common/api/internal/zacb;->zab:I

    if-eq v1, v2, :cond_2c8

    .line 72
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zai;

    sget-object v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaa:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/zai;->zad(Lcom/google/android/gms/common/api/Status;)V

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->zae()V

    goto/16 :goto_392

    .line 74
    :cond_2c8
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/zacb;->zaa:Lcom/google/android/gms/common/api/internal/zai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zad(Lcom/google/android/gms/common/api/internal/zai;)V

    goto/16 :goto_392

    .line 1
    :pswitch_2cf
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_392

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabk;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->zah()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    goto :goto_2d9

    .line 75
    :pswitch_2ec
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/zal;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zal;->zaa()Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_392

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/ApiKey;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 78
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/zabk;

    if-nez v3, :cond_337

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav:Ljava/util/Set;

    .line 79
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31e

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw:Ljava/util/Set;

    .line 80
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32c

    .line 81
    :cond_31e
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/zal;->zab(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/HasApiKey;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/common/api/GoogleApi;

    if-eqz v5, :cond_32c

    .line 82
    check-cast v4, Lcom/google/android/gms/common/api/GoogleApi;

    invoke-direct {p0, v4}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaM(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/api/internal/zabk;

    move-result-object v3

    :cond_32c
    if-nez v3, :cond_337

    .line 90
    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 91
    invoke-virtual {p1, v2, v3, v6}, Lcom/google/android/gms/common/api/internal/zal;->zad(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_2f8

    .line 83
    :cond_337
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabk;->zao()Z

    move-result v4

    if-eqz v4, :cond_34b

    .line 84
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabk;->zaf()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v3

    .line 85
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1, v2, v4, v3}, Lcom/google/android/gms/common/api/internal/zal;->zad(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_2f8

    .line 86
    :cond_34b
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabk;->zai()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v4

    if-eqz v4, :cond_355

    .line 87
    invoke-virtual {p1, v2, v4, v6}, Lcom/google/android/gms/common/api/internal/zal;->zad(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_2f8

    .line 88
    :cond_355
    invoke-virtual {v3, p1}, Lcom/google/android/gms/common/api/internal/zabk;->zan(Lcom/google/android/gms/common/api/internal/zal;)V

    .line 89
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/zabk;->zam()V

    goto :goto_2f8

    .line 92
    :pswitch_35c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v7, p1, :cond_367

    goto :goto_369

    :cond_367
    const-wide/16 v2, 0x2710

    :goto_369
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 v0, 0xc

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_392

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 95
    invoke-virtual {p1, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    .line 96
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_37c

    :cond_392
    :goto_392
    :pswitch_392
    return v7

    nop

    :pswitch_data_394
    .packed-switch 0x1
        :pswitch_35c
        :pswitch_2ec
        :pswitch_2cf
        :pswitch_294
        :pswitch_1ee
        :pswitch_1c1
        :pswitch_1b8
        :pswitch_294
        :pswitch_1a1
        :pswitch_177
        :pswitch_160
        :pswitch_149
        :pswitch_294
        :pswitch_115
        :pswitch_f6
        :pswitch_d7
        :pswitch_d2
        :pswitch_5f
        :pswitch_5b
        :pswitch_392
        :pswitch_32
    .end packed-switch
.end method

.method final synthetic zaB()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    return-object v0
.end method

.method final synthetic zaC()Lcom/google/android/gms/common/GoogleApiAvailability;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-object v0
.end method

.method final synthetic zaD()Lcom/google/android/gms/common/internal/zav;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Lcom/google/android/gms/common/internal/zav;

    return-object v0
.end method

.method final synthetic zaE()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zaF()Lcom/google/android/gms/common/api/internal/zaab;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    return-object v0
.end method

.method final synthetic zaG()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    return-object v0
.end method

.method final synthetic zaH()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zau:Ljava/util/Set;

    return-object v0
.end method

.method final synthetic zaI()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zav:Ljava/util/Set;

    return-object v0
.end method

.method final synthetic zaJ()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaw:Ljava/util/Set;

    return-object v0
.end method

.method final synthetic zaK()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    return-object v0
.end method

.method final synthetic zaL()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay:Z

    return v0
.end method

.method public final zac()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zap:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final zad(Lcom/google/android/gms/common/api/GoogleApi;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zae(Lcom/google/android/gms/common/api/internal/zaab;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    if-eq v1, p1, :cond_e

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zaab;->zab()Landroidx/collection/ArraySet;

    move-result-object p1

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method final zaf(Lcom/google/android/gms/common/api/internal/zaab;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    if-ne v1, p1, :cond_f

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 3
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method final zag(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/internal/zabk;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabk;

    return-object p1
.end method

.method public final zah(Ljava/lang/Iterable;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zal;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zal;-><init>(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zal;->zac()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zai()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zaj(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaac;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/zaac;-><init>(Lcom/google/android/gms/common/api/internal/ApiKey;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 v1, 0xe

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaac;->zab()Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zak(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zae;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/zae;-><init>(ILcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zacb;

    .line 2
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 p2, 0x4

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final zal(Lcom/google/android/gms/common/api/GoogleApi;ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V
    .registers 7

    .line 1
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->zab()I

    move-result v0

    invoke-direct {p0, p4, v0, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaN(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/zag;

    .line 2
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/zag;-><init>(ILcom/google/android/gms/common/api/internal/TaskApiCall;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zacb;

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v0, p2, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zam()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getConfig()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zao:Lcom/google/android/gms/common/internal/zav;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    const v3, 0xc1fa340

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/common/internal/zav;->zab(Landroid/content/Context;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    if-nez v0, :cond_28

    goto :goto_29

    :cond_28
    return v1

    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0
.end method

.method public final zan(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->zab()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaN(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaf;

    new-instance v2, Lcom/google/android/gms/common/api/internal/zacc;

    .line 3
    invoke-direct {v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zacc;-><init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/zaf;-><init>(Lcom/google/android/gms/common/api/internal/zacc;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p3, Lcom/google/android/gms/common/api/internal/zacb;

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p3, v1, p2, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zao(Lcom/google/android/gms/common/api/GoogleApi;Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;I)Lcom/google/android/gms/tasks/Task;
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaN(Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/gms/common/api/GoogleApi;)V

    new-instance p3, Lcom/google/android/gms/common/api/internal/zah;

    .line 3
    invoke-direct {p3, p2, v0}, Lcom/google/android/gms/common/api/internal/zah;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zacb;

    .line 4
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {v1, p3, p2, p1}, Lcom/google/android/gms/common/api/internal/zacb;-><init>(Lcom/google/android/gms/common/api/internal/zai;ILcom/google/android/gms/common/api/GoogleApi;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 p2, 0xd

    .line 5
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zap()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    return-object v0
.end method

.method final zaq(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zan:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaj(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoogleApiManager"

    const-string v0, "Not showing notification since connectionResult is not user-facing: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zam:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/GoogleApiAvailability;->zad(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method public final zar(Lcom/google/android/gms/common/ConnectionResult;I)V
    .registers 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaq(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    return-void
.end method

.method final zas(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V
    .registers 12

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaby;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/zaby;-><init>(Lcom/google/android/gms/common/internal/MethodInvocation;IJI)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax:Landroid/os/Handler;

    const/16 p2, 0x12

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final synthetic zau(Lcom/google/android/gms/common/api/internal/ApiKey;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zaf:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zas:Lcom/google/android/gms/common/api/internal/zaab;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zat:Ljava/util/Set;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    monitor-exit v0

    return v2

    :catchall_13
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method final synthetic zay()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zad:J

    return-wide v0
.end method

.method final synthetic zaz(Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zae:Z

    return-void
.end method

###### Class com.google.android.gms.common.api.internal.zabo (com.google.android.gms.common.api.internal.zabo)
.class final synthetic Lcom/google/android/gms/common/api/internal/zabo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final synthetic zaa:Landroid/os/Handler;


# direct methods
.method synthetic constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabo;->zaa:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final synthetic execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabo;->zaa:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
