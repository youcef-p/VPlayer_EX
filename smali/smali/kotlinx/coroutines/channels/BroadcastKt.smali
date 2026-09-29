###### Class kotlinx.coroutines.channels.BroadcastKt (kotlinx.coroutines.channels.BroadcastKt)
.class public final Lkotlinx/coroutines/channels/BroadcastKt;
.super Ljava/lang/Object;
.source "Broadcast.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBroadcast.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n*L\n1#1,124:1\n46#2,4:125\n*S KotlinDebug\n*F\n+ 1 Broadcast.kt\nkotlinx/coroutines/channels/BroadcastKt\n*L\n21#1:125,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a2\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u001a\u009b\u0001\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072-\u0008\u0002\u0010\u000b\u001a\'\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\rj\u0004\u0018\u0001`\u000c2/\u0008\u0001\u0010\u0013\u001a)\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u0015\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0014\u00a2\u0006\u0002\u0008\u0018H\u0007\u00a2\u0006\u0002\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "broadcast",
        "Lkotlinx/coroutines/channels/BroadcastChannel;",
        "E",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "capacity",
        "",
        "start",
        "Lkotlinx/coroutines/CoroutineStart;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "onCompletion",
        "Lkotlinx/coroutines/CompletionHandler;",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/BroadcastChannel;",
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


# direct methods
.method public static synthetic $r8$lambda$HZeuuBCWkfg6xjDbd9YApYs80LQ(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/BroadcastKt;->broadcast$lambda$1(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final broadcast(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/BroadcastChannel;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/CoroutineContext;",
            "I",
            "Lkotlinx/coroutines/CoroutineStart;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .line 44
    invoke-static {p0, p1}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    .line 45
    invoke-static {p2}, Lkotlinx/coroutines/channels/BroadcastChannelKt;->BroadcastChannel(I)Lkotlinx/coroutines/channels/BroadcastChannel;

    move-result-object p1

    .line 46
    invoke-virtual {p3}, Lkotlinx/coroutines/CoroutineStart;->isLazy()Z

    move-result p2

    if-eqz p2, :cond_16

    .line 47
    new-instance p2, Lkotlinx/coroutines/channels/LazyBroadcastCoroutine;

    invoke-direct {p2, p0, p1, p5}, Lkotlinx/coroutines/channels/LazyBroadcastCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lkotlinx/coroutines/channels/BroadcastCoroutine;

    goto :goto_1c

    .line 48
    :cond_16
    new-instance p2, Lkotlinx/coroutines/channels/BroadcastCoroutine;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lkotlinx/coroutines/channels/BroadcastCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/BroadcastChannel;Z)V

    :goto_1c
    if-eqz p4, :cond_21

    .line 49
    invoke-virtual {p2, p4}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 50
    :cond_21
    invoke-virtual {p2, p3, p2, p5}, Lkotlinx/coroutines/channels/BroadcastCoroutine;->start(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 51
    check-cast p2, Lkotlinx/coroutines/channels/BroadcastChannel;

    return-object p2
.end method

.method public static final broadcast(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;I",
            "Lkotlinx/coroutines/CoroutineStart;",
            ")",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "BroadcastChannel is deprecated in the favour of SharedFlow and is no longer supported"
    .end annotation

    .line 21
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    .line 125
    sget-object v1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance v2, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;)V

    check-cast v2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 128
    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 21
    invoke-static {v0, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    .line 25
    new-instance v7, Lkotlinx/coroutines/channels/BroadcastKt$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lkotlinx/coroutines/channels/BroadcastKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V

    new-instance v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v3 .. v10}, Lkotlinx/coroutines/channels/BroadcastKt;->broadcast$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/BroadcastChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic broadcast$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/BroadcastChannel;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_8

    .line 38
    sget-object p1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_d

    const/4 p2, 0x1

    :cond_d
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_13

    .line 40
    sget-object p3, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    :cond_13
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_18

    const/4 p4, 0x0

    :cond_18
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 35
    invoke-static/range {p2 .. p7}, Lkotlinx/coroutines/channels/BroadcastKt;->broadcast(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/BroadcastChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic broadcast$default(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlinx/coroutines/CoroutineStart;ILjava/lang/Object;)Lkotlinx/coroutines/channels/BroadcastChannel;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_5

    const/4 p1, 0x1

    :cond_5
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_b

    .line 19
    sget-object p2, Lkotlinx/coroutines/CoroutineStart;->LAZY:Lkotlinx/coroutines/CoroutineStart;

    .line 15
    :cond_b
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt;->broadcast(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;

    move-result-object p0

    return-object p0
.end method

.method private static final broadcast$lambda$1(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)Lkotlin/Unit;
    .registers 2

    .line 25
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class kotlinx.coroutines.channels.BroadcastKt.AnonymousClass2 (kotlinx.coroutines.channels.BroadcastKt$broadcast$2)
.class final Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Broadcast.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/BroadcastKt;->broadcast(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlinx/coroutines/CoroutineStart;)Lkotlinx/coroutines/channels/BroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "E",
        "Lkotlinx/coroutines/channels/ProducerScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2"
    f = "Broadcast.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x1a,
        0x1b
    }
    m = "invokeSuspend"
    n = {
        "$this$broadcast",
        "$this$broadcast"
    }
    s = {
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/ReceiveChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->$channel:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;

    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->$channel:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 25
    iget v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2f

    if-eq v1, v3, :cond_23

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_19
    move-object p1, v4

    goto :goto_3c

    :cond_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_2f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 26
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->$channel:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    :goto_3c
    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->label:I

    invoke-interface {v1, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4c

    goto :goto_6a

    :cond_4c
    move-object v6, v4

    move-object v4, p1

    move-object p1, v6

    :goto_4f
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 27
    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$2;->label:I

    invoke-interface {v4, p1, v5}, Lkotlinx/coroutines/channels/ProducerScope;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_19

    :goto_6a
    return-object v0

    .line 29
    :cond_6b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

###### Class kotlinx.coroutines.channels.BroadcastKt$$ExternalSyntheticLambda0 (kotlinx.coroutines.channels.BroadcastKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlinx/coroutines/channels/BroadcastKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlinx/coroutines/channels/ReceiveChannel;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ReceiveChannel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lkotlinx/coroutines/channels/BroadcastKt$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/channels/ReceiveChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/BroadcastKt;->$r8$lambda$HZeuuBCWkfg6xjDbd9YApYs80LQ(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
