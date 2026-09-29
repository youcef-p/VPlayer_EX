###### Class com.google.android.play.core.integrity.bm (com.google.android.play.core.integrity.bm)
.class final Lcom/google/android/play/core/integrity/bm;
.super Lcom/google/android/play/core/integrity/br;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/os/Bundle;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 7

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/integrity/bm;->a:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/bm;->b:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/bm;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput p6, p0, Lcom/google/android/play/core/integrity/bm;->d:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bm;->e:Lcom/google/android/play/core/integrity/bs;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/br;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bm;->e:Lcom/google/android/play/core/integrity/bs;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->m(Lcom/google/android/play/core/integrity/bs;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_46

    :try_start_9
    iget-object v1, v0, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v3

    .line 2
    check-cast v3, Lcom/google/android/play/integrity/internal/i;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/bm;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->i(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/play/core/integrity/ay;

    move-result-object v0

    iget-object v5, p0, Lcom/google/android/play/core/integrity/bm;->b:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/play/core/integrity/bm;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 3
    invoke-virtual {v0, v5, v6, v1}, Lcom/google/android/play/core/integrity/ay;->a(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/core/integrity/ax;

    move-result-object v0

    .line 4
    invoke-interface {v3, v4, v0}, Lcom/google/android/play/integrity/internal/i;->c(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/r;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bm;->e:Lcom/google/android/play/core/integrity/bs;

    iget v3, p0, Lcom/google/android/play/core/integrity/bm;->d:I

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bs;->j(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "requestAndShowDialog(%s)"

    invoke-virtual {v1, v0, v4, v3}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bm;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    new-instance v3, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v4, -0x64

    .line 7
    invoke-direct {v3, v4, v2, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    .line 8
    :cond_46
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 8
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/br;->a(Ljava/lang/Exception;)V

    return-void
.end method
