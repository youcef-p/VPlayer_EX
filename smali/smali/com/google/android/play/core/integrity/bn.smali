###### Class com.google.android.play.core.integrity.bn (com.google.android.play.core.integrity.bn)
.class Lcom/google/android/play/core/integrity/bn;
.super Lcom/google/android/play/integrity/internal/j;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic b:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bn;->b:Lcom/google/android/play/core/integrity/bs;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/j;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/bn;->b:Lcom/google/android/play/core/integrity/bs;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/bn;->b:Lcom/google/android/play/core/integrity/bs;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/bn;->b:Lcom/google/android/play/core/integrity/bs;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public e(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/bn;->b:Lcom/google/android/play/core/integrity/bs;

    iget-object p1, p1, Lcom/google/android/play/core/integrity/bs;->a:Lcom/google/android/play/integrity/internal/ae;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
