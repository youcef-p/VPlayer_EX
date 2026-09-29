###### Class com.google.android.play.core.integrity.br (com.google.android.play.core.integrity.br)
.class abstract Lcom/google/android/play/core/integrity/br;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic g:Lcom/google/android/play/core/integrity/bs;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/br;->g:Lcom/google/android/play/core/integrity/bs;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/t;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 5

    .line 1
    instance-of v0, p1, Lcom/google/android/play/integrity/internal/af;

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Lcom/google/android/play/integrity/internal/t;->a(Ljava/lang/Exception;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/play/core/integrity/br;->g:Lcom/google/android/play/core/integrity/bs;

    .line 2
    invoke-static {v0}, Lcom/google/android/play/core/integrity/bs;->m(Lcom/google/android/play/core/integrity/bs;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 3
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v2, -0x2

    .line 4
    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 3
    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/t;->a(Ljava/lang/Exception;)V

    return-void

    .line 5
    :cond_1b
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/16 v2, -0x9

    .line 6
    invoke-direct {v0, v2, v1, p1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(IZLjava/lang/Throwable;)V

    .line 5
    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/t;->a(Ljava/lang/Exception;)V

    return-void
.end method
