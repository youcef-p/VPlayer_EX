###### Class org.qtproject.qt.android.QtActivityDelegateBase (org.qtproject.qt.android.QtActivityDelegateBase)
.class abstract Lorg/qtproject/qt/android/QtActivityDelegateBase;
.super Ljava/lang/Object;
.source "QtActivityDelegateBase.java"


# instance fields
.field protected final m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field protected final m_activity:Landroid/app/Activity;

.field private m_contextMenuVisible:Z

.field protected final m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

.field protected final m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

.field private m_membersInitialized:Z

.field protected final m_topLevelWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_topLevelWindows:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    .line 30
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    .line 46
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    .line 47
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    .line 48
    new-instance v0, Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtDisplayManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    .line 49
    new-instance p1, Lorg/qtproject/qt/android/QtInputDelegate;

    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V

    invoke-direct {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;-><init>(Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    .line 52
    new-instance p1, Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    return-void
.end method

.method static native canOverrideColorSchemeHint()Z
.end method

.method static native updateUiContrast(F)V
.end method


# virtual methods
.method displayManager()Lorg/qtproject/qt/android/QtDisplayManager;
    .registers 2

    .line 56
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    return-object v0
.end method

.method getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    return-object v0
.end method

.method handleUiModeChange()V
    .registers 7

    .line 106
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 108
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 110
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->decorFitsSystemWindows(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 111
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->enableSystemBarsBackgroundDrawing(Landroid/view/Window;)V

    .line 113
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->getThemeDefaultStatusBarColor(Landroid/app/Activity;)I

    move-result v2

    .line 114
    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setStatusBarColor(Landroid/view/Window;I)V

    .line 115
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->getThemeDefaultNavigationBarColor(Landroid/app/Activity;)I

    move-result v2

    .line 116
    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setNavigationBarColor(Landroid/view/Window;I)V

    .line 120
    :cond_31
    invoke-static {}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->canOverrideColorSchemeHint()Z

    move-result v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4a

    if-ne v0, v2, :cond_3f

    move v1, v3

    goto :goto_40

    :cond_3f
    move v1, v4

    .line 122
    :goto_40
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setStatusBarColorHint(Landroid/app/Activity;Z)V

    .line 123
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setNavigationBarColorHint(Landroid/app/Activity;Z)V

    :cond_4a
    if-eq v0, v2, :cond_5a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_51

    goto :goto_62

    .line 132
    :cond_51
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 133
    invoke-static {v3}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    goto :goto_62

    .line 128
    :cond_5a
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 129
    invoke-static {v4}, Lorg/qtproject/qt/android/QtDisplayManager;->handleUiDarkModeChanged(I)V

    .line 137
    :goto_62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_79

    .line 139
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    const-string v1, "uimode"

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 141
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getContrast()F

    move-result v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->updateUiContrast(F)V

    :cond_79
    return-void
.end method

.method hideSplashScreen()V
    .registers 2

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->hideSplashScreen(I)V

    return-void
.end method

.method hideSplashScreen(I)V
    .registers 2

    return-void
.end method

.method initMembers()V
    .registers 4

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 85
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->registerDisplayListener()V

    .line 86
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->initInputMethodManager(Landroid/app/Activity;)V

    .line 89
    :try_start_14
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->setSoftInputMode(I)V
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 93
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 96
    :goto_31
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->setUpLayout()V

    return-void
.end method

.method isContextMenuVisible()Z
    .registers 2

    .line 70
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    return v0
.end method

.method synthetic lambda$new$0$org-qtproject-qt-android-QtActivityDelegateBase()V
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->restoreFullScreenVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method setActionBarVisibility(Z)V
    .registers 2

    return-void
.end method

.method setContextMenuVisible(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_contextMenuVisible:Z

    return-void
.end method

.method setUpLayout()V
    .registers 1

    return-void
.end method

.method setUpSplashScreen(I)V
    .registers 2

    return-void
.end method

.method startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 75
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase;->m_membersInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 77
    :cond_5
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->initMembers()V

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method abstract startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
.end method

###### Class org.qtproject.qt.android.QtActivityDelegateBase$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtActivityDelegateBase$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegateBase;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegateBase;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegateBase;

    return-void
.end method


# virtual methods
.method public final onKeyboardVisibilityChange()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegateBase$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegateBase;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->lambda$new$0$org-qtproject-qt-android-QtActivityDelegateBase()V

    return-void
.end method
