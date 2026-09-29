###### Class com.google.android.play.core.integrity.ay (com.google.android.play.core.integrity.ay)
.class final Lcom/google/android/play/core/integrity/ay;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/bb;

.field private final b:Lcom/google/android/play/integrity/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/bb;Lcom/google/android/play/integrity/internal/bb;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/play/integrity/internal/bb;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/bb;

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/play/integrity/internal/bb;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/bb;

    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/ae;)Lcom/google/android/play/core/integrity/ax;
    .registers 11

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ay;->a:Lcom/google/android/play/integrity/internal/bb;

    new-instance v1, Lcom/google/android/play/core/integrity/ax;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/bb;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, v2

    check-cast v0, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ay;->b:Lcom/google/android/play/integrity/internal/bb;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/bb;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/integrity/t;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, v3

    check-cast v0, Lcom/google/android/play/core/integrity/t;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p3

    check-cast v0, Lcom/google/android/play/integrity/internal/ae;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/integrity/ax;-><init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/t;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/ae;)V

    return-object v1
.end method
