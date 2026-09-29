###### Class kotlinx.coroutines.internal.DispatchedContinuationKt (kotlinx.coroutines.internal.DispatchedContinuationKt)
.class public final Lkotlinx/coroutines/internal/DispatchedContinuationKt;
.super Ljava/lang/Object;
.source "DispatchedContinuation.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,297:1\n277#1,5:305\n282#1,12:311\n294#1:379\n281#1:381\n282#1,12:383\n294#1:412\n207#2,7:298\n214#2,23:326\n237#2,2:359\n239#2:363\n217#2:364\n219#2:380\n1#3:310\n1#3:382\n1#3:413\n186#4,3:323\n189#4,14:365\n186#4,17:395\n186#4,17:414\n103#5,10:349\n114#5,2:361\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n262#1:305,5\n262#1:311,12\n262#1:379\n267#1:381\n267#1:383,12\n267#1:412\n262#1:298,7\n262#1:326,23\n262#1:359,2\n262#1:363\n262#1:364\n262#1:380\n262#1:310\n267#1:382\n262#1:323,3\n262#1:365,14\n267#1:395,17\n293#1:414,17\n262#1:349,10\n262#1:361,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a+\u0010\u0003\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0005*\u0008\u0012\u0004\u0012\u0002H\u00050\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00050\u0008H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u0012\u0010\n\u001a\u00020\u000b*\u0008\u0012\u0004\u0012\u00020\u00040\u000cH\u0000\u001a;\u0010\r\u001a\u00020\u000b*\u0006\u0012\u0002\u0008\u00030\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0014H\u0082\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "UNDEFINED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "REUSABLE_CLAIMED",
        "resumeCancellableWith",
        "",
        "T",
        "Lkotlin/coroutines/Continuation;",
        "result",
        "Lkotlin/Result;",
        "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V",
        "yieldUndispatched",
        "",
        "Lkotlinx/coroutines/internal/DispatchedContinuation;",
        "executeUnconfined",
        "contState",
        "",
        "mode",
        "",
        "doYield",
        "block",
        "Lkotlin/Function0;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

.field private static final UNDEFINED:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;

    .line 10
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REUSABLE_CLAIMED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->REUSABLE_CLAIMED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;
    .registers 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method private static final executeUnconfined(Lkotlinx/coroutines/internal/DispatchedContinuation;Ljava/lang/Object;IZLkotlin/jvm/functions/Function0;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/DispatchedContinuation<",
            "*>;",
            "Ljava/lang/Object;",
            "IZ",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 281
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 282
    :cond_10
    :goto_10
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_20

    .line 284
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result p3

    if-eqz p3, :cond_20

    return v1

    .line 285
    :cond_20
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result p3

    const/4 v2, 0x1

    if-eqz p3, :cond_31

    .line 287
    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 288
    iput p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 289
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    return v2

    .line 293
    :cond_31
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    .line 414
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 416
    :try_start_36
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 419
    :cond_39
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result p1
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_40

    if-nez p1, :cond_39

    goto :goto_44

    :catchall_40
    move-exception p1

    .line 426
    :try_start_41
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_48

    .line 428
    :goto_44
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    return v1

    :catchall_48
    move-exception p0

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw p0
.end method

.method static synthetic executeUnconfined$default(Lkotlinx/coroutines/internal/DispatchedContinuation;Ljava/lang/Object;IZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Z
    .registers 8

    and-int/lit8 p5, p5, 0x4

    const/4 p6, 0x0

    if-eqz p5, :cond_6

    move p3, p6

    .line 281
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p5

    if-eqz p5, :cond_16

    const/4 p5, -0x1

    if-eq p2, p5, :cond_10

    goto :goto_16

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 282
    :cond_16
    :goto_16
    sget-object p5, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {p5}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object p5

    if-eqz p3, :cond_25

    .line 284
    invoke-virtual {p5}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result p3

    if-eqz p3, :cond_25

    return p6

    .line 285
    :cond_25
    invoke-virtual {p5}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_36

    .line 287
    iput-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 288
    iput p2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 289
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {p5, p0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    return v0

    .line 293
    :cond_36
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    .line 414
    invoke-virtual {p5, v0}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 416
    :try_start_3b
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 419
    :cond_3e
    invoke-virtual {p5}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result p1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_45

    if-nez p1, :cond_3e

    goto :goto_49

    :catchall_45
    move-exception p1

    .line 426
    :try_start_46
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4d

    .line 428
    :goto_49
    invoke-virtual {p5, v0}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    return p6

    :catchall_4d
    move-exception p0

    invoke-virtual {p5, v0}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw p0
.end method

.method public static final resumeCancellableWith(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 262
    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-eqz v0, :cond_c3

    check-cast p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 298
    invoke-static {p1}, Lkotlinx/coroutines/CompletionStateKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 300
    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 301
    iput v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 302
    iget-object p1, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_bd

    .line 309
    :cond_28
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    .line 311
    sget-object v1, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v1}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 316
    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 317
    iput v2, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 318
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    goto/16 :goto_bd

    .line 322
    :cond_42
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/DispatchedTask;

    .line 323
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 336
    :try_start_48
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v5, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v4, v5}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_7a

    .line 337
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 338
    invoke-interface {v4}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    .line 339
    move-object v4, p1

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v4}, Lkotlinx/coroutines/internal/DispatchedContinuation;->cancelCompletedResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 340
    check-cast p0, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_a2

    .line 348
    :cond_7a
    iget-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    iget-object v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .line 349
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 350
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 351
    sget-object v6, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-eq v4, v6, :cond_8f

    .line 353
    invoke-static {v0, v5, v4}, Lkotlinx/coroutines/CoroutineContextKt;->updateUndispatchedCompletion(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Lkotlinx/coroutines/UndispatchedCoroutine;

    move-result-object v0
    :try_end_8e
    .catchall {:try_start_48 .. :try_end_8e} :catchall_b6

    goto :goto_90

    :cond_8f
    const/4 v0, 0x0

    .line 359
    :goto_90
    :try_start_90
    iget-object p0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 360
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_a9

    if-eqz v0, :cond_9f

    .line 361
    :try_start_99
    invoke-virtual {v0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 362
    :cond_9f
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 367
    :cond_a2
    :goto_a2
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result p0

    if-nez p0, :cond_a2

    goto :goto_ba

    :catchall_a9
    move-exception p0

    if-eqz v0, :cond_b2

    .line 361
    invoke-virtual {v0}, Lkotlinx/coroutines/UndispatchedCoroutine;->clearThreadContext()Z

    move-result p1

    if-eqz p1, :cond_b5

    .line 362
    :cond_b2
    invoke-static {v5, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :cond_b5
    throw p0
    :try_end_b6
    .catchall {:try_start_99 .. :try_end_b6} :catchall_b6

    :catchall_b6
    move-exception p0

    .line 374
    :try_start_b7
    invoke-virtual {v3, p0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_be

    .line 376
    :goto_ba
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    :goto_bd
    return-void

    :catchall_be
    move-exception p0

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw p0

    .line 263
    :cond_c3
    invoke-interface {p0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final yieldUndispatched(Lkotlinx/coroutines/internal/DispatchedContinuation;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/DispatchedContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 267
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 381
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    .line 383
    sget-object v1, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v1}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->isUnconfinedQueueEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    return v3

    .line 386
    :cond_13
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_25

    .line 388
    iput-object v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 389
    iput v4, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;->resumeMode:I

    .line 390
    check-cast p0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v1, p0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    move v3, v4

    goto :goto_3c

    .line 394
    :cond_25
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    .line 395
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 268
    :try_start_2b
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->run()V

    .line 400
    :cond_2e
    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result p0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_35

    if-nez p0, :cond_2e

    goto :goto_39

    :catchall_35
    move-exception p0

    .line 407
    :try_start_36
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 409
    :goto_39
    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    :goto_3c
    return v3

    :catchall_3d
    move-exception p0

    invoke-virtual {v1, v4}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw p0
.end method
