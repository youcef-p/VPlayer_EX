###### Class kotlinx.coroutines.EventLoop (kotlinx.coroutines.EventLoop)
.class public abstract Lkotlinx/coroutines/EventLoop;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "EventLoop.common.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,547:1\n1#2:548\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008 \u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016J\u0006\u0010\u0011\u001a\u00020\u0007J\u0008\u0010\u0012\u001a\u00020\u0007H\u0016J\u0012\u0010\u0013\u001a\u00020\u00142\n\u0010\u0015\u001a\u0006\u0012\u0002\u0008\u00030\nJ\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\u0010\u0010\u001b\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0007J\u0010\u0010\u001c\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0007J\u0018\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0008\u0010\"\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\u00078TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00058TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0016\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\rR\u0011\u0010\u0017\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\rR\u0011\u0010\u0018\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/EventLoop;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "<init>",
        "()V",
        "useCount",
        "",
        "shared",
        "",
        "unconfinedQueue",
        "Lkotlin/collections/ArrayDeque;",
        "Lkotlinx/coroutines/DispatchedTask;",
        "processNextEvent",
        "isEmpty",
        "()Z",
        "nextTime",
        "getNextTime",
        "()J",
        "processUnconfinedEvent",
        "shouldBeProcessedFromContext",
        "dispatchUnconfined",
        "",
        "task",
        "isActive",
        "isUnconfinedLoopActive",
        "isUnconfinedQueueEmpty",
        "delta",
        "unconfined",
        "incrementUseCount",
        "decrementUseCount",
        "limitedParallelism",
        "parallelism",
        "",
        "name",
        "",
        "shutdown",
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
.field private shared:Z

.field private unconfinedQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useCount:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method

.method public static synthetic decrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 104
    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final delta(Z)J
    .registers 4

    if-eqz p1, :cond_8

    const-wide v0, 0x100000000L

    return-wide v0

    :cond_8
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static synthetic incrementUseCount$default(Lkotlinx/coroutines/EventLoop;ZILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 99
    :cond_7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final decrementUseCount(Z)V
    .registers 6

    .line 105
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_10

    goto :goto_2a

    .line 107
    :cond_10
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 108
    :cond_23
    :goto_23
    iget-boolean p1, p0, Lkotlinx/coroutines/EventLoop;->shared:Z

    if-eqz p1, :cond_2a

    .line 110
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->shutdown()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/DispatchedTask<",
            "*>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    .line 83
    :cond_b
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method protected getNextTime()J
    .registers 4

    .line 58
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_a

    return-wide v1

    .line 59
    :cond_a
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    return-wide v1

    :cond_11
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final incrementUseCount(Z)V
    .registers 6

    .line 100
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    if-nez p1, :cond_e

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lkotlinx/coroutines/EventLoop;->shared:Z

    :cond_e
    return-void
.end method

.method public final isActive()Z
    .registers 5

    .line 87
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method protected isEmpty()Z
    .registers 2

    .line 54
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v0

    return v0
.end method

.method public final isUnconfinedLoopActive()Z
    .registers 6

    .line 90
    iget-wide v0, p0, Lkotlinx/coroutines/EventLoop;->useCount:J

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lkotlinx/coroutines/EventLoop;->delta(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_c

    return v2

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isUnconfinedQueueEmpty()Z
    .registers 2

    .line 94
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public final limitedParallelism(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;
    .registers 3

    .line 115
    invoke-static {p1}, Lkotlinx/coroutines/internal/LimitedDispatcherKt;->checkParallelism(I)V

    .line 116
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/LimitedDispatcherKt;->namedOrThis(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    return-object p1
.end method

.method public processNextEvent()J
    .registers 3

    .line 50
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_c

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final processUnconfinedEvent()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lkotlinx/coroutines/EventLoop;->unconfinedQueue:Lkotlin/collections/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 64
    :cond_6
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    if-nez v0, :cond_f

    return v1

    .line 65
    :cond_f
    invoke-virtual {v0}, Lkotlinx/coroutines/DispatchedTask;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public shouldBeProcessedFromContext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method
