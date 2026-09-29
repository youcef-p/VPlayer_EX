###### Class org.qtproject.qt.android.QtSignalQueue (org.qtproject.qt.android.QtSignalQueue)
.class Lorg/qtproject/qt/android/QtSignalQueue;
.super Ljava/lang/Object;
.source "QtSignalQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;
    }
.end annotation


# instance fields
.field private m_queuedSignalListeners:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    return-void
.end method

.method static synthetic lambda$remove$0(ILorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;)Z
    .registers 2

    .line 57
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->id()I

    move-result p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method add(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;-><init>(Lorg/qtproject/qt/android/QtSignalQueue;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtSignalQueue;->add(Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;)V

    return-void
.end method

.method add(Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;)V
    .registers 3

    .line 50
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method connectQueuedSignalListeners(Lorg/qtproject/qt/android/QtQuickView;)V
    .registers 7

    .line 39
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 42
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;

    .line 43
    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->signalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->argTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->listener()Ljava/lang/Object;

    move-result-object v4

    .line 44
    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->id()I

    move-result v1

    .line 43
    invoke-virtual {p1, v2, v3, v4, v1}, Lorg/qtproject/qt/android/QtQuickView;->connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    goto :goto_f

    .line 47
    :cond_2f
    iget-object p1, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method remove(I)Z
    .registers 4

    .line 57
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue;->m_queuedSignalListeners:Ljava/util/Queue;

    new-instance v1, Lorg/qtproject/qt/android/QtSignalQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/qtproject/qt/android/QtSignalQueue$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtSignalQueue.SignalListenerInfo (org.qtproject.qt.android.QtSignalQueue$SignalListenerInfo)
.class Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;
.super Ljava/lang/Object;
.source "QtSignalQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtSignalQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalListenerInfo"
.end annotation


# instance fields
.field m_argTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field m_id:I

.field m_listener:Ljava/lang/Object;

.field m_signalName:Ljava/lang/String;

.field final synthetic this$0:Lorg/qtproject/qt/android/QtSignalQueue;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt/android/QtSignalQueue;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->this$0:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_signalName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_argTypes:[Ljava/lang/Class;

    .line 22
    iput-object p4, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_listener:Ljava/lang/Object;

    .line 23
    iput p5, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_id:I

    return-void
.end method


# virtual methods
.method public argTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_argTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public id()I
    .registers 2

    .line 32
    iget v0, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_id:I

    return v0
.end method

.method public listener()Ljava/lang/Object;
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_listener:Ljava/lang/Object;

    return-object v0
.end method

.method public signalName()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;->m_signalName:Ljava/lang/String;

    return-object v0
.end method

###### Class org.qtproject.qt.android.QtSignalQueue$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtSignalQueue$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtSignalQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/qtproject/qt/android/QtSignalQueue$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget v0, p0, Lorg/qtproject/qt/android/QtSignalQueue$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtSignalQueue;->lambda$remove$0(ILorg/qtproject/qt/android/QtSignalQueue$SignalListenerInfo;)Z

    move-result p1

    return p1
.end method
