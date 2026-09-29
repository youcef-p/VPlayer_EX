###### Class com.google.android.play.integrity.internal.aq (com.google.android.play.integrity.internal.aq)
.class public abstract Lcom/google/android/play/integrity/internal/aq;
.super Lcom/google/android/play/integrity/internal/am;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private transient a:Lcom/google/android/play/integrity/internal/ap;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/am;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/android/play/integrity/internal/aq;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/play/integrity/internal/as;->a:Lcom/google/android/play/integrity/internal/as;

    return-object v0
.end method


# virtual methods
.method public abstract d()Lcom/google/android/play/integrity/internal/at;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/integrity/internal/aq;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    move-object v1, p1

    check-cast v1, Lcom/google/android/play/integrity/internal/aq;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/integrity/internal/aq;->i()Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    if-ne p1, p0, :cond_1a

    return v0

    .line 4
    :cond_1a
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_32

    .line 5
    check-cast p1, Ljava/util/Set;

    :try_start_20
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_32

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_2e} :catch_32
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_2e} :catch_32

    if-nez p1, :cond_31

    return v2

    :cond_31
    return v0

    :catch_32
    :cond_32
    return v2
.end method

.method public final f()Lcom/google/android/play/integrity/internal/ap;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->a:Lcom/google/android/play/integrity/internal/ap;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/aq;->g()Lcom/google/android/play/integrity/internal/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/integrity/internal/aq;->a:Lcom/google/android/play/integrity/internal/ap;

    :cond_a
    return-object v0
.end method

.method g()Lcom/google/android/play/integrity/internal/ap;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public hashCode()I
    .registers 5

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_18

    :cond_17
    move v3, v1

    :goto_18
    add-int/2addr v2, v3

    goto :goto_6

    :cond_1a
    return v2
.end method

.method i()Z
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/aq;->d()Lcom/google/android/play/integrity/internal/at;

    move-result-object v0

    return-object v0
.end method
