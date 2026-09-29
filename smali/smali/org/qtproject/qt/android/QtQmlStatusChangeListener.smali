###### Class org.qtproject.qt.android.QtQmlStatusChangeListener (org.qtproject.qt.android.QtQmlStatusChangeListener)
.class public interface abstract Lorg/qtproject/qt/android/QtQmlStatusChangeListener;
.super Ljava/lang/Object;
.source "QtQmlStatusChangeListener.java"


# virtual methods
.method public onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;Lorg/qtproject/qt/android/QtQuickViewContent;)V
    .registers 3

    .line 28
    invoke-interface {p0, p1}, Lorg/qtproject/qt/android/QtQmlStatusChangeListener;->onStatusChanged(Lorg/qtproject/qt/android/QtQmlStatus;)V

    return-void
.end method
