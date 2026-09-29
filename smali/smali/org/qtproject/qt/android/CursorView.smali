###### Class org.qtproject.qt.android.CursorView (org.qtproject.qt.android.CursorView)
.class Lorg/qtproject/qt/android/CursorView;
.super Landroid/widget/ImageView;
.source "CursorHandle.java"


# instance fields
.field private final mHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private m_offsetX:F

.field private m_offsetY:F

.field private m_pressed:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    .line 32
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    return-void
.end method


# virtual methods
.method adjusted(II)V
    .registers 4

    .line 37
    iget v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    int-to-float p1, p1

    add-float/2addr v0, p1

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 38
    iget p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_35

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_32

    goto :goto_4c

    .line 52
    :cond_11
    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    if-nez v0, :cond_16

    return v2

    .line 54
    :cond_16
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorView;->mHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v3, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 54
    invoke-virtual {v0, v2, p1}, Lorg/qtproject/qt/android/CursorHandle;->updatePosition(II)V

    goto :goto_4c

    .line 61
    :cond_32
    iput-boolean v2, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    goto :goto_4c

    .line 45
    :cond_35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetX:F

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lorg/qtproject/qt/android/CursorView;->m_offsetY:F

    .line 47
    iput-boolean v1, p0, Lorg/qtproject/qt/android/CursorView;->m_pressed:Z

    :goto_4c
    return v1
.end method
