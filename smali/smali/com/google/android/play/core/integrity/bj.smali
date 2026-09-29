###### Class com.google.android.play.core.integrity.bj (com.google.android.play.core.integrity.bj)
.class final Lcom/google/android/play/core/integrity/bj;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V
    .registers 4

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/integrity/bj;->a:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bj;->b:Lcom/google/android/play/core/integrity/bs;

    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/t;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bj;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bj;->b:Lcom/google/android/play/core/integrity/bs;

    invoke-static {v1}, Lcom/google/android/play/core/integrity/bs;->g(Lcom/google/android/play/core/integrity/bs;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ai;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
