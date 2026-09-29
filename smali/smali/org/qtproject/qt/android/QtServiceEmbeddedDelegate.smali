###### Class org.qtproject.qt.android.QtServiceEmbeddedDelegate (org.qtproject.qt.android.QtServiceEmbeddedDelegate)
.class Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;
.super Ljava/lang/Object;
.source "QtServiceEmbeddedDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtEmbeddedViewInterface;
.implements Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;


# instance fields
.field private final m_service:Landroid/app/Service;

.field private final m_views:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/qtproject/qt/android/QtView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    .line 25
    iput-object p1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_service:Landroid/app/Service;

    .line 26
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 27
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    return-void
.end method

.method private cleanup()V
    .registers 2

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 87
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 88
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_service:Landroid/app/Service;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->remove(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQtNativeApplication()V

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setService(Landroid/app/Service;)V

    return-void
.end method

.method private createRootWindow(Lorg/qtproject/qt/android/QtView;)V
    .registers 6

    .line 78
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 79
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getWidth()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getHeight()I

    move-result v3

    .line 79
    invoke-static {p1, v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtView;->createRootWindow(Landroid/view/View;IIII)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addView(Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 62
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    new-instance v0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;Lorg/qtproject/qt/android/QtView;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method synthetic lambda$addView$0$org-qtproject-qt-android-QtServiceEmbeddedDelegate(Lorg/qtproject/qt/android/QtView;)V
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->createRootWindow(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method

.method synthetic lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtServiceEmbeddedDelegate()V
    .registers 4

    .line 38
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 40
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 41
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtDisplayManager;->handleLayoutSizeChanged(II)V

    .line 45
    iget-object v1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_service:Landroid/app/Service;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtDisplayManager;->updateRefreshRate(Landroid/content/Context;)V

    .line 46
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenDensityChanged(D)V

    return-void
.end method

.method public onNativePluginIntegrationReadyChanged(Z)V
    .registers 2

    .line 35
    monitor-enter p0

    if-eqz p1, :cond_b

    .line 37
    :try_start_3
    new-instance p1, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;)V

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 49
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public removeView(Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 70
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 72
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->cleanup()V

    :cond_10
    return-void
.end method

.method public startQtApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtServiceEmbeddedDelegate()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtView;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;->f$1:Lorg/qtproject/qt/android/QtView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate$$ExternalSyntheticLambda1;->f$1:Lorg/qtproject/qt/android/QtView;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;->lambda$addView$0$org-qtproject-qt-android-QtServiceEmbeddedDelegate(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method
