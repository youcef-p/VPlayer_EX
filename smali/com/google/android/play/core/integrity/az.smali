###### Class com.google.android.play.core.integrity.az (com.google.android.play.core.integrity.az)
.class public final Lcom/google/android/play/core/integrity/az;
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

    iput-object p1, p0, Lcom/google/android/play/core/integrity/az;->a:Lcom/google/android/play/integrity/internal/az;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/az;->b:Lcom/google/android/play/integrity/internal/az;

    return-void
.end method

.method public static c(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)Lcom/google/android/play/core/integrity/az;
    .registers 3

    new-instance v0, Lcom/google/android/play/core/integrity/az;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/integrity/az;-><init>(Lcom/google/android/play/integrity/internal/az;Lcom/google/android/play/integrity/internal/az;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/integrity/az;->b()Lcom/google/android/play/core/integrity/ay;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/android/play/core/integrity/ay;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/ay;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/az;->a:Lcom/google/android/play/integrity/internal/az;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/az;->b:Lcom/google/android/play/integrity/internal/az;

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/integrity/ay;-><init>(Lcom/google/android/play/integrity/internal/bb;Lcom/google/android/play/integrity/internal/bb;)V

    return-object v0
.end method
