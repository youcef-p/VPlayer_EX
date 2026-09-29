###### Class org.qtproject.qt.android.BackgroundActionsTracker (org.qtproject.qt.android.BackgroundActionsTracker)
.class Lorg/qtproject/qt/android/BackgroundActionsTracker;
.super Ljava/lang/Object;
.source "BackgroundActionsTracker.java"


# instance fields
.field private final m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final m_backgroundActionsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxActions:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_maxActions:I

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_backgroundActionsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .registers 4

    .line 20
    iget v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_maxActions:I

    if-eqz v0, :cond_27

    if-nez p1, :cond_7

    goto :goto_27

    :cond_7
    if-lez v0, :cond_1d

    .line 23
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_maxActions:I

    if-lt v0, v1, :cond_1d

    .line 25
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_backgroundActionsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 28
    :cond_1d
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_backgroundActionsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 29
    iget-object p1, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_27
    :goto_27
    return-void
.end method

.method public getActionsCount()I
    .registers 2

    .line 41
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public processActions()V
    .registers 3

    .line 34
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_backgroundActionsQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 35
    iget-object v1, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_actionsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 36
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_13
    return-void
.end method

.method public setMaxAllowedActions(I)V
    .registers 2

    .line 16
    iput p1, p0, Lorg/qtproject/qt/android/BackgroundActionsTracker;->m_maxActions:I

    return-void
.end method
