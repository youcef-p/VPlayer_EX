###### Class androidx.lifecycle.ComputableLiveData (androidx.lifecycle.ComputableLiveData)
.class public abstract Landroidx/lifecycle/ComputableLiveData;
.super Ljava/lang/Object;
.source "ComputableLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\r\u0010\u001c\u001a\u00028\u0000H%\u00a2\u0006\u0002\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u00158\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\u00158\u0000X\u0081\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0019\u0010\u0017\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/lifecycle/ComputableLiveData;",
        "T",
        "",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "<init>",
        "(Ljava/util/concurrent/Executor;)V",
        "getExecutor$lifecycle_livedata",
        "()Ljava/util/concurrent/Executor;",
        "_liveData",
        "Landroidx/lifecycle/LiveData;",
        "liveData",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "invalid",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getInvalid$lifecycle_livedata",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "computing",
        "getComputing$lifecycle_livedata",
        "refreshRunnable",
        "Ljava/lang/Runnable;",
        "getRefreshRunnable$lifecycle_livedata$annotations",
        "()V",
        "invalidationRunnable",
        "getInvalidationRunnable$lifecycle_livedata$annotations",
        "invalidate",
        "",
        "compute",
        "()Ljava/lang/Object;",
        "lifecycle-livedata"
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
.field private final _liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final computing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final invalidationRunnable:Ljava/lang/Runnable;

.field private final liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final refreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$3YPDTAMNTCGT-z9DkpLbjudOC6w(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 1

    invoke-static {p0}, Landroidx/lifecycle/ComputableLiveData;->refreshRunnable$lambda$0(Landroidx/lifecycle/ComputableLiveData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XOqFMu6PZ3VOK6RxhAtBHvr7J-s(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 1

    invoke-static {p0}, Landroidx/lifecycle/ComputableLiveData;->invalidationRunnable$lambda$0(Landroidx/lifecycle/ComputableLiveData;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 3

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->executor:Ljava/util/concurrent/Executor;

    .line 47
    new-instance p1, Landroidx/lifecycle/ComputableLiveData$_liveData$1;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ComputableLiveData$_liveData$1;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->_liveData:Landroidx/lifecycle/LiveData;

    .line 53
    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->liveData:Landroidx/lifecycle/LiveData;

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance p1, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->refreshRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance p1, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/ComputableLiveData;)V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_d

    .line 44
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string p2, "getIOThreadExecutor(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0, p1}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static synthetic getInvalidationRunnable$lifecycle_livedata$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getRefreshRunnable$lifecycle_livedata$annotations()V
    .registers 0

    return-void
.end method

.method private static final invalidationRunnable$lambda$0(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 5

    .line 94
    invoke-virtual {p0}, Landroidx/lifecycle/ComputableLiveData;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->hasActiveObservers()Z

    move-result v0

    .line 95
    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 97
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/lifecycle/ComputableLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1b
    return-void
.end method

.method private static final refreshRunnable$lambda$0(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 6

    .line 64
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    move v3, v1

    .line 68
    :goto_c
    :try_start_c
    iget-object v4, p0, Landroidx/lifecycle/ComputableLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 70
    invoke-virtual {p0}, Landroidx/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v0

    move v3, v2

    goto :goto_c

    :cond_1a
    if-eqz v3, :cond_23

    .line 73
    invoke-virtual {p0}, Landroidx/lifecycle/ComputableLiveData;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    .line 77
    :cond_23
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move v1, v3

    goto :goto_31

    :catchall_2a
    move-exception v0

    iget-object p0, p0, Landroidx/lifecycle/ComputableLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_31
    :goto_31
    if-eqz v1, :cond_3b

    .line 87
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3b
    return-void
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getComputing$lifecycle_livedata()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .line 55
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getExecutor$lifecycle_livedata()Ljava/util/concurrent/Executor;
    .registers 2

    .line 44
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInvalid$lifecycle_livedata()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .line 54
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public getLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData;->liveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .line 108
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class androidx.lifecycle.ComputableLiveData$$ExternalSyntheticLambda0 (androidx.lifecycle.ComputableLiveData$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/ComputableLiveData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-static {v0}, Landroidx/lifecycle/ComputableLiveData;->$r8$lambda$3YPDTAMNTCGT-z9DkpLbjudOC6w(Landroidx/lifecycle/ComputableLiveData;)V

    return-void
.end method

###### Class androidx.lifecycle.ComputableLiveData$$ExternalSyntheticLambda1 (androidx.lifecycle.ComputableLiveData$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/ComputableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/ComputableLiveData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-static {v0}, Landroidx/lifecycle/ComputableLiveData;->$r8$lambda$XOqFMu6PZ3VOK6RxhAtBHvr7J-s(Landroidx/lifecycle/ComputableLiveData;)V

    return-void
.end method

###### Class androidx.lifecycle.ComputableLiveData$_liveData$1 (androidx.lifecycle.ComputableLiveData$_liveData$1)
.class public final Landroidx/lifecycle/ComputableLiveData$_liveData$1;
.super Landroidx/lifecycle/LiveData;
.source "ComputableLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0014\u00a8\u0006\u0004"
    }
    d2 = {
        "androidx/lifecycle/ComputableLiveData$_liveData$1",
        "Landroidx/lifecycle/LiveData;",
        "onActive",
        "",
        "lifecycle-livedata"
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
.field final synthetic this$0:Landroidx/lifecycle/ComputableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/ComputableLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/ComputableLiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/ComputableLiveData<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    .line 47
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActive()V
    .registers 3

    .line 49
    iget-object v0, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/ComputableLiveData;->getExecutor$lifecycle_livedata()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/ComputableLiveData$_liveData$1;->this$0:Landroidx/lifecycle/ComputableLiveData;

    iget-object v1, v1, Landroidx/lifecycle/ComputableLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
