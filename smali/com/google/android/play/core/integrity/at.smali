###### Class com.google.android.play.core.integrity.at (com.google.android.play.core.integrity.at)
.class public final Lcom/google/android/play/core/integrity/at;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/aw;


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/az;

.field private final b:Lcom/google/android/play/integrity/internal/az;

.field private final c:Lcom/google/android/play/integrity/internal/az;


# direct methods
.method private constructor <init>(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/play/integrity/internal/az;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/at;->b:Lcom/google/android/play/integrity/internal/az;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/at;->c:Lcom/google/android/play/integrity/internal/az;

    return-void
.end method

.method public static b(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)Lcom/google/android/play/core/integrity/at;
    .registers 5

    new-instance v0, Lcom/google/android/play/core/integrity/at;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/play/core/integrity/at;-><init>(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/play/integrity/internal/az;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/at;->b:Lcom/google/android/play/integrity/internal/az;

    invoke-interface {v1}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/integrity/internal/s;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/at;->c:Lcom/google/android/play/integrity/internal/az;

    check-cast v2, Lcom/google/android/play/core/integrity/az;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/az;->b()Lcom/google/android/play/core/integrity/ay;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/integrity/r;

    invoke-direct {v3}, Lcom/google/android/play/core/integrity/r;-><init>()V

    new-instance v4, Lcom/google/android/play/core/integrity/ar;

    .line 3
    move-object v5, v2

    check-cast v5, Lcom/google/android/play/core/integrity/ay;

    check-cast v3, Lcom/google/android/play/core/integrity/t;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/play/core/integrity/ar;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/s;Lcom/google/android/play/core/integrity/ay;Lcom/google/android/play/core/integrity/t;)V

    return-object v4
.end method
