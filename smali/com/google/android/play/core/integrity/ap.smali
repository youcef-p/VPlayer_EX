###### Class com.google.android.play.core.integrity.ap (com.google.android.play.core.integrity.ap)
.class final Lcom/google/android/play/core/integrity/ap;
.super Lcom/google/android/play/core/integrity/ag;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/integrity/aq;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/aq;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ap;->a:Lcom/google/android/play/core/integrity/aq;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/play/core/integrity/ag;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method final b(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ap;->a:Lcom/google/android/play/core/integrity/aq;

    iget-object v0, v0, Lcom/google/android/play/core/integrity/aq;->a:Lcom/google/android/play/core/integrity/ar;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/integrity/ar;->b(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
