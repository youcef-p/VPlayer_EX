###### Class com.google.android.gms.internal.base.zaw (com.google.android.gms.internal.base.zaw)
.class abstract Lcom/google/android/gms/internal/base/zaw;
.super Lcom/google/android/gms/internal/base/zaad;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:I

.field private zab:I


# direct methods
.method constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zaad;-><init>()V

    const-string v0, "index"

    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/base/zau;->zab(IILjava/lang/String;)I

    iput p1, p0, Lcom/google/android/gms/internal/base/zaw;->zaa:I

    iput p2, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    iget v1, p0, Lcom/google/android/gms/internal/base/zaw;->zaa:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaw;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/base/zaw;->zaa(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/base/zaw;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/base/zaw;->zaa(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zaw;->zab:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method abstract zaa(I)Ljava/lang/Object;
.end method
