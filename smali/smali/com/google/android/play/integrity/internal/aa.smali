###### Class com.google.android.play.integrity.internal.aa (com.google.android.play.integrity.internal.aa)
.class final Lcom/google/android/play/integrity/internal/aa;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Lcom/google/android/play/integrity/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IBinder;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/play/integrity/internal/aa;->a:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ac;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aa;->b:Lcom/google/android/play/integrity/internal/ac;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ac;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->g(Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/integrity/internal/z;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/integrity/internal/aa;->a:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/google/android/play/integrity/internal/z;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->o(Lcom/google/android/play/integrity/internal/ae;Landroid/os/IInterface;)V

    .line 2
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->s(Lcom/google/android/play/integrity/internal/ae;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->n(Lcom/google/android/play/integrity/internal/ae;Z)V

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->i(Lcom/google/android/play/integrity/internal/ae;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 5
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_22

    :cond_32
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->i(Lcom/google/android/play/integrity/internal/ae;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
