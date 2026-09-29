###### Class org.qtproject.qt.android.QtServiceBase (org.qtproject.qt.android.QtServiceBase)
.class public Lorg/qtproject/qt/android/QtServiceBase;
.super Landroid/app/Service;
.source "QtServiceBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 64
    monitor-enter p0

    .line 65
    :try_start_1
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public onCreate()V
    .registers 5

    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 21
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    const-string v1, "Qt JAVA"

    if-eqz v0, :cond_13

    .line 22
    const-string v0, "A QtService tried to start in the same process as an initiated QtActivity. That is not supported. This results in the service functioning as an Android Service detached from Qt."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 29
    :cond_13
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    .line 32
    :try_start_16
    invoke-static {p0}, Lorg/qtproject/qt/android/QtServiceLoader;->getServiceLoader(Landroid/app/Service;)Lorg/qtproject/qt/android/QtServiceLoader;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->loadQtLibraries()Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    move-result-object v2

    .line 35
    sget-object v3, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    if-ne v2, v3, :cond_2b

    .line 36
    const-string v0, "QtServiceLoader: failed to load Qt libraries"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtServiceBase;->stopSelf()V

    return-void

    .line 41
    :cond_2b
    sget-object v3, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    if-ne v2, v3, :cond_3e

    .line 42
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V
    :try_end_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_3e} :catch_3f

    :cond_3e
    return-void

    :catch_3f
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtServiceBase;->stopSelf()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 56
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_e

    .line 57
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQtNativeApplication()V

    :cond_e
    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    const/4 v0, 0x0

    .line 59
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
