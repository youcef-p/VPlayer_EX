###### Class com.google.android.play.core.integrity.bk (com.google.android.play.core.integrity.bk)
.class final Lcom/google/android/play/core/integrity/bk;
.super Lcom/google/android/play/core/integrity/br;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic d:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;IJLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 7

    .line 1
    iput p3, p0, Lcom/google/android/play/core/integrity/bk;->a:I

    iput-wide p4, p0, Lcom/google/android/play/core/integrity/bk;->b:J

    iput-object p6, p0, Lcom/google/android/play/core/integrity/bk;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bk;->d:Lcom/google/android/play/core/integrity/bs;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/br;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bk;->d:Lcom/google/android/play/core/integrity/bs;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->m(Lcom/google/android/play/core/integrity/bs;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    .line 2
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, -0x2

    .line 3
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 2
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/br;->a(Ljava/lang/Exception;)V

    return-void

    :cond_14
    iget v1, p0, Lcom/google/android/play/core/integrity/bk;->a:I

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/integrity/bs;->l(Lcom/google/android/play/core/integrity/bs;I)Z

    move-result v4

    if-nez v4, :cond_58

    :try_start_1c
    iget-object v2, v0, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v2}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/google/android/play/integrity/internal/i;

    iget-wide v4, p0, Lcom/google/android/play/core/integrity/bk;->b:J

    .line 6
    invoke-static {v0, v4, v5, v1}, Lcom/google/android/play/core/integrity/bs;->b(Lcom/google/android/play/core/integrity/bs;JI)Landroid/os/Bundle;

    move-result-object v1

    new-instance v4, Lcom/google/android/play/core/integrity/bq;

    iget-object v5, p0, Lcom/google/android/play/core/integrity/bk;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4, v0, v5}, Lcom/google/android/play/core/integrity/bq;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-interface {v2, v1, v4}, Lcom/google/android/play/integrity/internal/i;->e(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/k;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bk;->d:Lcom/google/android/play/core/integrity/bs;

    iget-wide v4, p0, Lcom/google/android/play/core/integrity/bk;->b:J

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bs;->j(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "warmUpIntegrityToken(%s)"

    invoke-virtual {v1, v0, v4, v2}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bk;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 9
    new-instance v2, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v4, -0x64

    .line 10
    invoke-direct {v2, v4, v3, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    .line 11
    :cond_58
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v1, -0xe

    .line 12
    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 11
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/br;->a(Ljava/lang/Exception;)V

    return-void
.end method
