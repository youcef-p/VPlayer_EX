###### Class com.google.android.play.integrity.internal.w (com.google.android.play.integrity.internal.w)
.class final Lcom/google/android/play/integrity/internal/w;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic b:Lcom/google/android/play/integrity/internal/t;

.field final synthetic c:Lcom/google/android/play/integrity/internal/ae;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ae;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/t;)V
    .registers 5

    .line 1
    iput-object p3, p0, Lcom/google/android/play/integrity/internal/w;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/play/integrity/internal/w;->b:Lcom/google/android/play/integrity/internal/t;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/w;->c:Lcom/google/android/play/integrity/internal/ae;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/t;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/w;->c:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->h(Lcom/google/android/play/integrity/internal/ae;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/google/android/play/integrity/internal/w;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v2}, Lcom/google/android/play/integrity/internal/ae;->p(Lcom/google/android/play/integrity/internal/ae;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->j(Lcom/google/android/play/integrity/internal/ae;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-lez v2, :cond_22

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->f(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v2

    const-string v3, "Already connected to the service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_22
    iget-object v2, p0, Lcom/google/android/play/integrity/internal/w;->b:Lcom/google/android/play/integrity/internal/t;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/play/integrity/internal/ae;->r(Lcom/google/android/play/integrity/internal/ae;Lcom/google/android/play/integrity/internal/t;)V

    .line 5
    monitor-exit v1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v0
.end method
