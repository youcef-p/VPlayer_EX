###### Class org.qtproject.qt.android.QtThread (org.qtproject.qt.android.QtThread)
.class Lorg/qtproject/qt/android/QtThread;
.super Ljava/lang/Object;
.source "QtThread.java"


# instance fields
.field private m_exit:Z

.field private final m_pendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final m_qtThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 12
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/qtproject/qt/android/QtThread$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtThread$1;-><init>(Lorg/qtproject/qt/android/QtThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    .line 34
    const-string v1, "qtMainLoopThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtThread;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    return p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;
    .registers 1

    .line 9
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;
    .registers 1

    .line 9
    iget-object p0, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic lambda$run$0(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .registers 2

    .line 57
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 58
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method


# virtual methods
.method exit()V
    .registers 3

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtThread;->m_exit:Z

    .line 72
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 73
    :try_start_6
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 74
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_17

    .line 76
    :try_start_c
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :catchall_17
    move-exception v1

    .line 74
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method isAlive()Z
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method

.method post(Ljava/lang/Runnable;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 40
    :try_start_3
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 42
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method run(Ljava/lang/Runnable;)V
    .registers 6

    .line 54
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 55
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 56
    :try_start_9
    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread;->m_pendingRunnables:Ljava/util/ArrayList;

    new-instance v3, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0}, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object p1, p0, Lorg/qtproject/qt/android/QtThread;->m_qtThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_22

    .line 63
    :try_start_19
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void

    :catchall_22
    move-exception p1

    .line 61
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method sleep(I)V
    .registers 4

    int-to-long v0, p1

    .line 47
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    return-void

    :catch_5
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtThread.AnonymousClass1 (org.qtproject.qt.android.QtThread$1)
.class Lorg/qtproject/qt/android/QtThread$1;
.super Ljava/lang/Object;
.source "QtThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtThread;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtThread;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtThread;->access$000(Lorg/qtproject/qt/android/QtThread;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 18
    :try_start_8
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtThread;->access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_50

    .line 19
    :try_start_f
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 20
    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtThread;->access$100(Lorg/qtproject/qt/android/QtThread;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 21
    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    iget-object v2, p0, Lorg/qtproject/qt/android/QtThread$1;->this$0:Lorg/qtproject/qt/android/QtThread;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtThread;->access$200(Lorg/qtproject/qt/android/QtThread;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 23
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_f .. :try_end_39} :catchall_4d

    .line 24
    :try_start_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 25
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_4c} :catch_50

    goto :goto_3d

    :catchall_4d
    move-exception v1

    .line 23
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw v1
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_50} :catch_50

    :catch_50
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_55
    return-void
.end method

###### Class org.qtproject.qt.android.QtThread$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtThread$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;

.field public final synthetic f$1:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Runnable;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtThread$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtThread;->lambda$run$0(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
