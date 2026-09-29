###### Class com.google.android.gms.common.api.internal.zabd (com.google.android.gms.common.api.internal.zabd)
.class public final Lcom/google/android/gms/common/api/internal/zabd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabu;
.implements Lcom/google/android/gms/common/api/internal/zat;


# instance fields
.field final zaa:Ljava/util/Map;

.field final zab:Ljava/util/Map;

.field final zac:Lcom/google/android/gms/common/internal/ClientSettings;

.field final zad:Ljava/util/Map;

.field final zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

.field zaf:I

.field final zag:Lcom/google/android/gms/common/api/internal/zaaz;

.field final zah:Lcom/google/android/gms/common/api/internal/zabt;

.field private final zai:Ljava/util/concurrent/locks/Lock;

.field private final zaj:Ljava/util/concurrent/locks/Condition;

.field private final zak:Landroid/content/Context;

.field private final zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

.field private final zam:Lcom/google/android/gms/common/api/internal/zabc;

.field private volatile zan:Lcom/google/android/gms/common/api/internal/zaba;

.field private zao:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaaz;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabt;)V
    .registers 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    invoke-interface {p10}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_24
    if-ge p2, p1, :cond_32

    invoke-interface {p10, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .line 2
    check-cast p5, Lcom/google/android/gms/common/api/internal/zas;

    .line 3
    invoke-virtual {p5, p0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/zat;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    :cond_32
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabc;

    .line 4
    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    .line 5
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zaas;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zaf(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zah(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaba;->zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 2
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 4
    throw p1
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zak()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zaba;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final zad(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_2a
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zae()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zae()V

    return-void
.end method

.method public final zaf()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_3

    .line 5
    :catch_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 6
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0

    .line 2
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v0, :cond_28

    .line 3
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2d

    return-object v0

    .line 4
    :cond_2d
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final zag(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabd;->zae()V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :goto_7
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of p3, p3, Lcom/google/android/gms/common/api/internal/zaar;

    const/4 v0, 0x0

    if-eqz p3, :cond_35

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_1f

    .line 6
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabd;->zah()V

    .line 7
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    :cond_1f
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 3
    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_7

    .line 8
    :catch_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 9
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 3
    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of p1, p1, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz p1, :cond_3e

    .line 4
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_3e
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_43

    return-object p1

    .line 5
    :cond_43
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public final zah()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zad()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public final zai()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    return v0
.end method

.method public final zaj()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaar;

    return v0
.end method

.method public final zak(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final zal()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaag;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaag;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaag;->zai()V

    :cond_d
    return-void
.end method

.method public final zam()V
    .registers 1

    return-void
.end method

.method public final zan(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaa:Ljava/util/Map;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zac()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {v2, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$Client;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1c

    :cond_59
    return-void
.end method

.method final zao()V
    .registers 9

    .line 1
    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaar;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabd;->zac:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabd;->zad:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabd;->zal:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabd;->zae:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabd;->zak:Landroid/content/Context;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_29

    move-object v1, p0

    .line 2
    :try_start_12
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/api/internal/zaar;-><init>(Lcom/google/android/gms/common/api/internal/zabd;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_27

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_27
    move-exception v0

    goto :goto_2b

    :catchall_29
    move-exception v0

    move-object v1, p0

    .line 4
    :goto_2b
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method final zap()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaz;->zad()Z

    new-instance v0, Lcom/google/android/gms/common/api/internal/zaag;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaag;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 6
    throw v0
.end method

.method final zaq(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zao:Lcom/google/android/gms/common/ConnectionResult;

    new-instance p1, Lcom/google/android/gms/common/api/internal/zaas;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaas;-><init>(Lcom/google/android/gms/common/api/internal/zabd;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zaba;->zaa()V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zaj:Ljava/util/concurrent/locks/Condition;

    .line 3
    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 5
    throw p1
.end method

.method final zar(Lcom/google/android/gms/common/api/internal/zabb;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabc;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zas(Ljava/lang/RuntimeException;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zam:Lcom/google/android/gms/common/api/internal/zabc;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabc;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final synthetic zat()Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zai:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method final synthetic zau()Lcom/google/android/gms/common/api/internal/zaba;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabd;->zan:Lcom/google/android/gms/common/api/internal/zaba;

    return-object v0
.end method
