###### Class com.google.android.play.core.integrity.bf (com.google.android.play.core.integrity.bf)
.class public final Lcom/google/android/play/core/integrity/bf;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/aw;


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/az;

.field private final b:Lcom/google/android/play/integrity/internal/az;


# direct methods
.method private constructor <init>(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bf;->a:Lcom/google/android/play/integrity/internal/az;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bf;->b:Lcom/google/android/play/integrity/internal/az;

    return-void
.end method

.method public static b(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)Lcom/google/android/play/core/integrity/bf;
    .registers 3

    new-instance v0, Lcom/google/android/play/core/integrity/bf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/integrity/bf;-><init>(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bf;->b:Lcom/google/android/play/integrity/internal/az;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bf;->a:Lcom/google/android/play/integrity/internal/az;

    invoke-interface {v1}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lcom/google/android/play/core/integrity/be;

    .line 2
    check-cast v1, Lcom/google/android/play/core/integrity/bs;

    check-cast v0, Lcom/google/android/play/core/integrity/by;

    invoke-direct {v2, v1, v0}, Lcom/google/android/play/core/integrity/be;-><init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/play/core/integrity/by;)V

    return-object v2
.end method
