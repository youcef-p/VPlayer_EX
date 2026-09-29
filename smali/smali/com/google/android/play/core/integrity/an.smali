###### Class com.google.android.play.core.integrity.an (com.google.android.play.core.integrity.an)
.class final Lcom/google/android/play/core/integrity/an;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

.field final synthetic e:Lcom/google/android/play/core/integrity/ar;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ar;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V
    .registers 7

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/integrity/an;->a:[B

    iput-object p4, p0, Lcom/google/android/play/core/integrity/an;->b:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/an;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p6, p0, Lcom/google/android/play/core/integrity/an;->d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/an;->e:Lcom/google/android/play/core/integrity/ar;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/t;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/play/integrity/internal/af;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v1, -0x9

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 1
    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/t;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/play/integrity/internal/t;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final b()V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/an;->e:Lcom/google/android/play/core/integrity/ar;

    iget-object v1, v0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-virtual {v1}, Lcom/google/android/play/integrity/internal/ae;->e()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/integrity/internal/n;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/an;->a:[B

    iget-object v3, p0, Lcom/google/android/play/core/integrity/an;->b:Ljava/lang/Long;

    .line 2
    invoke-static {v0, v2, v3}, Lcom/google/android/play/core/integrity/ar;->a(Lcom/google/android/play/core/integrity/ar;[BLjava/lang/Long;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/integrity/aq;

    iget-object v4, p0, Lcom/google/android/play/core/integrity/an;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3, v0, v4}, Lcom/google/android/play/core/integrity/aq;-><init>(Lcom/google/android/play/core/integrity/ar;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v1, v2, v3}, Lcom/google/android/play/integrity/internal/n;->d(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/p;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/integrity/an;->e:Lcom/google/android/play/core/integrity/ar;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/an;->d:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/ar;->g(Lcom/google/android/play/core/integrity/ar;)Lcom/google/android/play/integrity/internal/s;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "requestIntegrityToken(%s)"

    .line 4
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/s;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/an;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    new-instance v2, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v3, -0x64

    const/4 v4, 0x0

    .line 6
    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
