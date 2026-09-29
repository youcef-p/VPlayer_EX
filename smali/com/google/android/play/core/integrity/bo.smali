###### Class com.google.android.play.core.integrity.bo (com.google.android.play.core.integrity.bo)
.class final Lcom/google/android/play/core/integrity/bo;
.super Lcom/google/android/play/core/integrity/ag;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/integrity/bp;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bp;Ljava/lang/String;J)V
    .registers 5

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bo;->a:Lcom/google/android/play/core/integrity/bp;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/play/core/integrity/ag;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method final b(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bo;->a:Lcom/google/android/play/core/integrity/bp;

    const-string v1, "cloud.prj"

    invoke-static {v0}, Lcom/google/android/play/core/integrity/bp;->f(Lcom/google/android/play/core/integrity/bp;)J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, v0, Lcom/google/android/play/core/integrity/bp;->c:Lcom/google/android/play/core/integrity/bs;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/integrity/bs;->c(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
