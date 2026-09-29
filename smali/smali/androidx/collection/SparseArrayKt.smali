###### Class androidx.collection.SparseArrayKt (androidx.collection.SparseArrayKt)
.class public final Landroidx/collection/SparseArrayKt;
.super Ljava/lang/Object;
.source "SparseArray.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0000\u001a!\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0001H\u0086\n\u001aT\u0010\t\u001a\u00020\n\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u000326\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0004\u0012\u00020\n0\u000cH\u0086\u0008\u00f8\u0001\u0000\u001a.\u0010\u0010\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u0002H\u0002H\u0086\u0008\u00a2\u0006\u0002\u0010\u0012\u001a7\u0010\u0013\u001a\u0002H\u0002\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0014H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a\u0019\u0010\u0016\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0008\u001a\u0016\u0010\u0017\u001a\u00020\u0018\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u001a-\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u0086\u0002\u001a-\u0010\u001b\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u0002H\u0002H\u0007\u00a2\u0006\u0002\u0010\u001c\u001a.\u0010\u001d\u001a\u00020\n\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u0002H\u0002H\u0086\n\u00a2\u0006\u0002\u0010\u001e\u001a\u001c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00020 \"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\"\"\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00038\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006!"
    }
    d2 = {
        "size",
        "",
        "T",
        "Landroidx/collection/SparseArrayCompat;",
        "getSize",
        "(Landroidx/collection/SparseArrayCompat;)I",
        "contains",
        "",
        "key",
        "forEach",
        "",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "value",
        "getOrDefault",
        "defaultValue",
        "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;",
        "getOrElse",
        "Lkotlin/Function0;",
        "(Landroidx/collection/SparseArrayCompat;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "isNotEmpty",
        "keyIterator",
        "Lkotlin/collections/IntIterator;",
        "plus",
        "other",
        "remove",
        "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Z",
        "set",
        "(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)V",
        "valueIterator",
        "",
        "collection"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final contains(Landroidx/collection/SparseArrayCompat;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;I)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->containsKey(I)Z

    move-result p0

    return p0
.end method

.method public static final forEach(Landroidx/collection/SparseArrayCompat;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_23

    .line 63
    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_23
    return-void
.end method

.method public static final getOrDefault(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;ITT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getOrElse(Landroidx/collection/SparseArrayCompat;ILkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;I",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_14

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    :cond_14
    return-object p0
.end method

.method public static final getSize(Landroidx/collection/SparseArrayCompat;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public static final isNotEmpty(Landroidx/collection/SparseArrayCompat;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final keyIterator(Landroidx/collection/SparseArrayCompat;)Lkotlin/collections/IntIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)",
            "Lkotlin/collections/IntIterator;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroidx/collection/SparseArrayKt$keyIterator$1;

    invoke-direct {v0, p0}, Landroidx/collection/SparseArrayKt$keyIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    check-cast v0, Lkotlin/collections/IntIterator;

    return-object v0
.end method

.method public static final plus(Landroidx/collection/SparseArrayCompat;Landroidx/collection/SparseArrayCompat;)Landroidx/collection/SparseArrayCompat;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    .line 37
    invoke-virtual {v0, p0}, Landroidx/collection/SparseArrayCompat;->putAll(Landroidx/collection/SparseArrayCompat;)V

    .line 38
    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->putAll(Landroidx/collection/SparseArrayCompat;)V

    return-object v0
.end method

.method public static final synthetic remove(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Z
    .registers 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced with member function. Remove extension import!"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->remove(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final set(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;ITT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static final valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Landroidx/collection/SparseArrayKt$valueIterator$1;

    invoke-direct {v0, p0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

###### Class androidx.collection.SparseArrayKt.AnonymousClass1 (androidx.collection.SparseArrayKt$keyIterator$1)
.class public final Landroidx/collection/SparseArrayKt$keyIterator$1;
.super Lkotlin/collections/IntIterator;
.source "SparseArray.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/SparseArrayKt;->keyIterator(Landroidx/collection/SparseArrayCompat;)Lkotlin/collections/IntIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/collection/SparseArrayKt$keyIterator$1",
        "Lkotlin/collections/IntIterator;",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "nextInt",
        "collection"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_keyIterator:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroidx/collection/SparseArrayCompat;

    .line 68
    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 2

    .line 69
    iget v0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->index:I

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .line 70
    iget v0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->index:I

    iget-object v1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public nextInt()I
    .registers 4

    .line 71
    iget-object v0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->$this_keyIterator:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public final setIndex(I)V
    .registers 2

    .line 69
    iput p1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->index:I

    return-void
.end method

###### Class androidx.collection.SparseArrayKt.C00121 (androidx.collection.SparseArrayKt$valueIterator$1)
.class public final Landroidx/collection/SparseArrayKt$valueIterator$1;
.super Ljava/lang/Object;
.source "SparseArray.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/SparseArrayKt;->valueIterator(Landroidx/collection/SparseArrayCompat;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\u0008\u001a\u00020\tH\u0096\u0002J\u000e\u0010\n\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/collection/SparseArrayKt$valueIterator$1",
        "",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "collection"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $this_valueIterator:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SparseArrayCompat<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .registers 2

    .line 76
    iget v0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    return v0
.end method

.method public hasNext()Z
    .registers 3

    .line 77
    iget v0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    iget-object v1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->$this_valueIterator:Landroidx/collection/SparseArrayCompat;

    iget v1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIndex(I)V
    .registers 2

    .line 76
    iput p1, p0, Landroidx/collection/SparseArrayKt$valueIterator$1;->index:I

    return-void
.end method
