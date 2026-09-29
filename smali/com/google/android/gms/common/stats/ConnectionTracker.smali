###### Class com.google.android.gms.common.stats.ConnectionTracker (com.google.android.gms.common.stats.ConnectionTracker)
.class public Lcom/google/android/gms/common/stats/ConnectionTracker;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zzb:Ljava/lang/Object;

.field private static volatile zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v0, :cond_17

    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/common/stats/ConnectionTracker;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/ConnectionTracker;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 2
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-object v0
.end method

.method private final zzc(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;IZLjava/util/concurrent/Executor;)Z
    .registers 10
    .param p7    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzg(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p6

    const/4 v0, 0x0

    const-string v1, "ConnectionTracker"

    if-eqz p6, :cond_f

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    invoke-static {p4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzd(Landroid/content/ServiceConnection;)Z

    move-result p6

    if-eqz p6, :cond_46

    iget-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p6, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/content/ServiceConnection;

    if-eqz p6, :cond_32

    if-eq p4, p6, :cond_32

    .line 4
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p6

    filled-new-array {p4, p2, p6}, [Ljava/lang/Object;

    move-result-object p2

    const-string p6, "Duplicate binding with the same ServiceConnection: %s, %s, %s."

    .line 5
    invoke-static {p6, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_32
    :try_start_32
    invoke-static {p1, p3, p4, p5, p7}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzf(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_3f

    if-eqz p1, :cond_39

    return p1

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    invoke-virtual {p1, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v0

    :catchall_3f
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    throw p1

    .line 10
    :cond_46
    invoke-static {p1, p3, p4, p5, p7}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzf(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    return p1
.end method

.method private static zzd(Landroid/content/ServiceConnection;)Z
    .registers 1

    instance-of p0, p0, Lcom/google/android/gms/common/internal/zzu;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private static zze(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method private static final zzf(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z
    .registers 6
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p4, :cond_3

    const/4 p4, 0x0

    .line 1
    :cond_3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p4, :cond_10

    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0

    .line 2
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private static final zzg(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 2
    :cond_8
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_c
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 4
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_16} :catch_1d

    const/high16 p1, 0x200000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :catch_1d
    :cond_1d
    return v0
.end method


# virtual methods
.method public bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 14

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;IZLjava/util/concurrent/Executor;)Z

    move-result p1

    return p1
.end method

.method public unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzd(Landroid/content/ServiceConnection;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2
    :try_start_e
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zze(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1d

    iget-object p1, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1d
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    throw p1

    .line 5
    :cond_24
    invoke-static {p1, p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zze(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void

    .line 6
    :cond_28
    invoke-static {p1, p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zze(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public unbindServiceSafe(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z
    .registers 15
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/16 v5, 0x1081

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p6

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzc(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;IZLjava/util/concurrent/Executor;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .registers 10

    .line 1
    invoke-static {p1, p3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzg(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p5

    const/4 v0, 0x0

    const-string v1, "ConnectionTracker"

    if-eqz p5, :cond_f

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    .line 2
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_f
    invoke-static {p4}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzd(Landroid/content/ServiceConnection;)Z

    move-result p5

    const/16 v2, 0x1081

    if-eqz p5, :cond_48

    iget-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {p5, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/ServiceConnection;

    if-eqz p5, :cond_34

    if-eq p4, p5, :cond_34

    .line 5
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p5

    filled-new-array {p4, p2, p5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p5, "Duplicate binding with the same ServiceConnection: %s, %s, %s."

    .line 6
    invoke-static {p5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_34
    :try_start_34
    invoke-virtual {p1, p3, p4, v2, p6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_41

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {p1, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    return v0

    :cond_40
    return p1

    :catchall_41
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p4, p4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    throw p1

    .line 3
    :cond_48
    invoke-virtual {p1, p3, p4, v2, p6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1
.end method
