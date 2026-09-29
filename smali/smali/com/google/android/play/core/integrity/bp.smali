###### Class com.google.android.play.core.integrity.bp (com.google.android.play.core.integrity.bp)
.class final Lcom/google/android/play/core/integrity/bp;
.super Lcom/google/android/play/core/integrity/bn;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic c:Lcom/google/android/play/core/integrity/bs;

.field private final d:Lcom/google/android/play/integrity/internal/s;

.field private final e:J


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;J)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bp;->c:Lcom/google/android/play/core/integrity/bs;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/bn;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance p1, Lcom/google/android/play/integrity/internal/s;

    const-string p2, "OnRequestIntegrityTokenCallback"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bp;->d:Lcom/google/android/play/integrity/internal/s;

    iput-wide p3, p0, Lcom/google/android/play/core/integrity/bp;->e:J

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/play/core/integrity/bp;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/integrity/bp;->e:J

    return-wide v0
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/integrity/bn;->c(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bp;->d:Lcom/google/android/play/integrity/internal/s;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    const-string v2, "onRequestExpressIntegrityToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bp;->c:Lcom/google/android/play/core/integrity/bs;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->h(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/play/core/integrity/t;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/play/core/integrity/t;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object p1, p0, Lcom/google/android/play/core/integrity/bp;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_1f
    const-string v1, "request.token.sid"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lcom/google/android/play/core/integrity/bo;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->k(Lcom/google/android/play/core/integrity/bs;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/android/play/core/integrity/bo;-><init>(Lcom/google/android/play/core/integrity/bp;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bp;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v4, Lcom/google/android/play/core/integrity/b;

    invoke-direct {v4}, Lcom/google/android/play/core/integrity/b;-><init>()V

    const-string v5, "token"

    .line 7
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/android/play/core/integrity/bv;->c(Ljava/lang/String;)Lcom/google/android/play/core/integrity/bv;

    .line 8
    invoke-virtual {v4, v3}, Lcom/google/android/play/core/integrity/bv;->a(Lcom/google/android/play/core/integrity/ag;)Lcom/google/android/play/core/integrity/bv;

    .line 9
    invoke-virtual {v4, v1, v2}, Lcom/google/android/play/core/integrity/bv;->b(J)Lcom/google/android/play/core/integrity/bv;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/play/core/integrity/bv;->d()Lcom/google/android/play/core/integrity/bw;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
