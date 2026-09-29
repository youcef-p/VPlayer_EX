###### Class org.qtproject.qt.android.QtActivityBase (org.qtproject.qt.android.QtActivityBase)
.class public Lorg/qtproject/qt/android/QtActivityBase;
.super Landroid/app/Activity;
.source "QtActivityBase.java"


# static fields
.field public static final EXTRA_FATAL_MESSAGE:Ljava/lang/String; = "org.qtproject.qt.android.fatalMessage"

.field public static final EXTRA_SOURCE_INFO:Ljava/lang/String; = "org.qtproject.qt.android.sourceInfo"

.field public static final TAG:Ljava/lang/String; = "QtActivityBase"


# instance fields
.field private m_applicationParams:Ljava/lang/String;

.field private final m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

.field private m_isCustomThemeSet:Z

.field private m_onCreateSucceeded:Z

.field private m_prevConfig:Landroid/content/res/Configuration;

.field private m_retainNonConfigurationInstance:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    .line 38
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    .line 41
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_onCreateSucceeded:Z

    .line 97
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-void
.end method

.method private addReferrer(Landroid/content/Intent;)V
    .registers 6

    .line 45
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    const-string v1, "org.qtproject.qt.android.sourceInfo"

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    goto :goto_32

    :cond_f
    if-nez v0, :cond_27

    .line 50
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getReferrer()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 52
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android-app://"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    .line 56
    :cond_27
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 58
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_32
    :goto_32
    return-void
.end method

.method private isLaunchedAsAlias()Z
    .registers 3

    .line 170
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 174
    :cond_c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private restartApplication()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityBase;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setStarted(Z)V

    .line 91
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->finish()V

    .line 92
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method private showFatalFinishingToast()V
    .registers 6

    .line 153
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 158
    :try_start_9
    const-string v3, "fatal_error_msg"

    const-string v4, "string"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    .line 160
    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_1d} :catch_1d

    .line 162
    :catch_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz v2, :cond_29

    .line 164
    const-string v1, "org.qtproject.qt.android.fatalMessage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_29
    const/4 v1, 0x0

    .line 165
    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public appendApplicationParameters(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_3d

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

    .line 75
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    .line 77
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 277
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->handleDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 278
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v1

    iget-boolean v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    return p1

    .line 281
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    .line 267
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->handleDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 268
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v1

    iget-boolean v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    return p1

    .line 271
    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public hideSplashScreen(I)V
    .registers 3

    .line 391
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 378
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 379
    invoke-static {p1, p2, p3}, Lorg/qtproject/qt/android/QtNative;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_prevConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_12

    .line 232
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange()V

    :cond_12
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    .line 235
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateLocale()V

    .line 237
    :cond_19
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_prevConfig:Landroid/content/res/Configuration;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 243
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    .line 244
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onContextItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->isContextMenuVisible()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 252
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    .line 253
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/16 p1, 0x8

    .line 104
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->requestWindowFeature(I)Z

    .line 106
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    if-nez p1, :cond_1c

    .line 108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_16

    const p1, 0x10302e3

    goto :goto_19

    :cond_16
    const p1, 0x103006e

    .line 111
    :goto_19
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->setTheme(I)V

    .line 114
    :cond_1c
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object p1

    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_27

    .line 118
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;->restartApplication()V

    .line 121
    :cond_27
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 122
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->addReferrer(Landroid/content/Intent;)V

    .line 125
    :try_start_33
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;->isLaunchedAsAlias()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 126
    const-string p1, "QtActivityBase"

    const-string v0, "Starting an alias-activity, skipping loading of the Qt libraries."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 128
    :cond_41
    invoke-static {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->getActivityLoader(Landroid/app/Activity;)Lorg/qtproject/qt/android/QtActivityLoader;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->loadQtLibraries()Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    move-result-object v0

    .line 131
    sget-object v1, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    if-ne v0, v1, :cond_51

    .line 132
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;->showFatalFinishingToast()V

    return-void

    .line 136
    :cond_51
    sget-object v1, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    if-ne v0, v1, :cond_67

    .line 137
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_applicationParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtActivityLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->startNativeApplication(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_67} :catch_7a

    .line 148
    :cond_67
    :goto_67
    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_prevConfig:Landroid/content/res/Configuration;

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_onCreateSucceeded:Z

    return-void

    :catch_7a
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 144
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityBase;->showFatalFinishingToast()V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 259
    invoke-interface {p1}, Landroid/view/ContextMenu;->clearHeader()V

    .line 260
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 261
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 2

    .line 307
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .registers 2

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 214
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_onCreateSucceeded:Z

    if-nez v0, :cond_b

    const/4 v0, -0x1

    .line 215
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 217
    :cond_b
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    if-nez v0, :cond_1f

    .line 218
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 219
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQtNativeApplication()V

    const/4 v0, 0x0

    .line 220
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 221
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_1f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 287
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    .line 288
    iget-boolean v1, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_18

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-nez v0, :cond_d

    goto :goto_18

    .line 291
    :cond_d
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 297
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    .line 298
    iget-boolean v1, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v1, :cond_18

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    if-nez v0, :cond_d

    goto :goto_18

    .line 301
    :cond_d
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->getInputDelegate()Lorg/qtproject/qt/android/QtInputDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_18
    :goto_18
    const/4 p1, 0x0

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 371
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityBase;->addReferrer(Landroid/content/Intent;)V

    .line 372
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsItemSelected(IZ)Z

    move-result p1

    return p1
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    .line 328
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    .line 185
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 186
    :cond_d
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->unregisterDisplayListener()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 314
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 315
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    if-eqz v0, :cond_10

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    invoke-virtual {v1, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 385
    invoke-static {p1, p3}, Lorg/qtproject/qt/android/QtNative;->sendRequestPermissionsResult(I[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 334
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 337
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityBase;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 340
    :cond_a
    const-string v0, "Started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->setStarted(Z)V

    .line 341
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->restoreFullScreenVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x4

    .line 193
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    .line 194
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_1e

    .line 195
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_delegate:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->displayManager()Lorg/qtproject/qt/android/QtDisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->registerDisplayListener()V

    .line 196
    invoke-static {}, Lorg/qtproject/qt/android/QtWindow;->updateWindows()V

    .line 198
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->restoreFullScreenVisibility(Landroid/app/Activity;)V

    :cond_1e
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_retainNonConfigurationInstance:Z

    .line 350
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 356
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    move-result-object v0

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    const-string v1, "Started"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/4 v0, 0x0

    .line 206
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->setApplicationState(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 363
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_8

    .line 365
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->restoreFullScreenVisibility(Landroid/app/Activity;)V

    :cond_8
    return-void
.end method

.method public setTheme(I)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityBase;->m_isCustomThemeSet:Z

    return-void
.end method
