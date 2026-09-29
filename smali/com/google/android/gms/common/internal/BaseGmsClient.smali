###### Class com.google.android.gms.common.internal.BaseGmsClient (com.google.android.gms.common.internal.BaseGmsClient)
.class public abstract Lcom/google/android/gms/common/internal/BaseGmsClient;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;,
        Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONNECT_STATE_CONNECTED:I = 0x4

.field public static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field public static final CONNECT_STATE_DISCONNECTING:I = 0x5

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

.field public static final KEY_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field private static final zze:[Lcom/google/android/gms/common/Feature;


# instance fields
.field private final zzA:Ljava/lang/String;

.field private volatile zzB:Ljava/lang/String;

.field private volatile zzC:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

.field private zzD:Lcom/google/android/gms/common/ConnectionResult;

.field private zzE:Z

.field private volatile zzF:Lcom/google/android/gms/common/internal/zzj;

.field private zzG:Landroid/os/UserHandle;

.field private volatile zzH:I

.field zza:Lcom/google/android/gms/common/internal/zzv;

.field final zzb:Landroid/os/Handler;

.field protected zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

.field protected zzd:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private zzi:I

.field private zzj:J

.field private volatile zzk:Ljava/lang/String;

.field private final zzl:Z

.field private final zzm:Landroid/content/Context;

.field private final zzn:Landroid/os/Looper;

.field private final zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

.field private final zzp:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zzq:Ljava/lang/Object;

.field private final zzr:Ljava/lang/Object;

.field private zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

.field private zzt:Landroid/os/IInterface;

.field private final zzu:Ljava/util/ArrayList;

.field private zzv:Lcom/google/android/gms/common/internal/zze;

.field private zzw:I

.field private final zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

.field private final zzy:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

.field private final zzz:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/Feature;

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "service_esmobile"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v1, v0

    sput-object v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->GOOGLE_PLUS_REQUIRED_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzE:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    const-string v1, "Context must not be null"

    .line 3
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    const-string p1, "Handler must not be null"

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    .line 5
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 6
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 7
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .registers 16

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v4

    .line 11
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    .line 12
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 13
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/BaseGmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientSupervisor;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;ILcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;Ljava/lang/String;)V
    .registers 11

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzE:Z

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    const-string v0, "Context must not be null"

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 18
    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    const-string p1, "API availability must not be null"

    .line 19
    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p4

    check-cast p1, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    new-instance p1, Lcom/google/android/gms/common/internal/zzb;

    .line 20
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/zzb;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zza()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    return-void
.end method

.method private final zzu(ILandroid/os/IInterface;I)Z
    .registers 25

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v0, v6, :cond_f

    move v7, v4

    goto :goto_10

    :cond_f
    move v7, v5

    :goto_10
    if-nez v2, :cond_14

    move v8, v4

    goto :goto_15

    :cond_14
    move v8, v5

    :goto_15
    if-ne v7, v8, :cond_19

    move v7, v5

    goto :goto_1a

    :cond_19
    move v7, v4

    .line 1
    :goto_1a
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v7, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v7

    :try_start_20
    iget-boolean v8, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eqz v8, :cond_37

    if-eq v3, v10, :cond_32

    iget-object v8, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v3, v8, :cond_32

    .line 3
    monitor-exit v7

    return v4

    :cond_32
    if-ne v0, v9, :cond_37

    iput v10, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    move v0, v9

    :cond_37
    iput v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    iput-object v2, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Landroid/os/IInterface;

    const/16 v3, 0x21

    const/4 v8, 0x0

    if-eq v0, v5, :cond_216

    const/4 v11, 0x3

    if-eq v0, v9, :cond_55

    if-eq v0, v11, :cond_55

    if-eq v0, v6, :cond_4b

    :goto_47
    move/from16 v20, v5

    goto/16 :goto_278

    .line 56
    :cond_4b
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    goto :goto_47

    .line 14
    :cond_55
    const-string v0, "Calling connect() while still connected, missing disconnect() for "

    const-string v2, " on "

    const-string v6, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    const-string v9, "unable to connect to service: "

    iget-object v12, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:Lcom/google/android/gms/common/internal/zze;

    if-eqz v12, :cond_cc

    iget-object v13, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    if-eqz v13, :cond_cc

    const-string v14, "GmsClient"

    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, 0x46

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v4, v16, v17

    move/from16 v20, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v12

    iget-object v12, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v14

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v18

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    const/16 v15, 0x1081

    move-object/from16 v19, v0

    .line 21
    invoke-virtual/range {v12 .. v19}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_ce

    :cond_cc
    move/from16 v20, v5

    :goto_ce
    iget v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    if-ne v0, v11, :cond_d5

    move/from16 v4, v20

    goto :goto_d6

    :cond_d5
    const/4 v4, 0x0

    :goto_d6
    new-instance v0, Lcom/google/android/gms/common/internal/zze;

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/gms/common/internal/zze;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;IZ)V

    iput-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:Lcom/google/android/gms/common/internal/zze;

    iget v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    if-ne v4, v11, :cond_104

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_104

    new-instance v11, Lcom/google/android/gms/common/internal/zzv;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v13

    const/16 v15, 0x1081

    const/16 v16, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_118

    .line 45
    :cond_104
    new-instance v11, Lcom/google/android/gms/common/internal/zzv;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServicePackage()Ljava/lang/String;

    move-result-object v12

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getStartServiceAction()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getUseDynamicLookup()Z

    move-result v16

    const/4 v14, 0x0

    const/16 v15, 0x1081

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzv;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 26
    :goto_118
    iput-object v11, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 30
    invoke-virtual {v11}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v4

    if-eqz v4, :cond_141

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v4

    const v5, 0x1110e58

    if-lt v4, v5, :cond_12a

    goto :goto_141

    :cond_12a
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_141
    :goto_141
    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    if-eqz v4, :cond_17d

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v3, :cond_17d

    iget-object v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 33
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 36
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v15

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    .line 37
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Landroid/os/UserHandle;

    new-instance v11, Lcom/google/android/gms/common/internal/zzo;

    const/16 v14, 0x1081

    move-object/from16 v16, v5

    .line 38
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V

    invoke-virtual {v3, v11, v0, v4, v8}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    goto :goto_1ac

    .line 51
    :cond_17d
    iget-object v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v12

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v13

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v15

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getBindServiceExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v11, Lcom/google/android/gms/common/internal/zzo;

    const/16 v14, 0x1081

    const/16 v16, 0x0

    .line 44
    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V

    .line 45
    invoke-virtual {v3, v11, v0, v4, v5}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    .line 46
    :goto_1ac
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_278

    const-string v3, "GmsClient"

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 48
    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x22

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v6, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    if-ne v2, v10, :cond_1f4

    const/16 v2, 0x10

    goto :goto_1f8

    .line 51
    :cond_1f4
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    .line 52
    :goto_1f8
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_20c

    new-instance v8, Landroid/os/Bundle;

    .line 53
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v3, "pendingIntent"

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v8, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_20c
    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {v1, v2, v8, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb(ILandroid/os/Bundle;I)V

    goto :goto_278

    :cond_216
    move/from16 v20, v5

    .line 57
    iget-object v13, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:Lcom/google/android/gms/common/internal/zze;

    if-eqz v13, :cond_278

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    if-eqz v0, :cond_24c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_24c

    iget-object v9, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v15

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    const/16 v12, 0x1081

    move-object/from16 v16, v0

    .line 8
    invoke-virtual/range {v9 .. v16}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzc(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;ZLandroid/os/UserHandle;)V

    goto :goto_276

    :cond_24c
    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo:Lcom/google/android/gms/common/internal/GmsClientSupervisor;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzv;->zza()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v15

    check-cast v2, Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v16

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzv;->zzc()Z

    move-result v18

    new-instance v14, Lcom/google/android/gms/common/internal/zzo;

    const/16 v17, 0x1081

    const/16 v19, 0x0

    .line 13
    invoke-direct/range {v14 .. v19}, Lcom/google/android/gms/common/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;IZLandroid/os/UserHandle;)V

    .line 14
    invoke-virtual {v0, v14, v13, v2}, Lcom/google/android/gms/common/internal/GmsClientSupervisor;->zzd(Lcom/google/android/gms/common/internal/zzo;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 8
    :goto_276
    iput-object v8, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv:Lcom/google/android/gms/common/internal/zze;

    .line 57
    :cond_278
    :goto_278
    monitor-exit v7

    return v20

    :catchall_27a
    move-exception v0

    .line 58
    monitor-exit v7
    :try_end_27c
    .catchall {:try_start_20 .. :try_end_27c} :catchall_27a

    throw v0
.end method

.method private final zzv(IILandroid/os/IInterface;I)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    if-eq v1, p1, :cond_a

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_10
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method


# virtual methods
.method public checkAvailabilityAndConnect()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2
    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    new-instance v1, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V

    return-void

    :cond_1d
    new-instance v0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;

    .line 4
    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method protected final checkConnected()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connect(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .registers 4

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    const/4 p1, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 2
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    return-void
.end method

.method protected abstract createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    instance-of v2, v0, Lcom/google/android/gms/common/internal/zzb;

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_29

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/internal/zzc;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzc;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 5
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_3c

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    monitor-enter v2

    :try_start_30
    iput-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 7
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_39

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 8
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    return-void

    :catchall_39
    move-exception v0

    .line 7
    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    :catchall_3c
    move-exception v1

    .line 6
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public disconnect(Ljava/lang/String;)V
    .registers 2

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->disconnect()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Landroid/os/IInterface;

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_1ac

    iget-object v6, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    monitor-enter v6

    :try_start_11
    iget-object v3, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 2
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a9

    .line 3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    const-string v7, "mConnectState="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_4a

    if-eq v4, v7, :cond_44

    if-eq v4, v6, :cond_3e

    const/4 v9, 0x4

    if-eq v4, v9, :cond_38

    const/4 v9, 0x5

    if-eq v4, v9, :cond_32

    const-string v4, "UNKNOWN"

    .line 9
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    .line 14
    :cond_32
    const-string v4, "DISCONNECTING"

    .line 4
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_38
    const-string v4, "CONNECTED"

    .line 5
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_3e
    const-string v4, "LOCAL_CONNECTING"

    .line 6
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_44
    const-string v4, "REMOTE_CONNECTING"

    .line 7
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4f

    :cond_4a
    const-string v4, "DISCONNECTED"

    .line 8
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    :goto_4f
    const-string v4, " mService="

    .line 10
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v5, :cond_5c

    const-string v4, "null"

    .line 11
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_79

    .line 12
    :cond_5c
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v9, "@"

    .line 13
    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 14
    invoke-interface {v5}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 11
    :goto_79
    const-string v4, " mServiceBroker="

    .line 15
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v3, :cond_86

    const-string v3, "null"

    .line 16
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9b

    .line 26
    :cond_86
    const-string v4, "IGmsServiceBroker@"

    .line 17
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 18
    invoke-interface {v3}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    :goto_9b
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-wide v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    const-string v5, " "

    if-lez v4, :cond_ed

    .line 20
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v11, "lastConnectedTime="

    .line 21
    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-wide v11, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    new-instance v13, Ljava/util/Date;

    invoke-direct {v13, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 22
    invoke-virtual {v3, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v8

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move-wide/from16 v16, v9

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/2addr v14, v15

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ef

    :cond_ed
    move-wide/from16 v16, v9

    :goto_ef
    iget-wide v9, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    cmp-long v4, v9, v16

    if-lez v4, :cond_157

    .line 23
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    const-string v9, "lastSuspendedCause="

    invoke-virtual {v4, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:I

    if-eq v4, v8, :cond_11a

    if-eq v4, v7, :cond_114

    if-eq v4, v6, :cond_10e

    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_11f

    .line 34
    :cond_10e
    const-string v4, "CAUSE_DEAD_OBJECT_EXCEPTION"

    .line 24
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_11f

    :cond_114
    const-string v4, "CAUSE_NETWORK_LOST"

    .line 25
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_11f

    :cond_11a
    const-string v4, "CAUSE_SERVICE_DISCONNECTED"

    .line 26
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 27
    :goto_11f
    const-string v4, " lastSuspendedTime="

    .line 28
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    iget-wide v6, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 29
    invoke-virtual {v3, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/2addr v10, v11

    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_157
    iget-wide v6, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    cmp-long v4, v6, v16

    if-lez v4, :cond_1a8

    .line 30
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "lastFailedStatus="

    .line 31
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:I

    .line 32
    invoke-static {v4}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " lastFailedTime="

    .line 33
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-wide v6, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 34
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a8
    return-void

    :catchall_1a9
    move-exception v0

    .line 2
    :try_start_1aa
    monitor-exit v6
    :try_end_1ab
    .catchall {:try_start_1aa .. :try_end_1ab} :catchall_1a9

    throw v0

    :catchall_1ac
    move-exception v0

    .line 1
    :try_start_1ad
    monitor-exit v3
    :try_end_1ae
    .catchall {:try_start_1ad .. :try_end_1ae} :catchall_1ac

    throw v0
.end method

.method protected enableLocalFallback()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method public getAttributionSourceWrapper()Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    return-object v0
.end method

.method public final getAvailableFeatures()[Lcom/google/android/gms/common/Feature;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->zzb:[Lcom/google/android/gms/common/Feature;

    return-object v0
.end method

.method protected getBindServiceExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionHint()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectionThrottlingConfig()Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->zze:Lcom/google/android/gms/common/internal/ConnectionThrottlingConfig;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    return-object v0
.end method

.method public getEndpointPackageName()Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zza:Lcom/google/android/gms/common/internal/zzv;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzv;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGCoreServiceId()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:I

    return v0
.end method

.method protected getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getLastDisconnectMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalStartServiceAction()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzn:Landroid/os/Looper;

    return-object v0
.end method

.method public getMinApkVersion()I
    .registers 2

    .line 1
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/internal/GetServiceRequest;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v4, v5, :cond_15

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Ljava/lang/String;

    :goto_12
    move-object/from16 v17, v4

    goto :goto_35

    .line 13
    :cond_15
    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    if-nez v4, :cond_1c

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Ljava/lang/String;

    goto :goto_12

    :cond_1c
    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v4

    if-nez v4, :cond_27

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Ljava/lang/String;

    goto :goto_12

    .line 3
    :cond_27
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_30

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Ljava/lang/String;

    goto :goto_12

    .line 4
    :cond_30
    invoke-virtual {v4}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    .line 1
    :goto_35
    iget v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzz:I

    .line 5
    sget v6, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    sget-object v9, Lcom/google/android/gms/common/internal/GetServiceRequest;->zza:[Lcom/google/android/gms/common/api/Scope;

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    sget-object v12, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzb:[Lcom/google/android/gms/common/Feature;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v4, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object v13, v12

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    .line 6
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzf:Ljava/lang/String;

    iput-object v2, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzi:Landroid/os/Bundle;

    if-eqz v0, :cond_65

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzh:[Lcom/google/android/gms/common/api/Scope;

    .line 8
    :cond_65
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_7a

    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v4, "com.google"

    .line 10
    invoke-direct {v0, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    if-eqz p1, :cond_91

    .line 11
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/common/internal/IAccountAccessor;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg:Landroid/os/IBinder;

    goto :goto_91

    .line 12
    :cond_85
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->requiresAccount()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzj:Landroid/accounts/Account;

    .line 11
    :cond_91
    :goto_91
    sget-object v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze:[Lcom/google/android/gms/common/Feature;

    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzk:[Lcom/google/android/gms/common/Feature;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getApiFeatures()[Lcom/google/android/gms/common/Feature;

    move-result-object v0

    iput-object v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzl:[Lcom/google/android/gms/common/Feature;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->usesClientTelemetry()Z

    move-result v0

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzo:Z

    :cond_a4
    :try_start_a4
    iget-object v2, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a7
    .catch Landroid/os/DeadObjectException; {:try_start_a4 .. :try_end_a7} :catch_df
    .catch Ljava/lang/SecurityException; {:try_start_a4 .. :try_end_a7} :catch_dd
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a7} :catch_c8
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_a7} :catch_c6

    :try_start_a7
    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v0, :cond_ba

    new-instance v4, Lcom/google/android/gms/common/internal/zzd;

    iget-object v5, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/common/internal/zzd;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 17
    invoke-interface {v0, v4, v3}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->getService(Lcom/google/android/gms/common/internal/IGmsCallbacks;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    goto :goto_c1

    .line 19
    :cond_ba
    const-string v0, "GmsClient"

    const-string v3, "mServiceBroker is null, client disconnected"

    .line 18
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_c1
    monitor-exit v2

    return-void

    :catchall_c3
    move-exception v0

    monitor-exit v2
    :try_end_c5
    .catchall {:try_start_a7 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw v0
    :try_end_c6
    .catch Landroid/os/DeadObjectException; {:try_start_c5 .. :try_end_c6} :catch_df
    .catch Ljava/lang/SecurityException; {:try_start_c5 .. :try_end_c6} :catch_dd
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_c6} :catch_c8
    .catch Ljava/lang/RuntimeException; {:try_start_c5 .. :try_end_c6} :catch_c6

    :catch_c6
    move-exception v0

    goto :goto_c9

    :catch_c8
    move-exception v0

    .line 23
    :goto_c9
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    .line 20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_dd
    move-exception v0

    .line 23
    throw v0

    :catch_df
    move-exception v0

    .line 4
    const-string v2, "GmsClient"

    const-string v3, "IGmsServiceBroker.getService failed"

    .line 24
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x3

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->triggerConnectionSuspended(I)V

    return-void
.end method

.method protected getScopes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getService()Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_17

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->checkConnected()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt:Landroid/os/IInterface;

    const-string v2, "Client is connected but service is null"

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 1
    :cond_17
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_1d
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public getServiceBrokerBinder()Landroid/os/IBinder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    if-nez v1, :cond_a

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 1
    :cond_a
    invoke-interface {v1}, Lcom/google/android/gms/common/internal/IGmsServiceBroker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected abstract getServiceDescriptor()Ljava/lang/String;
.end method

.method public getSignInIntent()Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a sign in API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getStartServiceAction()Ljava/lang/String;
.end method

.method protected getStartServicePackage()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public getTelemetryConfiguration()Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzj;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    return-object v0
.end method

.method protected getUseDynamicLookup()Z
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getMinApkVersion()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public hasConnectionInfo()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isConnecting()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :cond_e
    :goto_e
    monitor-exit v0

    return v3

    :catchall_10
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method protected onConnectedLocked(Landroid/os/IInterface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzh:J

    return-void
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzi:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj:J

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .registers 4

    .line 1
    iput p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg:J

    return-void
.end method

.method protected onPostInitHandler(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 11

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/zzf;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/zzf;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    iget-object p1, v1, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 p2, 0x1

    const/4 p3, -0x1

    .line 2
    invoke-virtual {p1, p2, v5, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUserSignOut(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->onSignOutComplete()V

    return-void
.end method

.method public providesSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresAccount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public requiresGooglePlayServices()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public requiresSignIn()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAttributionSourceWrapper(Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzC:Lcom/google/android/gms/common/wrappers/AttributionSourceWrapper;

    return-void
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzB:Ljava/lang/String;

    return-void
.end method

.method public setUserHandle(Landroid/os/UserHandle;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzG:Landroid/os/UserHandle;

    return-void

    .line 1
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setUserHandle must be called before connect()"

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public triggerConnectionSuspended(I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v1, v2, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected triggerNotAvailable(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;ILandroid/app/PendingIntent;)V
    .registers 6

    .line 1
    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public usesClientTelemetry()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public usesClientThrottling()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final zza()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzA:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzm:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method protected final zzb(ILandroid/os/Bundle;I)V
    .registers 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/zzg;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzg;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient;ILandroid/os/Bundle;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/4 p2, 0x7

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/common/internal/zzj;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzF:Lcom/google/android/gms/common/internal/zzj;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->usesClientTelemetry()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzj;->zzd:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->getInstance()Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;

    move-result-object v0

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_16

    .line 3
    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->zza()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    move-result-object p1

    :goto_16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/RootTelemetryConfigManager;->zza(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;)V

    :cond_19
    return-void
.end method

.method final synthetic zzd(ILandroid/os/IInterface;)Z
    .registers 4

    const/4 p2, 0x0

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    move-result p1

    return p1
.end method

.method final synthetic zze(ILandroid/os/IInterface;I)Z
    .registers 4

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu(ILandroid/os/IInterface;I)Z

    move-result p1

    return p1
.end method

.method final synthetic zzf(IILandroid/os/IInterface;)Z
    .registers 5

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv(IILandroid/os/IInterface;I)Z

    move-result p1

    return p1
.end method

.method final synthetic zzg(IILandroid/os/IInterface;I)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzv(IILandroid/os/IInterface;I)Z

    move-result p1

    return p1
.end method

.method final synthetic zzh(I)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzw:I

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    const/4 p1, 0x3

    if-ne v0, p1, :cond_e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzE:Z

    const/4 p1, 0x5

    goto :goto_f

    :cond_e
    const/4 p1, 0x4

    :goto_f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_21
    move-exception v0

    .line 2
    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method final synthetic zzi(IIZ)V
    .registers 5

    if-eqz p3, :cond_6

    .line 1
    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    const/4 p1, 0x5

    goto :goto_7

    :cond_6
    const/4 p1, 0x4

    :goto_7
    iget-object p3, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzb:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-virtual {p3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final synthetic zzj()Z
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v0, v2, :cond_15

    return v1

    .line 4
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzE:Z

    if-eqz v0, :cond_15

    return v1

    .line 2
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    .line 3
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getLocalStartServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    .line 4
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_32} :catch_34

    const/4 v0, 0x1

    return v0

    :catch_34
    return v1
.end method

.method final synthetic zzk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzl:Z

    return v0
.end method

.method final synthetic zzl()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr:Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzm(Lcom/google/android/gms/common/internal/IGmsServiceBroker;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs:Lcom/google/android/gms/common/internal/IGmsServiceBroker;

    return-void
.end method

.method final synthetic zzn()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzu:Ljava/util/ArrayList;

    return-object v0
.end method

.method final synthetic zzo()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzx:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    return-object v0
.end method

.method final synthetic zzp()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzy:Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    return-object v0
.end method

.method final synthetic zzq()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method final synthetic zzr(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzD:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method final synthetic zzs()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzE:Z

    return v0
.end method

.method final synthetic zzt()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzH:I

    return v0
.end method

###### Class com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks (com.google.android.gms.common.internal.BaseGmsClient$BaseConnectionCallbacks)
.class public interface abstract Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseConnectionCallbacks"
.end annotation


# static fields
.field public static final CAUSE_DEAD_OBJECT_EXCEPTION:I = 0x3

.field public static final CAUSE_SERVICE_DISCONNECTED:I = 0x1


# virtual methods
.method public abstract onConnected(Landroid/os/Bundle;)V
.end method

.method public abstract onConnectionSuspended(I)V
.end method

###### Class com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener (com.google.android.gms.common.internal.BaseGmsClient$BaseOnConnectionFailedListener)
.class public interface abstract Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BaseOnConnectionFailedListener"
.end annotation


# virtual methods
.method public abstract onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

###### Class com.google.android.gms.common.internal.BaseGmsClient.ConnectionProgressReportCallbacks (com.google.android.gms.common.internal.BaseGmsClient$ConnectionProgressReportCallbacks)
.class public interface abstract Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectionProgressReportCallbacks"
.end annotation


# virtual methods
.method public abstract onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

###### Class com.google.android.gms.common.internal.BaseGmsClient.LegacyClientCallbackAdapter (com.google.android.gms.common.internal.BaseGmsClient$LegacyClientCallbackAdapter)
.class public Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LegacyClientCallbackAdapter"
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getScopes()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$LegacyClientCallbackAdapter;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzp()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_20
    return-void
.end method

###### Class com.google.android.gms.common.internal.BaseGmsClient.SignOutCallbacks (com.google.android.gms.common.internal.BaseGmsClient$SignOutCallbacks)
.class public interface abstract Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SignOutCallbacks"
.end annotation


# virtual methods
.method public abstract onSignOutComplete()V
.end method
