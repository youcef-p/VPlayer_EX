###### Class com.google.android.gms.common.images.zac (com.google.android.gms.common.images.zac)
.class final Lcom/google/android/gms/common/images/zac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/images/ImageManager;

.field private final zab:Landroid/net/Uri;

.field private final zac:Landroid/graphics/Bitmap;

.field private final zad:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    iput-object p3, p0, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/google/android/gms/common/images/zac;->zad:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .line 1
    const-string v0, "OnBitmapLoadedRunnable must be executed in the main thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Asserts;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/images/zac;->zaa:Lcom/google/android/gms/common/images/ImageManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zai()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/images/zac;->zab:Landroid/net/Uri;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;->zad()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1f
    if-ge v5, v3, :cond_5b

    .line 4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/common/images/zag;

    iget-object v7, p0, Lcom/google/android/gms/common/images/zac;->zac:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_33

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zad()Landroid/content/Context;

    move-result-object v8

    .line 7
    invoke-virtual {v6, v8, v7, v4}, Lcom/google/android/gms/common/images/zag;->zab(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    goto :goto_4d

    .line 5
    :cond_33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zaj()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zag()Lcom/google/android/gms/internal/base/zaj;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zad()Landroid/content/Context;

    move-result-object v8

    .line 6
    invoke-virtual {v6, v8, v7, v4}, Lcom/google/android/gms/common/images/zag;->zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zaj;Z)V

    .line 7
    :goto_4d
    instance-of v7, v6, Lcom/google/android/gms/common/images/zaf;

    if-nez v7, :cond_58

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/ImageManager;->zah()Ljava/util/Map;

    move-result-object v7

    .line 8
    invoke-interface {v7, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 6
    :cond_5b
    iget-object v0, p0, Lcom/google/android/gms/common/images/zac;->zad:Ljava/util/concurrent/CountDownLatch;

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zab()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_65
    invoke-static {}, Lcom/google/android/gms/common/images/ImageManager;->zac()Ljava/util/HashSet;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_6e

    throw v1
.end method
