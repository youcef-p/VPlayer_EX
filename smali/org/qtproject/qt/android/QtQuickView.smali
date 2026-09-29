###### Class org.qtproject.qt.android.QtQuickView (org.qtproject.qt.android.QtQuickView)
.class public Lorg/qtproject/qt/android/QtQuickView;
.super Lorg/qtproject/qt/android/QtView;
.source "QtQuickView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtQuickView"


# instance fields
.field private m_hasQueuedStatus:Z

.field private m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

.field private m_loadedComponent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/qtproject/qt/android/QtQuickViewContent;",
            ">;"
        }
    .end annotation
.end field

.field private m_qmlImportPaths:[Ljava/lang/String;

.field private m_qmlUri:Ljava/lang/String;

.field private m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

.field private m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 99
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    .line 33
    sget-object p1, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    .line 36
    new-instance p1, Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtSignalQueue;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/QtQuickView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p3}, Lorg/qtproject/qt/android/QtView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    .line 33
    sget-object p1, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    .line 36
    new-instance p1, Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtSignalQueue;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    if-eqz p2, :cond_23

    .line 83
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_23

    .line 87
    iput-object p2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    return-void

    .line 84
    :cond_23
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtQuickView: argument \'qmlUri\' may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleStatusChange(I)V
    .registers 3

    .line 374
    :try_start_0
    invoke-static {p1}, Lorg/qtproject/qt/android/QtQmlStatus;->fromInt(I)Lorg/qtproject/qt/android/QtQmlStatus;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p1

    .line 376
    sget-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    iput-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    .line 377
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 380
    :goto_f
    iget-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    if-nez p1, :cond_17

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    goto :goto_1c

    .line 383
    :cond_17
    iget-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtQuickView;->sendStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V

    :goto_1c
    return-void
.end method

.method private hasUnderlyingView()Z
    .registers 5

    .line 159
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private sendStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V
    .registers 4

    .line 388
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    if-eqz v0, :cond_1d

    .line 389
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_loadedComponent:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/QtQuickViewContent;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez v0, :cond_18

    .line 391
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/QtQmlStatusChangeListener;->onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V

    return-void

    .line 393
    :cond_18
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    invoke-interface {v1, p1, v0}, Lorg/qtproject/qt/android/QtQmlStatusChangeListener;->onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;Lorg/qtproject/qt/android/QtQuickViewContent;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method native addRootObjectSignalListener(JLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "I)Z"
        }
    .end annotation
.end method

.method public connectSignalListener(Ljava/lang/String;Ljava/lang/Class;Lorg/qtproject/qt/android/QtSignalListener;)I
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

    .line 241
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0, p3}, Lorg/qtproject/qt/android/QtQuickView;->connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 5
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

    .line 258
    invoke-static {}, Lorg/qtproject/qt/android/QtQuickViewContent;->generateSignalId()I

    move-result v0

    .line 259
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/QtQuickView;->connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    return v0
.end method

.method connectSignalListener(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V
    .registers 13
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

    .line 277
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtQuickView;->hasUnderlyingView()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 278
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/qtproject/qt/android/QtQuickView;->addRootObjectSignalListener(JLjava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)Z

    return-void

    :cond_13
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    .line 280
    iget-object p1, v1, Lorg/qtproject/qt/android/QtQuickView;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/qtproject/qt/android/QtSignalQueue;->add(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;I)V

    return-void
.end method

.method native createQuickView(Ljava/lang/String;IIJJ[Ljava/lang/String;)V
.end method

.method protected createWindow(J)V
    .registers 12

    .line 178
    iget-object v1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v6

    iget-object v8, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v8}, Lorg/qtproject/qt/android/QtQuickView;->createQuickView(Ljava/lang/String;IIJJ[Ljava/lang/String;)V

    return-void
.end method

.method public disconnectSignalListener(I)Z
    .registers 4

    .line 295
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtQuickView;->hasUnderlyingView()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 296
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/qtproject/qt/android/QtQuickView;->removeRootObjectSignalListener(JI)Z

    move-result p1

    return p1

    .line 298
    :cond_f
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtSignalQueue;->remove(I)Z

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lorg/qtproject/qt/android/QtQuickView;->getRootObjectProperty(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method native getRootObjectProperty(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method public getStatus()Lorg/qtproject/qt/android/QtQmlStatus;
    .registers 2

    .line 318
    iget-object v0, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    return-object v0
.end method

.method native invokeMethod(JLjava/lang/String;[Ljava/lang/Object;)V
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .registers 5

    .line 368
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p1, v2}, Lorg/qtproject/qt/android/QtQuickView;->invokeMethod(JLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public invokeMethod(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 356
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/qtproject/qt/android/QtQuickView;->invokeMethod(JLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public loadContent(Lorg/qtproject/qt/android/QtQuickViewContent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/qtproject/qt/android/QtQuickViewContent;",
            ">(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtQuickView;->loadContent(Lorg/qtproject/qt/android/QtQuickViewContent;[Ljava/lang/String;)V

    return-void
.end method

.method public loadContent(Lorg/qtproject/qt/android/QtQuickViewContent;[Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/qtproject/qt/android/QtQuickViewContent;",
            ">(TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtQuickViewContent;->getLibraryName()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtQuickViewContent;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5d

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5d

    if-eqz v1, :cond_55

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    .line 131
    iput-object v1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    .line 134
    iget-object p2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_loadedComponent:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_23

    .line 135
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 137
    :cond_23
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_loadedComponent:Ljava/lang/ref/WeakReference;

    .line 138
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtQuickViewContent;->detachView()V

    .line 139
    invoke-virtual {p1, p0}, Lorg/qtproject/qt/android/QtQuickViewContent;->attachView(Lorg/qtproject/qt/android/QtQuickView;)V

    .line 144
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_3e

    .line 145
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtQuickView;->loadQtLibraries(Ljava/lang/String;)V

    return-void

    .line 147
    :cond_3e
    iget-object v2, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlUri:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v7

    iget-object v9, p0, Lorg/qtproject/qt/android/QtQuickView;->m_qmlImportPaths:[Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/qtproject/qt/android/QtQuickView;->createQuickView(Ljava/lang/String;IIJJ[Ljava/lang/String;)V

    return-void

    .line 127
    :cond_55
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtQuickViewContent: return value of getFilePath() may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_5d
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtQuickViewContent: return value of getLibraryName() may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtView;->onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    return-void
.end method

.method public bridge synthetic onLayout(ZIIII)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 27
    invoke-super/range {p0 .. p5}, Lorg/qtproject/qt/android/QtView;->onLayout(ZIIII)V

    return-void
.end method

.method native removeRootObjectSignalListener(JI)Z
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 199
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQuickView;->getWindowReference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/qtproject/qt/android/QtQuickView;->setRootObjectProperty(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method native setRootObjectProperty(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method public setStatusChangeListener(Lorg/qtproject/qt/android/QtQmlStatusChangeListener;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_statusChangeListener:Lorg/qtproject/qt/android/QtQmlStatusChangeListener;

    .line 330
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    if-eqz p1, :cond_e

    .line 331
    iget-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_lastStatus:Lorg/qtproject/qt/android/QtQmlStatus;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtQuickView;->sendStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_hasQueuedStatus:Z

    :cond_e
    return-void
.end method

.method setWindowReference(J)V
    .registers 3

    .line 154
    invoke-super {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->setWindowReference(J)V

    .line 155
    iget-object p1, p0, Lorg/qtproject/qt/android/QtQuickView;->m_signalQueue:Lorg/qtproject/qt/android/QtSignalQueue;

    invoke-virtual {p1, p0}, Lorg/qtproject/qt/android/QtSignalQueue;->connectQueuedSignalListeners(Lorg/qtproject/qt/android/QtQuickView;)V

    return-void
.end method
