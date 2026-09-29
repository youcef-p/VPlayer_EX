###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap (kotlinx.coroutines.debug.internal.ConcurrentWeakMap)
.class public final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.super Lkotlin/collections/AbstractMutableMap;
.source "ConcurrentWeakMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;,
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;,
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010#\n\u0002\u0008\u0003\n\u0002\u0010\'\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0004:\u0003)*+B\u0011\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\u0015\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0017J\u001f\u0010\u0018\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0019\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u001aJ\u0017\u0010\u001b\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0017J!\u0010\u001c\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00018\u0001H\u0002\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010$\u001a\u00020\u0014H\u0016J\u0006\u0010%\u001a\u00020\u0014J\u0014\u0010&\u001a\u00020\u00142\n\u0010\'\u001a\u0006\u0012\u0002\u0008\u00030(H\u0002R\t\u0010\t\u001a\u00020\nX\u0082\u0004R\u001f\u0010\u000b\u001a\u0018\u0012\u0014\u0012\u00120\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00000\u000cX\u0082\u0004R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R&\u0010!\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\"0\u001e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010 \u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "K",
        "",
        "V",
        "Lkotlin/collections/AbstractMutableMap;",
        "weakRefQueue",
        "",
        "<init>",
        "(Z)V",
        "_size",
        "Lkotlinx/atomicfu/AtomicInt;",
        "core",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;",
        "Ljava/lang/ref/ReferenceQueue;",
        "size",
        "",
        "getSize",
        "()I",
        "decrementSize",
        "",
        "get",
        "key",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "put",
        "value",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "remove",
        "putSynchronized",
        "keys",
        "",
        "getKeys",
        "()Ljava/util/Set;",
        "entries",
        "",
        "getEntries",
        "clear",
        "runWeakRefQueueCleaningLoopUntilInterrupted",
        "cleanWeakRef",
        "w",
        "Lkotlinx/coroutines/debug/internal/HashedWeakRef;",
        "Core",
        "Entry",
        "KeyValueSet",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic _size$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic core$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _size$volatile:I

.field private volatile synthetic core$volatile:Ljava/lang/Object;

.field private final weakRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$wWOgz_fafcTKYZPOtb-KQEFpkSE(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_get_keys_$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zDoTVsE8Gqh91DxPQaAcfh1HRiM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_get_entries_$lambda$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    const-string v0, "_size$volatile"

    const-class v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_size$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Ljava/lang/Object;

    const-string v2, "core$volatile"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->core$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4

    .line 16
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableMap;-><init>()V

    .line 18
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V

    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->core$volatile:Ljava/lang/Object;

    if-eqz p1, :cond_14

    .line 19
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->weakRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 10
    :cond_5
    invoke-direct {p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;-><init>(Z)V

    return-void
.end method

.method private static final _get_entries_$lambda$1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3

    .line 58
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method private static final _get_keys_$lambda$0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    return-object p0
.end method

.method public static final synthetic access$decrementSize(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)V
    .registers 1

    .line 9
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->decrementSize()V

    return-void
.end method

.method public static final synthetic access$getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    .line 9
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getWeakRefQueue$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    .line 9
    iget-object p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->weakRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method private final cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V

    return-void
.end method

.method private final decrementSize()V
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->get_size$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    return-void
.end method

.method private final synthetic getCore$volatile()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->core$volatile:Ljava/lang/Object;

    return-object v0
.end method

.method private static final synthetic getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->core$volatile$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private final synthetic get_size$volatile()I
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_size$volatile:I

    return v0
.end method

.method private static final synthetic get_size$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_size$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final declared-synchronized putSynchronized(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    move-object v1, v0

    :goto_c
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 47
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 48
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p2
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    if-eq p1, p2, :cond_1d

    monitor-exit p0

    return-object p1

    .line 49
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->rehash()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    .line 50
    invoke-virtual {p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v2

    move-object p2, v3

    goto :goto_c

    :catchall_2b
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2b

    throw p1
.end method

.method private final synthetic setCore$volatile(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->core$volatile:Ljava/lang/Object;

    return-void
.end method

.method private final synthetic set_size$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->_size$volatile:I

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_16
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getImpl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntries()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;

    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;

    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->get_size$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p2

    if-ne p1, p2, :cond_1e

    invoke-direct {p0, v2, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->putSynchronized(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1e
    if-nez p1, :cond_27

    .line 31
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->get_size$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    :cond_27
    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 37
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne p1, v1, :cond_22

    invoke-direct {p0, v3, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->putSynchronized(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_22
    if-eqz p1, :cond_2b

    .line 38
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->get_size$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    :cond_2b
    return-object p1
.end method

.method public final runWeakRefQueueCleaningLoopUntilInterrupted()V
    .registers 3

    .line 66
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->weakRefQueue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_1d

    .line 69
    :goto_4
    :try_start_4
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->weakRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.debug.internal.HashedWeakRef<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_14} :catch_15

    goto :goto_4

    .line 72
    :catch_15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 66
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be created with weakRefQueue = true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Core (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$Core)
.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
.super Ljava/lang/Object;
.source "ConcurrentWeakMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Core"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0003H\u0002J\u0015\u0010\u0010\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0003H\u0002J1\u0010\u0015\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00028\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00018\u00012\u0010\u0008\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00120\u0000R\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001aJ\u0012\u0010\u001b\u001a\u00020\u00142\n\u0010\u001c\u001a\u0006\u0012\u0002\u0008\u00030\u000cJ,\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u0002H\u001f0\u001e\"\u0004\u0008\u0002\u0010\u001f2\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u0002H\u001f0!R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\t\u0010\u0008\u001a\u00020\tX\u0082\u0004R\u0017\u0010\n\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000c0\u000bX\u0082\u0004R\u0011\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000bX\u0082\u0004\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;",
        "",
        "allocated",
        "",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V",
        "shift",
        "threshold",
        "load",
        "Lkotlinx/atomicfu/AtomicInt;",
        "keys",
        "Lkotlinx/atomicfu/AtomicArray;",
        "Lkotlinx/coroutines/debug/internal/HashedWeakRef;",
        "values",
        "index",
        "hash",
        "getImpl",
        "key",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "removeCleanedAt",
        "",
        "putImpl",
        "value",
        "weakKey0",
        "(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;",
        "rehash",
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;",
        "cleanWeakRef",
        "weakRef",
        "keyValueIterator",
        "",
        "E",
        "factory",
        "Lkotlin/Function2;",
        "KeyValueIterator",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final allocated:I

.field private final synthetic keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile synthetic load$volatile:I

.field private final shift:I

.field final synthetic this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final threshold:I

.field private final synthetic values:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    const-string v1, "load$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->shift:I

    mul-int/lit8 p1, p2, 0x2

    .line 83
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->threshold:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 85
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 86
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->values:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method public static final synthetic access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I
    .registers 1

    .line 80
    iget p0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    return p0
.end method

.method public static final synthetic access$getKeys(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    .line 80
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getValues(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 1

    .line 80
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    return-object p0
.end method

.method private final synthetic getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->keys:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private final synthetic getLoad$volatile()I
    .registers 2

    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile:I

    return v0
.end method

.method private static final synthetic getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .registers 1

    sget-object v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method private final synthetic getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2

    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->values:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private final index(I)I
    .registers 3

    const v0, -0x61c88647

    mul-int/2addr p1, v0

    .line 88
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->shift:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public static synthetic putImpl$default(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 118
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final removeCleanedAt(I)V
    .registers 5

    .line 108
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_f

    .line 109
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v1, :cond_10

    :goto_f
    return-void

    .line 110
    :cond_10
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-static {p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$decrementSize(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)V

    return-void
.end method

.method private final synthetic setLoad$volatile(I)V
    .registers 2

    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->load$volatile:I

    return-void
.end method

.method private final synthetic update$atomicfu(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public final cleanWeakRef(Lkotlinx/coroutines/debug/internal/HashedWeakRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "*>;)V"
        }
    .end annotation

    .line 191
    iget v0, p1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->hash:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    .line 193
    :goto_6
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_13

    return-void

    :cond_13
    if-ne v1, p1, :cond_19

    .line 195
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    return-void

    :cond_19
    if-nez v0, :cond_1d

    .line 198
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public final getImpl(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    .line 94
    :goto_8
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v1, :cond_16

    const/4 p1, 0x0

    return-object p1

    .line 95
    :cond_16
    invoke-virtual {v1}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->get()Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 97
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 98
    instance-of v0, p1, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v0, :cond_30

    check-cast p1, Lkotlinx/coroutines/debug/internal/Marked;

    iget-object p1, p1, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    :cond_30
    return-object p1

    :cond_31
    if-nez v1, :cond_36

    .line 100
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    :cond_36
    if-nez v0, :cond_3a

    .line 101
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method public final keyValueIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public final putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkotlinx/coroutines/debug/internal/HashedWeakRef<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->index(I)I

    move-result v0

    const/4 v1, 0x0

    .line 123
    :goto_9
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-nez v2, :cond_4d

    const/4 v2, 0x0

    if-nez p2, :cond_19

    return-object v2

    :cond_19
    if-nez v1, :cond_35

    .line 118
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    :cond_1f
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 129
    iget v4, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->threshold:I

    if-lt v1, v4, :cond_2c

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    :cond_2c
    add-int/lit8 v4, v1, 0x1

    .line 130
    invoke-virtual {v3, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :cond_35
    if-nez p3, :cond_42

    .line 134
    new-instance p3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    iget-object v3, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-static {v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$getWeakRefQueue$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {p3, p1, v3}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 135
    :cond_42
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-static {v3, v0, v2, p3}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    goto :goto_9

    .line 138
    :cond_4d
    invoke-virtual {v2}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->get()Ljava/lang/Object;

    move-result-object v2

    .line 139
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    if-eqz v1, :cond_60

    .line 140
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getLoad$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    .line 150
    :cond_60
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 151
    instance-of p3, p1, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz p3, :cond_71

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    .line 152
    :cond_71
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p3

    invoke-static {p3, v0, p1, p2}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_60

    return-object p1

    :cond_7c
    if-nez v2, :cond_81

    .line 143
    invoke-direct {p0, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    :cond_81
    if-nez v0, :cond_85

    .line 144
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    :cond_85
    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public final rehash()Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>.Core;"
        }
    .end annotation

    .line 162
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/2addr v0, v1

    .line 163
    new-instance v1, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-direct {v1, v2, v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;-><init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;I)V

    .line 164
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->allocated:I

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_65

    .line 166
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getKeys()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-eqz v3, :cond_2d

    .line 167
    invoke-virtual {v3}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->get()Ljava/lang/Object;

    move-result-object v4

    goto :goto_2e

    :cond_2d
    const/4 v4, 0x0

    :goto_2e
    if-eqz v3, :cond_35

    if-nez v4, :cond_35

    .line 168
    invoke-direct {p0, v2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->removeCleanedAt(I)V

    .line 172
    :cond_35
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 173
    instance-of v6, v5, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v6, :cond_46

    .line 174
    check-cast v5, Lkotlinx/coroutines/debug/internal/Marked;

    iget-object v5, v5, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    goto :goto_54

    .line 178
    :cond_46
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->getValues()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-static {v5}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$mark(Ljava/lang/Object;)Lkotlinx/coroutines/debug/internal/Marked;

    move-result-object v7

    invoke-static {v6, v2, v5, v7}, Lkotlinx/coroutines/channels/ChannelSegment$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    :goto_54
    if-eqz v4, :cond_62

    if-eqz v5, :cond_62

    .line 181
    invoke-virtual {v1, v4, v5, v3}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->putImpl(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/debug/internal/HashedWeakRef;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$getREHASH$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v3, v4, :cond_0

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_65
    return-object v1
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Core.KeyValueIterator (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$Core$KeyValueIterator)
.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;
.super Ljava/lang/Object;
.source "ConcurrentWeakMap.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentWeakMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentWeakMap.kt\nkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0000\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0002J\t\u0010\u000e\u001a\u00020\u000fH\u0096\u0002J\u000e\u0010\u0010\u001a\u00028\u0002H\u0096\u0002\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00028\u0000X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\nR\u0010\u0010\u000b\u001a\u00028\u0001X\u0082.\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;",
        "E",
        "",
        "factory",
        "Lkotlin/Function2;",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V",
        "index",
        "",
        "key",
        "Ljava/lang/Object;",
        "value",
        "findNext",
        "",
        "hasNext",
        "",
        "next",
        "()Ljava/lang/Object;",
        "remove",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final factory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end field

.field private index:I

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>.Core;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->factory:Lkotlin/jvm/functions/Function2;

    const/4 p1, -0x1

    .line 206
    iput p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    .line 210
    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->findNext()V

    return-void
.end method

.method private final findNext()V
    .registers 3

    .line 213
    :cond_0
    :goto_0
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 214
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-static {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->access$getKeys(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/HashedWeakRef;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/HashedWeakRef;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_0

    :cond_25
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->key:Ljava/lang/Object;

    .line 215
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-static {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->access$getValues(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 216
    instance-of v1, v0, Lkotlinx/coroutines/debug/internal/Marked;

    if-eqz v1, :cond_3b

    check-cast v0, Lkotlinx/coroutines/debug/internal/Marked;

    iget-object v0, v0, Lkotlinx/coroutines/debug/internal/Marked;->ref:Ljava/lang/Object;

    :cond_3b
    if-eqz v0, :cond_0

    .line 218
    iput-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->value:Ljava/lang/Object;

    :cond_3f
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 224
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I

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
            "()TE;"
        }
    .end annotation

    .line 227
    iget v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->index:I

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    invoke-static {v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->access$getAllocated$p(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;)I

    move-result v1

    if-ge v0, v1, :cond_2a

    .line 228
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->factory:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->key:Ljava/lang/Object;

    if-nez v1, :cond_17

    const-string v1, "key"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_17
    iget-object v2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->value:Ljava/lang/Object;

    if-nez v2, :cond_22

    const-string v2, "value"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_22
    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->findNext()V

    return-object v0

    .line 227
    :cond_2a
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()Ljava/lang/Void;
    .registers 2

    .line 231
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$noImpl()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic remove()V
    .registers 1

    .line 205
    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core$KeyValueIterator;->remove()Ljava/lang/Void;

    return-void
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap.Entry (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$Entry)
.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;
.super Ljava/lang/Object;
.source "ConcurrentWeakMap.kt"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lkotlin/jvm/internal/markers/KMutableMap$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;",
        "Lkotlin/jvm/internal/markers/KMutableMap$Entry;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\'\n\u0002\u0008\u000c\u0008\u0002\u0018\u0000*\u0004\u0008\u0002\u0010\u0001*\u0004\u0008\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00028\u0002\u0012\u0006\u0010\u0005\u001a\u00028\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000c\u001a\u00028\u00032\u0006\u0010\r\u001a\u00028\u0003H\u0016\u00a2\u0006\u0002\u0010\u000eR\u0016\u0010\u0004\u001a\u00028\u0002X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0005\u001a\u00028\u0003X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;",
        "K",
        "V",
        "",
        "key",
        "value",
        "<init>",
        "(Ljava/lang/Object;Ljava/lang/Object;)V",
        "getKey",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getValue",
        "setValue",
        "newValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 236
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$noImpl()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap.KeyValueSet (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$KeyValueSet)
.class final Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;
.super Lkotlin/collections/AbstractMutableSet;
.source "ConcurrentWeakMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableSet<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010)\n\u0000\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0002\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u000eJ\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0010H\u0096\u0002R \u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;",
        "E",
        "Lkotlin/collections/AbstractMutableSet;",
        "factory",
        "Lkotlin/Function2;",
        "<init>",
        "(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V",
        "size",
        "",
        "getSize",
        "()I",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "iterator",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final factory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    .line 239
    iput-object p1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    .line 241
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    .line 240
    iput-object p2, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;->factory:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 243
    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMapKt;->access$noImpl()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public getSize()I
    .registers 2

    .line 242
    iget-object v0, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->access$getCore$volatile$FU()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;->this$0:Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;

    iget-object v1, p0, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$KeyValueSet;->factory:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$Core;->keyValueIterator(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap$$ExternalSyntheticLambda0 (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->$r8$lambda$wWOgz_fafcTKYZPOtb-KQEFpkSE(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.debug.internal.ConcurrentWeakMap$$ExternalSyntheticLambda1 (kotlinx.coroutines.debug.internal.ConcurrentWeakMap$$ExternalSyntheticLambda1)
.class public final synthetic Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lkotlinx/coroutines/debug/internal/ConcurrentWeakMap;->$r8$lambda$zDoTVsE8Gqh91DxPQaAcfh1HRiM(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
