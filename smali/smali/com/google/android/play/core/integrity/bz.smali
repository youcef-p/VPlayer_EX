###### Class com.google.android.play.core.integrity.bz (com.google.android.play.core.integrity.bz)
.class public final Lcom/google/android/play/core/integrity/bz;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/aw;


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/az;


# direct methods
.method private constructor <init>(Lcom/google/android/play/integrity/internal/az;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bz;->a:Lcom/google/android/play/integrity/internal/az;

    return-void
.end method

.method public static b(Lcom/google/android/play/integrity/internal/az;)Lcom/google/android/play/core/integrity/bz;
    .registers 2

    new-instance v0, Lcom/google/android/play/core/integrity/bz;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/integrity/bz;-><init>(Lcom/google/android/play/integrity/internal/az;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bz;->a:Lcom/google/android/play/integrity/internal/az;

    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/by;

    .line 2
    check-cast v0, Lcom/google/android/play/core/integrity/bs;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/integrity/by;-><init>(Lcom/google/android/play/core/integrity/bs;)V

    return-object v1
.end method
