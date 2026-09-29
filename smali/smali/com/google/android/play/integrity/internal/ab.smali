###### Class com.google.android.play.integrity.internal.ab (com.google.android.play.integrity.internal.ab)
.class final Lcom/google/android/play/integrity/internal/ab;
.super Lcom/google/android/play/integrity/internal/t;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/integrity/internal/ac;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ac;)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ab;->a:Lcom/google/android/play/integrity/internal/ac;

    iget-object v0, v0, Lcom/google/android/play/integrity/internal/ac;->a:Lcom/google/android/play/integrity/internal/ae;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ae;->t(Lcom/google/android/play/integrity/internal/ae;)V

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->o(Lcom/google/android/play/integrity/internal/ae;Landroid/os/IInterface;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ae;->n(Lcom/google/android/play/integrity/internal/ae;Z)V

    return-void
.end method
