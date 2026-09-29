###### Class com.google.android.play.integrity.internal.x (com.google.android.play.integrity.internal.x)
.class final Lcom/google/android/play/integrity/internal/x;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/integrity/internal/ae;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ae;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/x;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/x;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->h(Lcom/google/android/play/integrity/internal/ae;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->j(Lcom/google/android/play/integrity/internal/ae;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_29

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->j(Lcom/google/android/play/integrity/internal/ae;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-lez v2, :cond_29

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->f(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v0

    const-string v2, "Leaving the connection open for other ongoing calls."

    new-array v3, v3, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 10
    monitor-exit v1

    return-void

    :cond_29
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->d(Lcom/google/android/play/integrity/internal/ae;)Landroid/os/IInterface;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->f(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v2

    const-string v4, "Unbind from service."

    new-array v5, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v2, v4, v5}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->a(Lcom/google/android/play/integrity/internal/ae;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->b(Lcom/google/android/play/integrity/internal/ae;)Landroid/content/ServiceConnection;

    move-result-object v4

    .line 3
    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/play/integrity/internal/ae;->n(Lcom/google/android/play/integrity/internal/ae;Z)V

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/play/integrity/internal/ae;->o(Lcom/google/android/play/integrity/internal/ae;Landroid/os/IInterface;)V

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/play/integrity/internal/ae;->m(Lcom/google/android/play/integrity/internal/ae;Landroid/content/ServiceConnection;)V

    .line 7
    :cond_4f
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->q(Lcom/google/android/play/integrity/internal/ae;)V

    .line 8
    monitor-exit v1

    return-void

    :catchall_54
    move-exception v0

    monitor-exit v1
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v0
.end method
