###### Class com.android.billingclient.api.zzet (com.android.billingclient.api.zzet)
.class final Lcom/android/billingclient/api/zzet;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# direct methods
.method static declared-synchronized zza(Landroid/content/Context;)D
    .registers 5

    const-class v0, Lcom/android/billingclient/api/zzet;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/android/billingclient/api/zzer;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzer;-><init>(Landroid/content/Context;)V

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/billingclient/api/zzet;->zze(Lcom/android/billingclient/api/zzes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-wide v1

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static declared-synchronized zzb(Landroid/content/Context;)J
    .registers 5

    const-class v0, Lcom/android/billingclient/api/zzet;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/android/billingclient/api/zzeq;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzeq;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/billingclient/api/zzet;->zze(Lcom/android/billingclient/api/zzes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-wide v1

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static declared-synchronized zzc(Landroid/content/Context;)J
    .registers 5

    const-class v0, Lcom/android/billingclient/api/zzet;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/android/billingclient/api/zzeo;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzeo;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/billingclient/api/zzet;->zze(Lcom/android/billingclient/api/zzes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-wide v1

    :catchall_1a
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static declared-synchronized zzd(Landroid/content/Context;)J
    .registers 5

    const-class v0, Lcom/android/billingclient/api/zzet;

    monitor-enter v0

    .line 1
    :try_start_3
    new-instance v1, Lcom/android/billingclient/api/zzep;

    invoke-direct {v1, p0}, Lcom/android/billingclient/api/zzep;-><init>(Landroid/content/Context;)V

    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/billingclient/api/zzet;->zze(Lcom/android/billingclient/api/zzes;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v0

    return-wide v1

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method private static zze(Lcom/android/billingclient/api/zzes;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/android/billingclient/api/zzes;->zza()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "Fail to get the runtime flags: "

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "RuntimeFlags"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

###### Class com.android.billingclient.api.zzeo (com.android.billingclient.api.zzeo)
.class public final synthetic Lcom/android/billingclient/api/zzeo;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/zzes;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    const-wide/16 v0, 0x64

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.android.billingclient.api.zzep (com.android.billingclient.api.zzep)
.class public final synthetic Lcom/android/billingclient/api/zzep;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/zzes;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    const-wide/32 v0, 0xea60

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.android.billingclient.api.zzeq (com.android.billingclient.api.zzeq)
.class public final synthetic Lcom/android/billingclient/api/zzeq;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/zzes;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    const-wide/16 v0, 0x3

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

###### Class com.android.billingclient.api.zzer (com.android.billingclient.api.zzer)
.class public final synthetic Lcom/android/billingclient/api/zzer;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Lcom/android/billingclient/api/zzes;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
