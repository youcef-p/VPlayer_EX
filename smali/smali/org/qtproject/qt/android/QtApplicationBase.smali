###### Class org.qtproject.qt.android.QtApplicationBase (org.qtproject.qt.android.QtApplicationBase)
.class public Lorg/qtproject/qt/android/QtApplicationBase;
.super Landroid/app/Application;
.source "QtApplicationBase.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onTerminate()V
    .registers 1

    .line 11
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 12
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->terminateQtNativeApplication()V

    return-void
.end method
