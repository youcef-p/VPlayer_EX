###### Class kotlinx.coroutines.internal.ThreadContextKt (kotlinx.coroutines.internal.ThreadContextKt)
.class public final Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u001a\u001c\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u001a\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"$\u0010\u0002\u001a\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\",\u0010\u0006\u001a \u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00070\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\" \u0010\u0008\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\t0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "NO_THREAD_ELEMENTS",
        "Lkotlinx/coroutines/internal/Symbol;",
        "countAll",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "findOne",
        "Lkotlinx/coroutines/ThreadContextElement;",
        "updateState",
        "Lkotlinx/coroutines/internal/ThreadState;",
        "threadContextElements",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "updateThreadContext",
        "countOrElement",
        "restoreThreadContext",
        "",
        "oldState",
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
.field public static final NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

.field private static final countAll:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final findOne:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final updateState:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/internal/ThreadState;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlinx/coroutines/internal/ThreadState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BWRz50x54qs2OVxeNX6EXirG04g(Lkotlinx/coroutines/ThreadContextElement;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/ThreadContextElement;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne$lambda$1(Lkotlinx/coroutines/ThreadContextElement;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/ThreadContextElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JV-_KVVI_n23GsB5XC6MwwiLObk(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll$lambda$0(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LvERHGT-iz1zuawbtmH23u2Uqo8(Lkotlinx/coroutines/internal/ThreadState;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/ThreadState;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState$lambda$2(Lkotlinx/coroutines/internal/ThreadState;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/ThreadState;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 7
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    .line 31
    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lkotlin/jvm/functions/Function2;

    .line 41
    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lkotlin/jvm/functions/Function2;

    .line 48
    new-instance v0, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method private static final countAll$lambda$0(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;
    .registers 3

    .line 32
    instance-of v0, p1, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz v0, :cond_1d

    .line 33
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/lang/Integer;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    const/4 v0, 0x1

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_14
    move p0, v0

    :goto_15
    if-nez p0, :cond_18

    return-object p1

    :cond_18
    add-int/2addr p0, v0

    .line 34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1d
    return-object p0
.end method

.method private static final findOne$lambda$1(Lkotlinx/coroutines/ThreadContextElement;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/ThreadContextElement;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ")",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 43
    :cond_3
    instance-of p0, p1, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz p0, :cond_a

    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    return-object p1

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .registers 4

    .line 81
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_5

    return-void

    .line 82
    :cond_5
    instance-of v0, p1, Lkotlinx/coroutines/internal/ThreadState;

    if-eqz v0, :cond_f

    .line 84
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/ThreadState;->restore(Lkotlin/coroutines/CoroutineContext;)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 89
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->findOne:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/ThreadContextElement;

    .line 90
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/ThreadContextElement;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    return-void
.end method

.method public static final threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->countAll:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final updateState$lambda$2(Lkotlinx/coroutines/internal/ThreadState;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/ThreadState;
    .registers 3

    .line 49
    instance-of v0, p1, Lkotlinx/coroutines/ThreadContextElement;

    if-eqz v0, :cond_f

    .line 50
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    iget-object v0, p0, Lkotlinx/coroutines/internal/ThreadState;->context:Lkotlin/coroutines/CoroutineContext;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/coroutines/internal/ThreadState;->append(Lkotlinx/coroutines/ThreadContextElement;Ljava/lang/Object;)V

    :cond_f
    return-object p0
.end method

.method public static final updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_6

    .line 61
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_10

    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->NO_THREAD_ELEMENTS:Lkotlinx/coroutines/internal/Symbol;

    return-object p0

    .line 66
    :cond_10
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    .line 68
    new-instance v0, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ThreadState;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->updateState:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 73
    :cond_26
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 74
    invoke-interface {p1, p0}, Lkotlinx/coroutines/ThreadContextElement;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

###### Class kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda0 (kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda0;
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
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt;->$r8$lambda$JV-_KVVI_n23GsB5XC6MwwiLObk(Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda1 (kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda1)
.class public final synthetic Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda1;
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
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt;->$r8$lambda$BWRz50x54qs2OVxeNX6EXirG04g(Lkotlinx/coroutines/ThreadContextElement;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/ThreadContextElement;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda2 (kotlinx.coroutines.internal.ThreadContextKt$$ExternalSyntheticLambda2)
.class public final synthetic Lkotlinx/coroutines/internal/ThreadContextKt$$ExternalSyntheticLambda2;
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
    check-cast p1, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-static {p1, p2}, Lkotlinx/coroutines/internal/ThreadContextKt;->$r8$lambda$LvERHGT-iz1zuawbtmH23u2Uqo8(Lkotlinx/coroutines/internal/ThreadState;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlinx/coroutines/internal/ThreadState;

    move-result-object p1

    return-object p1
.end method
