###### Class org.qtproject.qt.android.QtSurface (org.qtproject.qt.android.QtSurface)
.class Lorg/qtproject/qt/android/QtSurface;
.super Landroid/view/SurfaceView;
.source "QtSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private final m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;ZI)V
    .registers 5

    .line 20
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtSurface;->setFocusable(Z)V

    .line 22
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtSurface;->setFocusableInTouchMode(Z)V

    .line 23
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtSurface;->setZOrderMediaOverlay(Z)V

    .line 24
    iput-object p2, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    .line 25
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/16 p2, 0x10

    if-ne p4, p2, :cond_19

    const/4 p2, 0x4

    goto :goto_1a

    :cond_19
    const/4 p2, 0x1

    .line 26
    :goto_1a
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 27
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 41
    iget-object p2, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    if-eqz p2, :cond_b

    .line 42
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    if-eqz v0, :cond_b

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 50
    iget-object p1, p0, Lorg/qtproject/qt/android/QtSurface;->m_surfaceCallback:Lorg/qtproject/qt/android/QtSurfaceInterface;

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    .line 51
    invoke-interface {p1, v0}, Lorg/qtproject/qt/android/QtSurfaceInterface;->onSurfaceChanged(Landroid/view/Surface;)V

    :cond_8
    return-void
.end method
