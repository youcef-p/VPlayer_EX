###### Class com.google.android.play.core.integrity.bl (com.google.android.play.core.integrity.bl)
.class final Lcom/google/android/play/core/integrity/bl;
.super Lcom/google/android/play/core/integrity/br;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic f:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;JJLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 10

    .line 1
    iput p3, p0, Lcom/google/android/play/core/integrity/bl;->a:I

    iput-object p4, p0, Lcom/google/android/play/core/integrity/bl;->b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    iput-wide p5, p0, Lcom/google/android/play/core/integrity/bl;->c:J

    iput-wide p7, p0, Lcom/google/android/play/core/integrity/bl;->d:J

    iput-object p9, p0, Lcom/google/android/play/core/integrity/bl;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bl;->f:Lcom/google/android/play/core/integrity/bs;

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/br;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bl;->f:Lcom/google/android/play/core/integrity/bs;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->m(Lcom/google/android/play/core/integrity/bs;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_14

    .line 2
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v1, -0x2

    .line 3
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 2
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/br;->a(Ljava/lang/Exception;)V

    return-void

    :cond_14
    iget v6, p0, Lcom/google/android/play/core/integrity/bl;->a:I

    .line 4
    invoke-static {v0, v6}, Lcom/google/android/play/core/integrity/bs;->l(Lcom/google/android/play/core/integrity/bs;I)Z

    move-result v1

    if-nez v1, :cond_67

    :try_start_1c
    iget-object v1, v0, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v1

    .line 5
    move-object v8, v1

    check-cast v8, Lcom/google/android/play/integrity/internal/i;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bl;->b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    iget-wide v2, p0, Lcom/google/android/play/core/integrity/bl;->c:J

    iget-wide v4, p0, Lcom/google/android/play/core/integrity/bl;->d:J

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/google/android/play/core/integrity/bs;->a(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;JJI)Landroid/os/Bundle;

    move-result-object v1

    new-instance v4, Lcom/google/android/play/core/integrity/bp;

    iget-object v5, p0, Lcom/google/android/play/core/integrity/bl;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4, v0, v5, v2, v3}, Lcom/google/android/play/core/integrity/bp;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;J)V

    .line 7
    invoke-interface {v8, v1, v4}, Lcom/google/android/play/integrity/internal/i;->d(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/k;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bl;->f:Lcom/google/android/play/core/integrity/bs;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/bl;->b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bs;->j(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    .line 8
    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->requestHash()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->verdictOptOut()Ljava/util/Set;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/play/core/integrity/bl;->c:J

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "requestExpressIntegrityToken(%s, %s, %s)"

    .line 11
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bl;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 12
    new-instance v2, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v3, -0x64

    .line 13
    invoke-direct {v2, v3, v7, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    .line 14
    :cond_67
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v1, -0xe

    .line 15
    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 14
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/br;->a(Ljava/lang/Exception;)V

    return-void
.end method
