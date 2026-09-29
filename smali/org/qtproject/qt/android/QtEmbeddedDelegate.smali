###### Class org.qtproject.qt.android.QtEmbeddedDelegate (org.qtproject.qt.android.QtEmbeddedDelegate)
.class Lorg/qtproject/qt/android/QtEmbeddedDelegate;
.super Lorg/qtproject/qt/android/QtActivityDelegateBase;
.source "QtEmbeddedDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;
.implements Lorg/qtproject/qt/android/QtEmbeddedViewInterface;
.implements Lorg/qtproject/qt/android/QtWindowInterface;
.implements Lorg/qtproject/qt/android/QtMenuInterface;


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtEmbeddedDelegate"


# instance fields
.field private m_backendsRegistered:Z

.field private m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

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
.method public static synthetic $r8$lambda$4V3_gpMFhc1dtxWKYSvdOzUJaas(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public static synthetic $r8$lambda$VLZFtNr1-LvlSu7bRV2iGL11UIA(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rQiWVDjUeLbisHto8ROBKjQLo2c(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public static synthetic $r8$lambda$yIfVBhhxEuq5hi9RSOy-bkjMjQ4(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    .line 24
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_backendsRegistered:Z

    .line 30
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 31
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 33
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
    .registers 1

    .line 19
    iget-object p0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    return-object p0
.end method

.method private createRootWindow(Lorg/qtproject/qt/android/QtView;)V
    .registers 6

    .line 153
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 154
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getTop()I

    move-result v1

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getWidth()I

    move-result v2

    .line 155
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtView;->getHeight()I

    move-result v3

    .line 154
    invoke-static {p1, v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtView;->createRootWindow(Landroid/view/View;IIII)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public addView(Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 139
    new-instance v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;Lorg/qtproject/qt/android/QtView;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public closeContextMenu()V
    .registers 3

    .line 167
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda6;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addView$0$org-qtproject-qt-android-QtEmbeddedDelegate(Lorg/qtproject/qt/android/QtView;)V
    .registers 2

    .line 139
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->createRootWindow(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method

.method synthetic lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtEmbeddedDelegate()V
    .registers 3

    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 116
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleLayoutSizeChanged(II)V

    .line 117
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->initDisplayProperties()V

    return-void
.end method

.method synthetic lambda$openContextMenu$0$org-qtproject-qt-android-QtEmbeddedDelegate(Lorg/qtproject/qt/android/QtEditText;)V
    .registers 4

    .line 178
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 179
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    .line 180
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 181
    new-instance p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 183
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method synthetic lambda$openContextMenu$1$org-qtproject-qt-android-QtEmbeddedDelegate(Landroid/widget/PopupMenu;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 3

    .line 87
    monitor-enter p0

    .line 88
    :try_start_1
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 89
    iget-boolean v0, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_backendsRegistered:Z

    if-nez v0, :cond_28

    .line 90
    invoke-static {}, Lorg/qtproject/qt/android/BackendRegister;->isNull()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 91
    monitor-exit p0

    return-void

    :cond_13
    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_backendsRegistered:Z

    .line 94
    const-class p1, Lorg/qtproject/qt/android/QtWindowInterface;

    invoke-static {p1, p0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    const-class p1, Lorg/qtproject/qt/android/QtMenuInterface;

    invoke-static {p1, p0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 96
    const-class p1, Lorg/qtproject/qt/android/QtInputInterface;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_4a

    .line 97
    :cond_28
    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-nez p1, :cond_4a

    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_backendsRegistered:Z

    if-eqz p1, :cond_4a

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_backendsRegistered:Z

    .line 100
    invoke-static {}, Lorg/qtproject/qt/android/BackendRegister;->isNull()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 101
    monitor-exit p0

    return-void

    .line 103
    :cond_3b
    const-class p1, Lorg/qtproject/qt/android/QtWindowInterface;

    invoke-static {p1}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 104
    const-class p1, Lorg/qtproject/qt/android/QtMenuInterface;

    invoke-static {p1}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 105
    const-class p1, Lorg/qtproject/qt/android/QtInputInterface;

    invoke-static {p1}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 107
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public onNativePluginIntegrationReadyChanged(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 114
    new-instance p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public openContextMenu(IIII)V
    .registers 5

    .line 172
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->getCurrentQtEditText()Lorg/qtproject/qt/android/QtEditText;

    move-result-object p1

    if-nez p1, :cond_10

    .line 174
    const-string p1, "QtEmbeddedDelegate"

    const-string p2, "No focused view when trying to open context menu"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 177
    :cond_10
    new-instance p2, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;Lorg/qtproject/qt/android/QtEditText;)V

    const-wide/16 p3, 0x64

    invoke-virtual {p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openOptionsMenu()V
    .registers 3

    .line 164
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda4;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeView(Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 146
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_views:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetOptionsMenu()V
    .registers 3

    .line 161
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 125
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startQtApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 132
    invoke-super {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate.AnonymousClass1 (org.qtproject.qt.android.QtEmbeddedDelegate$1)
.class Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;
.super Ljava/lang/Object;
.source "QtEmbeddedDelegate.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtEmbeddedDelegate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_34

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_34

    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_34

    .line 75
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 76
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 77
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object p1, p1, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->remove(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQtNativeApplication()V

    const/4 p1, 0x0

    .line 79
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    :cond_34
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_1a

    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_1a

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x2

    .line 54
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    :cond_1a
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 43
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_17

    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_17

    const/4 p1, 0x4

    .line 44
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 45
    invoke-static {}, Lorg/qtproject/qt/android/QtWindow;->updateWindows()V

    :cond_17
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 3

    .line 61
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->m_activity:Landroid/app/Activity;

    if-ne v0, p1, :cond_14

    iget-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$1;->this$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->access$000(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_14

    const/4 p1, 0x0

    .line 62
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    :cond_14
    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->$r8$lambda$yIfVBhhxEuq5hi9RSOy-bkjMjQ4(Landroid/app/Activity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda1;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->$r8$lambda$VLZFtNr1-LvlSu7bRV2iGL11UIA(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->lambda$openContextMenu$1$org-qtproject-qt-android-QtEmbeddedDelegate(Landroid/widget/PopupMenu;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->lambda$onNativePluginIntegrationReadyChanged$0$org-qtproject-qt-android-QtEmbeddedDelegate()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda4 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->$r8$lambda$4V3_gpMFhc1dtxWKYSvdOzUJaas(Landroid/app/Activity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda5 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtView;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;Lorg/qtproject/qt/android/QtView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/qtproject/qt/android/QtView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda5;->f$1:Lorg/qtproject/qt/android/QtView;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->lambda$addView$0$org-qtproject-qt-android-QtEmbeddedDelegate(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda6 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda6;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda6;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->$r8$lambda$rQiWVDjUeLbisHto8ROBKjQLo2c(Landroid/app/Activity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda7 (org.qtproject.qt.android.QtEmbeddedDelegate$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtEmbeddedDelegate;Lorg/qtproject/qt/android/QtEditText;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;->f$1:Lorg/qtproject/qt/android/QtEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEmbeddedDelegate$$ExternalSyntheticLambda7;->f$1:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;->lambda$openContextMenu$0$org-qtproject-qt-android-QtEmbeddedDelegate(Lorg/qtproject/qt/android/QtEditText;)V

    return-void
.end method
