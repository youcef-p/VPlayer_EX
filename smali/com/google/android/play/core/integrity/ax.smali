###### Class com.google.android.play.core.integrity.ax (com.google.android.play.core.integrity.ax)
.class final Lcom/google/android/play/core/integrity/ax;
.super Lcom/google/android/play/integrity/internal/q;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final b:Lcom/google/android/play/integrity/internal/ae;

.field private final c:Lcom/google/android/play/integrity/internal/s;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/android/play/core/integrity/t;

.field private final f:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/t;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/ae;)V
    .registers 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/q;-><init>()V

    new-instance v0, Lcom/google/android/play/integrity/internal/s;

    const-string v1, "RequestDialogCallbackImpl"

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/integrity/ax;->c:Lcom/google/android/play/integrity/internal/s;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ax;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ax;->e:Lcom/google/android/play/core/integrity/t;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/ax;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/ax;->f:Landroid/app/Activity;

    iput-object p5, p0, Lcom/google/android/play/core/integrity/ax;->b:Lcom/google/android/play/integrity/internal/ae;

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ax;->b:Lcom/google/android/play/integrity/internal/ae;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ax;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->v(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, p0, Lcom/google/android/play/core/integrity/ax;->d:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/play/core/integrity/ax;->c:Lcom/google/android/play/integrity/internal/s;

    const-string v5, "onRequestDialog(%s)"

    .line 2
    invoke-virtual {v4, v5, v3}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, p0, Lcom/google/android/play/core/integrity/ax;->e:Lcom/google/android/play/core/integrity/t;

    .line 3
    invoke-interface {v3, p1}, Lcom/google/android/play/core/integrity/t;->a(Landroid/os/Bundle;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v3

    if-eqz v3, :cond_20

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void

    :cond_20
    const-string v3, "dialog.intent"

    .line 5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    const/4 v3, 0x0

    if-nez p1, :cond_3c

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onRequestDialog(%s): got null dialog intent"

    .line 6
    invoke-virtual {v4, v0, p1}, Lcom/google/android/play/integrity/internal/s;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void

    :cond_3c
    iget-object v1, p0, Lcom/google/android/play/core/integrity/ax;->f:Landroid/app/Activity;

    const-class v2, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    new-instance v5, Landroid/content/Intent;

    .line 8
    invoke-direct {v5, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "confirmation_intent"

    .line 9
    invoke-virtual {v5, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 10
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    new-instance p1, Lcom/google/android/play/core/integrity/aw;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/ae;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/play/core/integrity/aw;-><init>(Lcom/google/android/play/core/integrity/ax;Landroid/os/Handler;)V

    const-string v0, "result_receiver"

    .line 13
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "Starting dialog intent..."

    .line 14
    invoke-virtual {v4, v0, p1}, Lcom/google/android/play/integrity/internal/s;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    invoke-virtual {v1, v5, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
