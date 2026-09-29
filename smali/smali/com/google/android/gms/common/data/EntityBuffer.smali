###### Class com.google.android.gms.common.data.EntityBuffer (com.google.android.gms.common.data.EntityBuffer)
.class public abstract Lcom/google/android/gms/common/data/EntityBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;
.source "com.google.android.gms:play-services-base@@18.10.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zaa:Z

.field private zab:Ljava/util/ArrayList;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    return-void
.end method

.method private final zab()V
    .registers 11

    .line 1
    const-string v0, ", for window: "

    const-string v1, ", at row: "

    const-string v2, "Missing value for markerColumn: "

    monitor-enter p0

    :try_start_7
    iget-boolean v3, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    if-nez v3, :cond_9e

    iget-object v3, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v3}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-lez v3, :cond_9c

    const/4 v6, 0x0

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/EntityBuffer;->getPrimaryDataMarkerColumn()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    invoke-virtual {v7, v6}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 6
    invoke-virtual {v8, v4, v6, v7}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    move v7, v5

    :goto_3a
    if-ge v7, v3, :cond_9c

    iget-object v8, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 7
    invoke-virtual {v8, v7}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 8
    invoke-virtual {v9, v4, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5d

    .line 10
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    iget-object v6, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 8
    :cond_5d
    new-instance v3, Ljava/lang/NullPointerException;

    .line 10
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xe

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_9c
    iput-boolean v5, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zaa:Z

    .line 11
    :cond_9e
    monitor-exit p0

    return-void

    :catchall_a0
    move-exception v0

    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_7 .. :try_end_a2} :catchall_a0

    throw v0
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/data/EntityBuffer;->zab()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;->zaa(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_76

    iget-object v2, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne p1, v2, :cond_13

    goto :goto_76

    .line 2
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_36

    iget-object v2, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_50

    .line 10
    :cond_36
    iget-object v2, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, 0x1

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_50
    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_75

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;->zaa(I)I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/data/DataHolder;->getWindowIndex(I)I

    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/EntityBuffer;->getChildDataMarkerColumn()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_73

    iget-object v5, p0, Lcom/google/android/gms/common/data/EntityBuffer;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    .line 10
    invoke-virtual {v5, v4, p1, v2}, Lcom/google/android/gms/common/data/DataHolder;->getString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_73

    goto :goto_76

    :cond_73
    move v1, v3

    goto :goto_76

    :cond_75
    move v1, v2

    .line 2
    :cond_76
    :goto_76
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/common/data/EntityBuffer;->getEntry(II)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDataMarkerColumn()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/data/EntityBuffer;->zab()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected abstract getEntry(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method protected abstract getPrimaryDataMarkerColumn()Ljava/lang/String;
.end method

.method final zaa(I)I
    .registers 5

    if-ltz p1, :cond_17

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/data/EntityBuffer;->zab:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 1
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2a

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Position "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds for this buffer"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
