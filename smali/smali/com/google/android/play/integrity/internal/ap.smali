###### Class com.google.android.play.integrity.internal.ap (com.google.android.play.integrity.internal.ap)
.class public abstract Lcom/google/android/play/integrity/internal/ap;
.super Lcom/google/android/play/integrity/internal/am;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final a:Lcom/google/android/play/integrity/internal/au;

.field public static final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/an;

    sget-object v1, Lcom/google/android/play/integrity/internal/ar;->a:Lcom/google/android/play/integrity/internal/ap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/play/integrity/internal/an;-><init>(Lcom/google/android/play/integrity/internal/ap;I)V

    sput-object v0, Lcom/google/android/play/integrity/internal/ap;->a:Lcom/google/android/play/integrity/internal/au;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/am;-><init>()V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_10

    invoke-virtual {p0, v0}, Lcom/google/android/play/integrity/internal/ap;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_10
    return p2
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/play/integrity/internal/ap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/google/android/play/integrity/internal/at;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 4
    :cond_17
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_31

    move v3, v2

    :goto_1c
    if-ge v3, v1, :cond_30

    .line 5
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_30
    return v0

    .line 6
    :cond_31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 7
    :cond_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_46

    return v2

    .line 9
    :cond_46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    return v2

    .line 12
    :cond_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5c

    return v0

    :cond_5c
    return v2
.end method

.method public f(II)Lcom/google/android/play/integrity/internal/ap;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/play/integrity/internal/aj;->c(III)V

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result v0

    if-ne p2, v0, :cond_f

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    .line 3
    sget-object p1, Lcom/google/android/play/integrity/internal/ar;->a:Lcom/google/android/play/integrity/internal/ap;

    return-object p1

    .line 2
    :cond_14
    new-instance v0, Lcom/google/android/play/integrity/internal/ao;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/play/integrity/internal/ao;-><init>(Lcom/google/android/play/integrity/internal/ap;II)V

    return-object v0
.end method

.method public final g(I)Lcom/google/android/play/integrity/internal/au;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/play/integrity/internal/aj;->b(IILjava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p1, Lcom/google/android/play/integrity/internal/ap;->a:Lcom/google/android/play/integrity/internal/au;

    return-object p1

    :cond_12
    new-instance v0, Lcom/google/android/play/integrity/internal/an;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/android/play/integrity/internal/an;-><init>(Lcom/google/android/play/integrity/internal/ap;I)V

    return-object v0
.end method

.method public final hashCode()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_6
    if-ge v1, v0, :cond_16

    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0, v1}, Lcom/google/android/play/integrity/internal/ap;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_19

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    return v2

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    :goto_9
    if-ltz v1, :cond_19

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_19
    return v0
.end method

.method public final synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/integrity/internal/ap;->f(II)Lcom/google/android/play/integrity/internal/ap;

    move-result-object p1

    return-object p1
.end method
