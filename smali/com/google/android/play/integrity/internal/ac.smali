###### Class com.google.android.play.integrity.internal.ac (com.google.android.play.integrity.internal.ac)
.class final Lcom/google/android/play/integrity/internal/ac;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/play/integrity/internal/ae;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/integrity/internal/ae;Lcom/google/android/play/integrity/internal/ad;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/ac;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ac;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->f(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/play/integrity/internal/aa;

    .line 2
    invoke-direct {p1, p0, p2}, Lcom/google/android/play/integrity/internal/aa;-><init>(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IBinder;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ae;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ac;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->f(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/play/integrity/internal/ab;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/android/play/integrity/internal/ab;-><init>(Lcom/google/android/play/integrity/internal/ac;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ae;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
