###### Class org.qtproject.qt.android.QtRootLayout (org.qtproject.qt.android.QtRootLayout)
.class Lorg/qtproject/qt/android/QtRootLayout;
.super Lorg/qtproject/qt/android/QtLayout;
.source "QtRootLayout.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$0(Landroid/app/Activity;)V
    .registers 1

    .line 42
    invoke-static {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChange(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 35
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtRootLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_9

    return-void

    .line 41
    :cond_9
    new-instance v0, Lorg/qtproject/qt/android/QtRootLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtRootLayout$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    .line 25
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtRootLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_10

    if-ne p1, p3, :cond_d

    if-ne p2, p4, :cond_d

    goto :goto_10

    .line 29
    :cond_d
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtDisplayManager;->handleLayoutSizeChanged(II)V

    :cond_10
    :goto_10
    return-void
.end method

###### Class org.qtproject.qt.android.QtRootLayout$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtRootLayout$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtRootLayout$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lorg/qtproject/qt/android/QtRootLayout$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtRootLayout$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtRootLayout;->lambda$onConfigurationChanged$0(Landroid/app/Activity;)V

    return-void
.end method
