###### Class com.google.android.gms.common.internal.zzr (com.google.android.gms.common.internal.zzr)
.class final Lcom/google/android/gms/common/internal/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzt;

.field private final zzb:Ljava/util/Map;

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Landroid/os/IBinder;

.field private final zzg:Lcom/google/android/gms/common/internal/zzo;

.field private zzh:Landroid/content/ComponentName;

.field private zzi:Lcom/google/android/gms/common/internal/zzp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzt;Lcom/google/android/gms/common/internal/zzo;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void
.end method

.method private final zzu(Ljava/util/List;ILandroid/content/ComponentName;)V
    .registers 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_17
    iget v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    if-eq v2, p2, :cond_1d

    .line 5
    monitor-exit v1

    return-void

    :cond_1d
    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 3
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_38

    if-ne v2, v3, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-interface {v0, p3}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_4

    :catchall_38
    move-exception p1

    .line 3
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzr;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8f

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_e
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zzt;->zzg(Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    iput v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 5
    :cond_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_8c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_56
    if-ge v3, v1, :cond_8b

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_65
    iget v6, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    if-eq v6, v0, :cond_6b

    .line 10
    monitor-exit v5

    return-void

    :cond_6b
    iget-object v6, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 8
    monitor-exit v5
    :try_end_7a
    .catchall {:try_start_65 .. :try_end_7a} :catchall_88

    if-ne v6, v7, :cond_85

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-interface {v4, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :catchall_88
    move-exception p1

    .line 8
    :try_start_89
    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p1

    :cond_8b
    return-void

    :catchall_8c
    move-exception p1

    .line 5
    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p1

    .line 9
    :cond_8f
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 11
    :try_start_96
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    .line 13
    invoke-interface {v3, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_ad

    :cond_bd
    iput v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 14
    monitor-exit v1

    return-void

    :catchall_c1
    move-exception p1

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_96 .. :try_end_c3} :catchall_c1

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_5a

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_10
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zzt;->zzg(Lcom/google/android/gms/common/internal/zzr;)V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    iput v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ServiceConnection;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ServiceConnection;

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 5
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_57

    .line 6
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/gms/common/internal/zzr;->zzu(Ljava/util/List;ILandroid/content/ComponentName;)V

    return-void

    :catchall_57
    move-exception p1

    .line 5
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p1

    .line 6
    :cond_5a
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 7
    :try_start_61
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    .line 9
    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_78

    :cond_88
    iput v2, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 10
    monitor-exit v1

    return-void

    :catchall_8c
    move-exception p1

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_61 .. :try_end_8e} :catchall_8c

    throw p1
.end method

.method final synthetic zza(Ljava/util/List;ILandroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzr;->zzu(Ljava/util/List;ILandroid/content/ComponentName;)V

    return-void
.end method

.method final synthetic zzb(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzam;->zza(Landroid/content/Context;Lcom/google/android/gms/common/internal/zzo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/zzak; {:try_start_0 .. :try_end_c} :catch_8b

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zze;->zza()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_84

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    .line 3
    :try_start_24
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILjava/util/concurrent/Executor;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    if-eqz p1, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_50

    new-instance p1, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {p1, v9, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzo;Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzl()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_63

    .line 4
    :cond_50
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzl()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    :goto_63
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_65
    .catchall {:try_start_24 .. :try_end_65} :catchall_82

    .line 8
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p1

    :cond_69
    const/4 p1, 0x2

    .line 5
    :try_start_6a
    iput p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzd:I
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_82

    :try_start_6c
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6c .. :try_end_77} :catch_77
    .catchall {:try_start_6c .. :try_end_77} :catchall_82

    :catch_77
    :try_start_77
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_82

    .line 8
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_90

    :catchall_82
    move-exception v0

    goto :goto_86

    :catchall_84
    move-exception v0

    move-object v6, p0

    :goto_86
    move-object p1, v0

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 10
    throw p1

    :catch_8b
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzak;->zza:Lcom/google/android/gms/common/ConnectionResult;

    :goto_90
    return-object p1
.end method

.method final synthetic zzc(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 13

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzam;->zza(Landroid/content/Context;Lcom/google/android/gms/common/internal/zzo;)Landroid/content/Intent;

    move-result-object v5
    :try_end_c
    .catch Lcom/google/android/gms/common/internal/zzak; {:try_start_0 .. :try_end_c} :catch_91

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/zze;->zza()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object v3

    iget-object v9, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_8a

    const/16 v7, 0x1081

    move-object v6, p0

    move-object v4, p1

    move-object v8, p2

    .line 3
    :try_start_24
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/stats/ConnectionTracker;->zzb(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, v6, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    if-eqz p1, :cond_69

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_50

    new-instance p1, Lcom/google/android/gms/common/internal/zzp;

    invoke-direct {p1, v9, p0}, Lcom/google/android/gms/common/internal/zzp;-><init>(Lcom/google/android/gms/common/internal/zzo;Lcom/google/android/gms/common/internal/zzr;)V

    iput-object p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, v6, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzl()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_63

    .line 4
    :cond_50
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzl()J

    move-result-wide v2

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7
    :goto_63
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_65
    .catchall {:try_start_24 .. :try_end_65} :catchall_88

    .line 8
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-object p1

    :cond_69
    const/4 p1, 0x2

    .line 5
    :try_start_6a
    iput p1, v6, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result p1
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_88

    if-eqz p1, :cond_7d

    :try_start_72
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzk()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_72 .. :try_end_7d} :catch_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_88

    :catch_7d
    :cond_7d
    :try_start_7d
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V
    :try_end_84
    .catchall {:try_start_7d .. :try_end_84} :catchall_88

    .line 8
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_96

    :catchall_88
    move-exception v0

    goto :goto_8c

    :catchall_8a
    move-exception v0

    move-object v6, p0

    :goto_8c
    move-object p1, v0

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 10
    throw p1

    :catch_91
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 8
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzak;->zza:Lcom/google/android/gms/common/ConnectionResult;

    :goto_96
    return-object p1
.end method

.method final synthetic zzd(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzt;->zzm()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/zzt;->zzg(Lcom/google/android/gms/common/internal/zzr;)V

    .line 2
    monitor-exit v0

    goto :goto_21

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1

    .line 4
    :cond_15
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzg:Lcom/google/android/gms/common/internal/zzo;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzt;->zzj()Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :goto_21
    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2
    :try_start_23
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzr;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzk()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzt;->zzi()Landroid/content/Context;

    move-result-object v1

    .line 4
    invoke-virtual {v2, v1, p0}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_35

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void

    :catchall_35
    move-exception v1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    .line 5
    throw v1
.end method

.method final synthetic zze(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 4

    .line 1
    new-instance p3, Lcom/google/android/gms/common/internal/zzq;

    invoke-direct {p3, p2}, Lcom/google/android/gms/common/internal/zzq;-><init>(Landroid/content/ServiceConnection;)V

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzf(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final synthetic zzg()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/zzr;->zze:Z

    return v0
.end method

.method final synthetic zzh()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return v0
.end method

.method final synthetic zzi(Landroid/content/ServiceConnection;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final synthetic zzj()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final synthetic zzk()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    return-object v0
.end method

.method final synthetic zzl()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    return-object v0
.end method

.method final synthetic zzm()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzb:Ljava/util/Map;

    return-object v0
.end method

.method final synthetic zzn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    return v0
.end method

.method final synthetic zzo(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzc:I

    return-void
.end method

.method final synthetic zzp(I)V
    .registers 2

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzd:I

    return-void
.end method

.method final synthetic zzq(Landroid/os/IBinder;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzf:Landroid/os/IBinder;

    return-void
.end method

.method final synthetic zzr(Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzh:Landroid/content/ComponentName;

    return-void
.end method

.method final synthetic zzs()Lcom/google/android/gms/common/internal/zzp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    return-object v0
.end method

.method final synthetic zzt(Lcom/google/android/gms/common/internal/zzp;)V
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzr;->zzi:Lcom/google/android/gms/common/internal/zzp;

    return-void
.end method
