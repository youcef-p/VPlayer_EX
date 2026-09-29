###### Class com.google.android.play.core.integrity.aq (com.google.android.play.core.integrity.aq)
.class final Lcom/google/android/play/core/integrity/aq;
.super Lcom/google/android/play/integrity/internal/o;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/integrity/ar;

.field private final b:Lcom/google/android/play/integrity/internal/s;

.field private final c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/ar;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/aq;->a:Lcom/google/android/play/core/integrity/ar;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/o;-><init>()V

    new-instance p1, Lcom/google/android/play/integrity/internal/s;

    const-string v0, "OnRequestIntegrityTokenCallback"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/aq;->b:Lcom/google/android/play/integrity/internal/s;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/aq;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/aq;->a:Lcom/google/android/play/core/integrity/ar;

    iget-object v1, v0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/aq;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v2}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v1, p0, Lcom/google/android/play/core/integrity/aq;->b:Lcom/google/android/play/integrity/internal/s;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 2
    const-string v5, "onRequestIntegrityToken"

    invoke-virtual {v1, v5, v4}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v0}, Lcom/google/android/play/core/integrity/ar;->e(Lcom/google/android/play/core/integrity/ar;)Lcom/google/android/play/core/integrity/t;

    move-result-object v1

    .line 3
    invoke-interface {v1, p1}, Lcom/google/android/play/core/integrity/t;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_21
    const-string v1, "token"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_35

    .line 6
    new-instance p1, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v0, -0x64

    const/4 v1, 0x0

    .line 7
    invoke-direct {p1, v0, v3, v1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_35
    const-string v3, "request.token.sid"

    .line 8
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance p1, Lcom/google/android/play/core/integrity/ap;

    invoke-static {v0}, Lcom/google/android/play/core/integrity/ar;->h(Lcom/google/android/play/core/integrity/ar;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p1, p0, v0, v3, v4}, Lcom/google/android/play/core/integrity/ap;-><init>(Lcom/google/android/play/core/integrity/aq;Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/play/core/integrity/a;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/a;-><init>()V

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/integrity/au;->c(Ljava/lang/String;)Lcom/google/android/play/core/integrity/au;

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/integrity/au;->a(Lcom/google/android/play/core/integrity/ag;)Lcom/google/android/play/core/integrity/au;

    .line 12
    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/core/integrity/au;->b(J)Lcom/google/android/play/core/integrity/au;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/play/core/integrity/au;->d()Lcom/google/android/play/core/integrity/av;

    move-result-object p1

    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
