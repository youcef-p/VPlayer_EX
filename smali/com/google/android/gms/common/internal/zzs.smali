###### Class com.google.android.gms.common.internal.zzs (com.google.android.gms.common.internal.zzs)
.class final Lcom/google/android/gms/common/internal/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/zzt;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/zzt;[B)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_137

    if-eq v0, v1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 2
    :try_start_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/google/android/gms/common/internal/zzp;
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_134

    const-string v4, "Timeout waiting for ServiceConnection callback "

    const/4 v5, 0x3

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_ce

    .line 3
    :try_start_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzp;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzp;->zza:Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v8

    .line 5
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/internal/zzr;

    if-eqz v8, :cond_12b

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzp;->zzb:Lcom/google/android/gms/common/internal/zzr;

    if-ne v8, p1, :cond_12b

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzh()I

    move-result p1

    if-ne p1, v5, :cond_12b

    const-string p1, "GmsClientSupervisor"

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzl()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_64

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzo;->zzc()Landroid/content/ComponentName;

    move-result-object p1

    :cond_64
    if-nez p1, :cond_77

    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzo;->zzb()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    const-string v4, "unknown"

    invoke-direct {p1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_77
    invoke-virtual {v0, v8}, Lcom/google/android/gms/common/internal/zzt;->zzg(Lcom/google/android/gms/common/internal/zzr;)V

    .line 10
    invoke-virtual {v8, v7}, Lcom/google/android/gms/common/internal/zzr;->zzq(Landroid/os/IBinder;)V

    .line 11
    invoke-virtual {v8, p1}, Lcom/google/android/gms/common/internal/zzr;->zzr(Landroid/content/ComponentName;)V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {v8, v0}, Lcom/google/android/gms/common/internal/zzr;->zzp(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzn()I

    move-result v0

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {v8, v0}, Lcom/google/android/gms/common/internal/zzr;->zzo(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzn()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzm()Ljava/util/Map;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/common/internal/zzr;->zzm()Ljava/util/Map;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ServiceConnection;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-direct {v4, v5, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a9

    :cond_ca
    move-object v0, p1

    move-object p1, v7

    move-object v7, v8

    goto :goto_12d

    .line 18
    :cond_ce
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzr;

    if-eqz v0, :cond_12b

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzr;->zzh()I

    move-result v3

    if-ne v3, v5, :cond_12b

    const-string v3, "GmsClientSupervisor"

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzr;->zzl()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_115

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zzc()Landroid/content/ComponentName;

    move-result-object v3

    :cond_115
    if-nez v3, :cond_128

    new-instance v3, Landroid/content/ComponentName;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzo;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const-string v4, "unknown"

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_128
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/zzr;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_12b
    move-object p1, v7

    move-object v0, p1

    .line 24
    :goto_12d
    monitor-exit v2
    :try_end_12e
    .catchall {:try_start_1b .. :try_end_12e} :catchall_134

    if-eqz v7, :cond_133

    .line 25
    invoke-virtual {v7, p1, v6, v0}, Lcom/google/android/gms/common/internal/zzr;->zza(Ljava/util/List;ILandroid/content/ComponentName;)V

    :cond_133
    return v1

    :catchall_134
    move-exception p1

    .line 24
    :try_start_135
    monitor-exit v2
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_134

    throw p1

    .line 1
    :cond_137
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzs;->zza:Lcom/google/android/gms/common/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 26
    :try_start_13e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v3

    .line 27
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzr;

    if-eqz v3, :cond_166

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzr;->zzj()Z

    move-result v4

    if-eqz v4, :cond_166

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzr;->zzg()Z

    move-result v4

    if-eqz v4, :cond_15f

    const-string v4, "GmsClientSupervisor"

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/internal/zzr;->zzd(Ljava/lang/String;)V

    :cond_15f
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzt;->zzh()Ljava/util/HashMap;

    move-result-object v0

    .line 30
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_166
    monitor-exit v2

    return v1

    :catchall_168
    move-exception p1

    monitor-exit v2
    :try_end_16a
    .catchall {:try_start_13e .. :try_end_16a} :catchall_168

    throw p1
.end method
