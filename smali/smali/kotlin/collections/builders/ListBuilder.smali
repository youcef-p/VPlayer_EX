###### Class kotlin.collections.builders.ListBuilder (kotlin.collections.builders.ListBuilder)
.class public final Lkotlin/collections/builders/ListBuilder;
.super Lkotlin/collections/AbstractMutableList;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/ListBuilder$BuilderSubList;,
        Lkotlin/collections/builders/ListBuilder$Companion;,
        Lkotlin/collections/builders/ListBuilder$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010+\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 Q*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0003PQRB\u000f\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u001d\u0010\u0014\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0019J\u001e\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\t2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0016\u0010\u001a\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J&\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\t2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001c2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u001d\u0010 \u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u0019J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\"J\u0008\u0010#\u001a\u00020\u0017H\u0002J\u0008\u0010$\u001a\u00020\u0017H\u0016J\u0014\u0010%\u001a\u00020\u000f2\n\u0010&\u001a\u0006\u0012\u0002\u0008\u00030\"H\u0002J\u0010\u0010\'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\tH\u0002J\u0010\u0010)\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0013\u0010*\u001a\u00020\u000f2\u0008\u0010&\u001a\u0004\u0018\u00010+H\u0096\u0002J\u0016\u0010,\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\tH\u0096\u0002\u00a2\u0006\u0002\u0010-J\u0008\u0010.\u001a\u00020\tH\u0016J\u0015\u0010/\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0002J\u0008\u00102\u001a\u00020\u000fH\u0016J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u000004H\u0096\u0002J\u0015\u00105\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u00100J\u000e\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u000007H\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u0000072\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u0008\u00108\u001a\u00020\u0017H\u0002J\u0015\u00109\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0016J\u0016\u0010:\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0015\u0010;\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010-J\u0015\u0010<\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00020\tH\u0002\u00a2\u0006\u0002\u0010-J\u0018\u0010=\u001a\u00020\u00172\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\tH\u0002J\u0016\u0010@\u001a\u00020\u000f2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J.\u0010A\u001a\u00020\t2\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\t2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001c2\u0006\u0010B\u001a\u00020\u000fH\u0002J\u001e\u0010C\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010DJ\u001e\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010F\u001a\u00020\t2\u0006\u0010G\u001a\u00020\tH\u0016J\u0015\u0010H\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010+0\u000cH\u0016\u00a2\u0006\u0002\u0010IJ\'\u0010H\u001a\u0008\u0012\u0004\u0012\u0002HJ0\u000c\"\u0004\u0008\u0001\u0010J2\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u0002HJ0\u000cH\u0016\u00a2\u0006\u0002\u0010LJ\u0008\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020+H\u0002R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006S"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder;",
        "E",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "Lkotlin/collections/AbstractMutableList;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "initialCapacity",
        "",
        "(I)V",
        "backing",
        "",
        "[Ljava/lang/Object;",
        "isReadOnly",
        "",
        "length",
        "size",
        "getSize",
        "()I",
        "add",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "addAllInternal",
        "i",
        "n",
        "addAtInternal",
        "build",
        "",
        "checkIsMutable",
        "clear",
        "contentEquals",
        "other",
        "ensureCapacityInternal",
        "minCapacity",
        "ensureExtraCapacity",
        "equals",
        "",
        "get",
        "(I)Ljava/lang/Object;",
        "hashCode",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "insertAtInternal",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "registerModification",
        "remove",
        "removeAll",
        "removeAt",
        "removeAtInternal",
        "removeRangeInternal",
        "rangeOffset",
        "rangeLength",
        "retainAll",
        "retainOrRemoveAllInternal",
        "retain",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "subList",
        "fromIndex",
        "toIndex",
        "toArray",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "writeReplace",
        "BuilderSubList",
        "Companion",
        "Itr",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lkotlin/collections/builders/ListBuilder$Companion;

.field private static final Empty:Lkotlin/collections/builders/ListBuilder;


# instance fields
.field private backing:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private isReadOnly:Z

.field private length:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlin/collections/builders/ListBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/builders/ListBuilder;->Companion:Lkotlin/collections/builders/ListBuilder$Companion;

    .line 18
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    sput-object v0, Lkotlin/collections/builders/ListBuilder;->Empty:Lkotlin/collections/builders/ListBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 13
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    const/16 p1, 0xa

    .line 12
    :cond_6
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$addAllInternal(Lkotlin/collections/builders/ListBuilder;ILjava/util/Collection;I)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    return-void
.end method

.method public static final synthetic access$addAtInternal(Lkotlin/collections/builders/ListBuilder;ILjava/lang/Object;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;
    .registers 1

    .line 12
    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I
    .registers 1

    .line 12
    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I
    .registers 1

    .line 12
    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->modCount:I

    return p0
.end method

.method public static final synthetic access$isReadOnly$p(Lkotlin/collections/builders/ListBuilder;)Z
    .registers 1

    .line 12
    iget-boolean p0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    return p0
.end method

.method public static final synthetic access$removeAtInternal(Lkotlin/collections/builders/ListBuilder;I)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeRangeInternal(Lkotlin/collections/builders/ListBuilder;II)V
    .registers 3

    .line 12
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    return-void
.end method

.method public static final synthetic access$retainOrRemoveAllInternal(Lkotlin/collections/builders/ListBuilder;IILjava/util/Collection;Z)I
    .registers 5

    .line 12
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p0

    return p0
.end method

.method private final addAllInternal(ILjava/util/Collection;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 206
    invoke-direct {p0, p1, p3}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    .line 208
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_1a

    .line 210
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1a
    return-void
.end method

.method private final addAtInternal(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    const/4 v0, 0x1

    .line 200
    invoke-direct {p0, p1, v0}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    .line 201
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method private final checkIsMutable()V
    .registers 2

    .line 173
    iget-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final contentEquals(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2, p1}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method private final ensureCapacityInternal(I)V
    .registers 4

    if-ltz p1, :cond_19

    .line 182
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    array-length v0, v0

    if-le p1, v0, :cond_18

    .line 183
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/AbstractList$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 184
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    :cond_18
    return-void

    .line 181
    :cond_19
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method private final ensureExtraCapacity(I)V
    .registers 3

    .line 177
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder;->ensureCapacityInternal(I)V

    return-void
.end method

.method private final insertAtInternal(II)V
    .registers 6

    .line 193
    invoke-direct {p0, p2}, Lkotlin/collections/builders/ListBuilder;->ensureExtraCapacity(I)V

    .line 194
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 195
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-void
.end method

.method private final registerModification()V
    .registers 2

    .line 169
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder;->modCount:I

    return-void
.end method

.method private final removeAtInternal(I)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 217
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 218
    iget v3, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 219
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 220
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-object v1
.end method

.method private final removeRangeInternal(II)V
    .registers 6

    if-lez p2, :cond_5

    .line 225
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 226
    :cond_5
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v0, p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 227
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 228
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-void
.end method

.method private final retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p2, :cond_20

    .line 236
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_1d

    .line 237
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_2

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    sub-int p3, p2, v1

    .line 243
    iget-object p4, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 244
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget p2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    if-lez p3, :cond_39

    .line 245
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 246
    :cond_39
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int/2addr p1, p3

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return p3
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 4

    .line 28
    iget-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    if-eqz v0, :cond_e

    .line 29
    new-instance v0, Lkotlin/collections/builders/SerializedCollection;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/SerializedCollection;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 31
    :cond_e
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The list cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 85
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 86
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 79
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 98
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 99
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 92
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v1, p1, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method public final build()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    .line 24
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-lez v0, :cond_e

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_e
    sget-object v0, Lkotlin/collections/builders/ListBuilder;->Empty:Lkotlin/collections/builders/ListBuilder;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public clear()V
    .registers 3

    .line 105
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v0, v1}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_11

    .line 155
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->contentEquals(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 39
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 40
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 34
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 159
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentHashCode([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    .line 53
    :goto_1
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-ge v0, v1, :cond_13

    .line 54
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 36
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    .line 61
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    .line 63
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 74
    new-instance v0, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Lkotlin/collections/builders/ListBuilder;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 116
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 117
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_c

    .line 118
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->remove(I)Ljava/lang/Object;

    :cond_c
    if-ltz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 124
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 111
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 112
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 129
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p1, v2}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 45
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 46
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 47
    aput-object p2, v0, p1

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 133
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 134
    new-instance v2, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v3, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    sub-int v5, p2, p1

    const/4 v6, 0x0

    move-object v7, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;-><init>([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .line 150
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    array-length v0, p1

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1b

    .line 140
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 143
    :cond_1b
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 145
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 163
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentToString([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.collections.builders.ListBuilder.BuilderSubList (kotlin.collections.builders.ListBuilder$BuilderSubList)
.class public final Lkotlin/collections/builders/ListBuilder$BuilderSubList;
.super Lkotlin/collections/AbstractMutableList;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderSubList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableList;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\t\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0010+\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u00052\u00060\u0006j\u0002`\u0007:\u0001PBA\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\u0015\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u001d\u0010\u0018\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001dJ\u001e\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u000b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 H\u0016J\u0016\u0010\u001e\u001a\u00020\u00132\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 H\u0016J&\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u000b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 2\u0006\u0010#\u001a\u00020\u000bH\u0002J\u001d\u0010$\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0002\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010%\u001a\u00020\u001bH\u0002J\u0008\u0010&\u001a\u00020\u001bH\u0002J\u0008\u0010\'\u001a\u00020\u001bH\u0016J\u0014\u0010(\u001a\u00020\u00132\n\u0010)\u001a\u0006\u0012\u0002\u0008\u00030*H\u0002J\u0013\u0010+\u001a\u00020\u00132\u0008\u0010)\u001a\u0004\u0018\u00010,H\u0096\u0002J\u0016\u0010-\u001a\u00028\u00012\u0006\u0010\u001c\u001a\u00020\u000bH\u0096\u0002\u00a2\u0006\u0002\u0010.J\u0008\u0010/\u001a\u00020\u000bH\u0016J\u0015\u00100\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u00101J\u0008\u00102\u001a\u00020\u0013H\u0016J\u000f\u00103\u001a\u0008\u0012\u0004\u0012\u00028\u000104H\u0096\u0002J\u0015\u00105\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u00101J\u000e\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u000107H\u0016J\u0016\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u0001072\u0006\u0010\u001c\u001a\u00020\u000bH\u0016J\u0008\u00108\u001a\u00020\u001bH\u0002J\u0015\u00109\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0016\u0010:\u001a\u00020\u00132\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 H\u0016J\u0015\u0010;\u001a\u00028\u00012\u0006\u0010\u001c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0002\u0010.J\u0015\u0010<\u001a\u00028\u00012\u0006\u0010\"\u001a\u00020\u000bH\u0002\u00a2\u0006\u0002\u0010.J\u0018\u0010=\u001a\u00020\u001b2\u0006\u0010>\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\u000bH\u0002J\u0016\u0010@\u001a\u00020\u00132\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 H\u0016J.\u0010A\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u000b2\u0006\u0010?\u001a\u00020\u000b2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00028\u00010 2\u0006\u0010B\u001a\u00020\u0013H\u0002J\u001e\u0010C\u001a\u00028\u00012\u0006\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010DJ\u001e\u0010E\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010F\u001a\u00020\u000b2\u0006\u0010G\u001a\u00020\u000bH\u0016J\u0015\u0010H\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010,0\tH\u0016\u00a2\u0006\u0002\u0010IJ\'\u0010H\u001a\u0008\u0012\u0004\u0012\u0002HJ0\t\"\u0004\u0008\u0002\u0010J2\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u0002HJ0\tH\u0016\u00a2\u0006\u0002\u0010LJ\u0008\u0010M\u001a\u00020NH\u0016J\u0008\u0010O\u001a\u00020,H\u0002R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0014R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006Q"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$BuilderSubList;",
        "E",
        "",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "Lkotlin/collections/AbstractMutableList;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "backing",
        "",
        "offset",
        "",
        "length",
        "parent",
        "root",
        "Lkotlin/collections/builders/ListBuilder;",
        "([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V",
        "[Ljava/lang/Object;",
        "isReadOnly",
        "",
        "()Z",
        "size",
        "getSize",
        "()I",
        "add",
        "element",
        "(Ljava/lang/Object;)Z",
        "",
        "index",
        "(ILjava/lang/Object;)V",
        "addAll",
        "elements",
        "",
        "addAllInternal",
        "i",
        "n",
        "addAtInternal",
        "checkForComodification",
        "checkIsMutable",
        "clear",
        "contentEquals",
        "other",
        "",
        "equals",
        "",
        "get",
        "(I)Ljava/lang/Object;",
        "hashCode",
        "indexOf",
        "(Ljava/lang/Object;)I",
        "isEmpty",
        "iterator",
        "",
        "lastIndexOf",
        "listIterator",
        "",
        "registerModification",
        "remove",
        "removeAll",
        "removeAt",
        "removeAtInternal",
        "removeRangeInternal",
        "rangeOffset",
        "rangeLength",
        "retainAll",
        "retainOrRemoveAllInternal",
        "retain",
        "set",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "subList",
        "fromIndex",
        "toIndex",
        "toArray",
        "()[Ljava/lang/Object;",
        "T",
        "array",
        "([Ljava/lang/Object;)[Ljava/lang/Object;",
        "toString",
        "",
        "writeReplace",
        "Itr",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private backing:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private length:I

.field private final offset:I

.field private final parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final root:Lkotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;II",
            "Lkotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;",
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 306
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 307
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    .line 308
    iput p3, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    .line 309
    iput-object p4, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    .line 310
    iput-object p5, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    .line 313
    invoke-static {p5}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->modCount:I

    return-void
.end method

.method public static final synthetic access$getBacking$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;
    .registers 1

    .line 305
    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 305
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 305
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->modCount:I

    return p0
.end method

.method public static final synthetic access$getOffset$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I
    .registers 1

    .line 305
    iget p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    return p0
.end method

.method public static final synthetic access$getRoot$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)Lkotlin/collections/builders/ListBuilder;
    .registers 1

    .line 305
    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    return-object p0
.end method

.method private final addAllInternal(ILjava/util/Collection;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 515
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_b

    .line 516
    invoke-direct {v0, p1, p2, p3}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    goto :goto_10

    .line 518
    :cond_b
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0, p1, p2, p3}, Lkotlin/collections/builders/ListBuilder;->access$addAllInternal(Lkotlin/collections/builders/ListBuilder;ILjava/util/Collection;I)V

    .line 520
    :goto_10
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 521
    iget p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr p1, p3

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method private final addAtInternal(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 504
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_b

    .line 505
    invoke-direct {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    goto :goto_10

    .line 507
    :cond_b
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->access$addAtInternal(Lkotlin/collections/builders/ListBuilder;ILjava/lang/Object;)V

    .line 509
    :goto_10
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    .line 510
    iget p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method private final checkForComodification()V
    .registers 3

    .line 487
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->modCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 488
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private final checkIsMutable()V
    .registers 2

    .line 492
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final contentEquals(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-static {v0, v1, v2, p1}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method private final isReadOnly()Z
    .registers 2

    .line 496
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$isReadOnly$p(Lkotlin/collections/builders/ListBuilder;)Z

    move-result v0

    return v0
.end method

.method private final registerModification()V
    .registers 2

    .line 483
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->modCount:I

    return-void
.end method

.method private final removeAtInternal(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 525
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 526
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_c

    .line 527
    invoke-direct {v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_12

    .line 529
    :cond_c
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilder;->access$removeAtInternal(Lkotlin/collections/builders/ListBuilder;I)Ljava/lang/Object;

    move-result-object p1

    .line 531
    :goto_12
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-object p1
.end method

.method private final removeRangeInternal(II)V
    .registers 4

    if-lez p2, :cond_5

    .line 536
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 537
    :cond_5
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_d

    .line 538
    invoke-direct {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->removeRangeInternal(II)V

    goto :goto_12

    .line 540
    :cond_d
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->access$removeRangeInternal(Lkotlin/collections/builders/ListBuilder;II)V

    .line 542
    :goto_12
    iget p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return-void
.end method

.method private final retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->parent:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    if-eqz v0, :cond_9

    .line 549
    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_f

    .line 551
    :cond_9
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0, p1, p2, p3, p4}, Lkotlin/collections/builders/ListBuilder;->access$retainOrRemoveAllInternal(Lkotlin/collections/builders/ListBuilder;IILjava/util/Collection;Z)I

    move-result p1

    :goto_f
    if-lez p1, :cond_14

    .line 553
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->registerModification()V

    .line 554
    :cond_14
    iget p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    sub-int/2addr p2, p1

    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 4

    .line 317
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 318
    new-instance v0, Lkotlin/collections/builders/SerializedCollection;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/SerializedCollection;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 320
    :cond_10
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The list cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 385
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 386
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 387
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 388
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 379
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 380
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAtInternal(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 401
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 402
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 403
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 404
    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1, p2, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 393
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 394
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 395
    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1, p1, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public clear()V
    .registers 3

    .line 409
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 410
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 411
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-direct {p0, v0, v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->removeRangeInternal(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 465
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    if-eq p1, p0, :cond_14

    .line 467
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->contentEquals(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_14

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 334
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 335
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 336
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 324
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 325
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 471
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 472
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentHashCode([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .line 349
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    const/4 v0, 0x0

    .line 351
    :goto_4
    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, v1, :cond_19

    .line 352
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_19
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 329
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 330
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .line 359
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 360
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_1a

    .line 362
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 373
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 374
    new-instance v0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;-><init>(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 422
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 423
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 424
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_f

    .line 425
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->remove(I)Ljava/lang/Object;

    :cond_f
    if-ltz p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 431
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 432
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    return v2
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 416
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 417
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 418
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 437
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 438
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_17

    return v2

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkIsMutable()V

    .line 341
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 342
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 343
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    .line 344
    aput-object p2, v0, v1

    return-object v2
.end method

.method public subList(II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 442
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 443
    new-instance v2, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v3, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int v4, v0, p1

    sub-int v5, p2, p1

    iget-object v7, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->root:Lkotlin/collections/builders/ListBuilder;

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;-><init>([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V

    check-cast v2, Ljava/util/List;

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 4

    .line 459
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 461
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 449
    array-length v0, p1

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    if-ge v0, v1, :cond_20

    .line 450
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 453
    :cond_20
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 455
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 476
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->checkForComodification()V

    .line 477
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->offset:I

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->length:I

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-static {v0, v1, v2, v3}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentToString([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.collections.builders.ListBuilder.BuilderSubList.Itr (kotlin.collections.builders.ListBuilder$BuilderSubList$Itr)
.class final Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder$BuilderSubList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$BuilderSubList$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\u00028\u0002H\u0096\u0002\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\r\u0010\u0015\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0016\u001a\u00020\u0006H\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;",
        "E",
        "",
        "list",
        "Lkotlin/collections/builders/ListBuilder$BuilderSubList;",
        "index",
        "",
        "(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V",
        "expectedModCount",
        "lastIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "checkForComodification",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "()Ljava/lang/Object;",
        "nextIndex",
        "previous",
        "previousIndex",
        "remove",
        "set",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private expectedModCount:I

.field private index:I

.field private lastIndex:I

.field private final list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/ListBuilder$BuilderSubList;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/ListBuilder$BuilderSubList<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    .line 560
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    const/4 p2, -0x1

    .line 562
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    .line 563
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->expectedModCount:I

    return-void
.end method

.method private final checkForComodification()V
    .registers 3

    .line 608
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getRoot$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_f

    return-void

    .line 609
    :cond_f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 592
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->checkForComodification()V

    .line 593
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 594
    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    .line 595
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->expectedModCount:I

    return-void
.end method

.method public hasNext()Z
    .registers 3

    .line 566
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getLength$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 565
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->checkForComodification()V

    .line 580
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getLength$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 581
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    .line 582
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 580
    :cond_27
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 569
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 572
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->checkForComodification()V

    .line 573
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    if-lez v0, :cond_1f

    add-int/lit8 v0, v0, -0x1

    .line 574
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    .line 575
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getOffset$p(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v1

    iget v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0

    .line 573
    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 568
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 4

    .line 599
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->checkForComodification()V

    .line 600
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 601
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->remove(I)Ljava/lang/Object;

    .line 602
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->index:I

    .line 603
    iput v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    .line 604
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->access$getModCount$p$s1462993667(Lkotlin/collections/builders/ListBuilder$BuilderSubList;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->expectedModCount:I

    return-void

    .line 600
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->checkForComodification()V

    .line 587
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 588
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$BuilderSubList$Itr;->list:Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 587
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class kotlin.collections.builders.ListBuilder.Companion (kotlin.collections.builders.ListBuilder$Companion)
.class final Lkotlin/collections/builders/ListBuilder$Companion;
.super Ljava/lang/Object;
.source "ListBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0000\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$Companion;",
        "",
        "()V",
        "Empty",
        "Lkotlin/collections/builders/ListBuilder;",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Companion;-><init>()V

    return-void
.end method

###### Class kotlin.collections.builders.ListBuilder.Itr (kotlin.collections.builders.ListBuilder$Itr)
.class final Lkotlin/collections/builders/ListBuilder$Itr;
.super Ljava/lang/Object;
.source "ListBuilder.kt"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nListBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListBuilder.kt\nkotlin/collections/builders/ListBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,718:1\n1#2:719\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000bH\u0002J\t\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u000e\u0010\u0012\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\r\u0010\u0015\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010\u0016\u001a\u00020\u0006H\u0016J\u0008\u0010\u0017\u001a\u00020\u000bH\u0016J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\rR\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlin/collections/builders/ListBuilder$Itr;",
        "E",
        "",
        "list",
        "Lkotlin/collections/builders/ListBuilder;",
        "index",
        "",
        "(Lkotlin/collections/builders/ListBuilder;I)V",
        "expectedModCount",
        "lastIndex",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)V",
        "checkForComodification",
        "hasNext",
        "",
        "hasPrevious",
        "next",
        "()Ljava/lang/Object;",
        "nextIndex",
        "previous",
        "previousIndex",
        "remove",
        "set",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private expectedModCount:I

.field private index:I

.field private lastIndex:I

.field private final list:Lkotlin/collections/builders/ListBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/ListBuilder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/ListBuilder<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    .line 252
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    const/4 p2, -0x1

    .line 254
    iput p2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 255
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method private final checkForComodification()V
    .registers 3

    .line 300
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_b

    return-void

    .line 301
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 285
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    invoke-virtual {v0, v1, p1}, Lkotlin/collections/builders/ListBuilder;->add(ILjava/lang/Object;)V

    const/4 p1, -0x1

    .line 286
    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 287
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {p1}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void
.end method

.method public hasNext()Z
    .registers 3

    .line 258
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .registers 2

    .line 257
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 272
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v1}, Lkotlin/collections/builders/ListBuilder;->access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 273
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 274
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 272
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .line 261
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 265
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    if-lez v0, :cond_18

    add-int/lit8 v0, v0, -0x1

    .line 266
    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 267
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    aget-object v0, v0, v1

    return-object v0

    .line 265
    :cond_18
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .line 260
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .registers 4

    .line 291
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 292
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 293
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->remove(I)Ljava/lang/Object;

    .line 294
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->index:I

    .line 295
    iput v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    .line 296
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-static {v0}, Lkotlin/collections/builders/ListBuilder;->access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I

    move-result v0

    iput v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->expectedModCount:I

    return-void

    .line 292
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call next() or previous() before removing element from the iterator."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder$Itr;->checkForComodification()V

    .line 279
    iget v0, p0, Lkotlin/collections/builders/ListBuilder$Itr;->lastIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 280
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder$Itr;->list:Lkotlin/collections/builders/ListBuilder;

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/builders/ListBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 279
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() or previous() before replacing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
