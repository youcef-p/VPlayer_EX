###### Class org.qtproject.qt.android.QtQuickViewContent (org.qtproject.qt.android.QtQuickViewContent)
.class public abstract Lorg/qtproject/qt/android/QtQuickViewContent;
.super Ljava/lang/Object;
.source "QtQuickViewContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtQuickViewContent"

.field private static m_nextSignalId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private m_signalListenerIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

.field private m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

.field private m_viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/qtproject/qt/android/QtQuickView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_nextSignalId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalListenerIds:Ljava/util/HashSet;

    .line 28
    new-instance v0, Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtSignalQueue;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    return-void
.end method

.method static generateSignalId()I
    .registers 1

    .line 232
    sget-object v0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_nextSignalId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected attachView(Lorg/qtproject/qt/android/QtQuickView;)V
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_viewReference:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_13

    .line 83
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtQuickView;->setStatusChangeListener(Lorg/qtproject/qt/android/QtQmlStatusChangeListener;)V

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtSignalQueue;->connectQueuedSignalListeners(Lorg/qtproject/qt/android/QtQuickView;)V

    :cond_13
    return-void
.end method

.method protected attributes()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected connectSignalListener(Ljava/lang/String;Ljava/lang/Class;Lorg/qtproject/qt/android/QtSignalListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lorg/qtproject/qt/android/QtSignalListener<",
            "TT;>;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 180
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lorg/qtproject/qt/android/QtQuickViewContent;->connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 198
    invoke-static {}, Lorg/qtproject/qt/android/QtQuickViewContent;->generateSignalId()I

    move-result v0

    .line 199
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->isViewAttached()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 200
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v1

    .line 201
    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/qtproject/qt/android/QtQuickView;->connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 202
    iget-object p1, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalListenerIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return v0

    .line 204
    :cond_1b
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/qtproject/qt/android/QtSignalQueue;->add(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    return v0
.end method

.method protected detachView()V
    .registers 4

    .line 94
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 96
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalListenerIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 97
    invoke-virtual {v0, v2}, Lorg/qtproject/qt/android/QtQuickView;->disconnectSignalListener(I)Z

    goto :goto_c

    :cond_20
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtQuickView;->setStatusChangeListener(Lorg/qtproject/qt/android/QtQmlStatusChangeListener;)V

    .line 100
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 101
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    if-eqz v0, :cond_32

    .line 102
    sget-object v1, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    invoke-interface {v0, v1}, Lorg/qtproject/qt/android/QtQmlStatusChangeListener;->onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V

    :cond_32
    return-void
.end method

.method public disconnectSignalListener(I)Z
    .registers 5

    .line 221
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 222
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalListenerIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtQuickView;->disconnectSignalListener(I)Z

    move-result p1

    return p1

    .line 226
    :cond_18
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtSignalQueue;->remove(I)Z

    move-result p1

    return p1
.end method

.method public abstract getFilePath()Ljava/lang/String;
.end method

.method public abstract getLibraryName()Ljava/lang/String;
.end method

.method public abstract getModuleName()Ljava/lang/String;
.end method

.method protected getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-nez v0, :cond_f

    .line 158
    const-string p1, "QtQuickViewContent"

    const-string v0, "Cannot get property as the QQmlComponent is not loaded in a QtQuickView."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_f
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtQuickView;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getQuickView()Lorg/qtproject/qt/android/QtQuickView;
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_viewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/QtQuickView;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .registers 4

    .line 274
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 276
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtQuickView;->invokeMethod(Ljava/lang/String;)V

    return-void

    .line 278
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot call method "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " as the QQmlComponent is not loaded in a QtQuickView."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QtQuickViewContent"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 255
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtQuickView;->invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 259
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot call method "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " as the QQmlComponent is not loaded in a QtQuickView."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QtQuickViewContent"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isViewAttached()Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 130
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-nez v0, :cond_e

    .line 132
    const-string p1, "QtQuickViewContent"

    const-string p2, "Cannot set property as the QQmlComponent is not loaded in a QtQuickView."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 135
    :cond_e
    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtQuickView;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStatusChangeListener(Lorg/qtproject/qt/android/QtQmlStatusChangeListener;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickViewContent;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    .line 51
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->getQuickView()Lorg/qtproject/qt/android/QtQuickView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 53
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtQuickView;->setStatusChangeListener(Lorg/qtproject/qt/android/QtQmlStatusChangeListener;)V

    :cond_b
    return-void
.end method
