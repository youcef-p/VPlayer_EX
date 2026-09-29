###### Class org.qtproject.qt.android.CursorHandle (org.qtproject.qt.android.CursorHandle)
.class Lorg/qtproject/qt/android/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field static final IdCursorHandle:I = 0x1

.field static final IdLeftHandle:I = 0x2

.field static final IdRightHandle:I = 0x3

.field private static final QtTag:Ljava/lang/String; = "QtCursorHandle"


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private final m_attr:I

.field private m_cursorView:Lorg/qtproject/qt/android/CursorView;

.field private final m_id:I

.field private m_lastX:I

.field private m_lastY:I

.field private final m_layout:Landroid/view/View;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private final m_rtl:Z

.field m_yShift:I

.field tolerance:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;IIZ)V
    .registers 7

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 80
    iput-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 85
    iput v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    .line 93
    iput-object p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    .line 94
    iput p3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    .line 95
    iput p4, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    .line 96
    iput-object p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 p2, 0x5

    const/high16 p3, 0x3f800000    # 1.0f

    .line 98
    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 99
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    rsub-int/lit8 p1, p1, -0x1

    .line 100
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 101
    iput-boolean p5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    return-void
.end method

.method private initOverlay()V
    .registers 7

    .line 105
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    return-void

    .line 108
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    filled-new-array {v1}, [I

    move-result-object v1

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    :try_start_1a
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_7b

    .line 115
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 118
    new-instance v1, Lorg/qtproject/qt/android/CursorView;

    invoke-direct {v1, v0, p0}, Lorg/qtproject/qt/android/CursorView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/CursorHandle;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    .line 119
    invoke-virtual {v1, v3}, Lorg/qtproject/qt/android/CursorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    const v5, 0x10102c8

    invoke-direct {v1, v0, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    .line 122
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 123
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 124
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    if-eqz v3, :cond_5b

    .line 126
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 127
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_71

    .line 129
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initOverlay(): cannot get width/height for popup from null drawable for attribute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_attr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtCursorHandle"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_71
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :catchall_7b
    move-exception v0

    .line 115
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    throw v0
.end method


# virtual methods
.method bottom()I
    .registers 3

    .line 181
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()V

    const/4 v0, 0x2

    .line 182
    new-array v0, v0, [I

    .line 183
    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/CursorView;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 184
    aget v0, v0, v1

    iget-object v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method hide()V
    .registers 2

    .line 188
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method public onPreDraw()Z
    .registers 3

    .line 216
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method setPosition(II)V
    .registers 12

    .line 138
    invoke-direct {p0}, Lorg/qtproject/qt/android/CursorHandle;->initOverlay()V

    const/4 v0, 0x2

    .line 140
    new-array v1, v0, [I

    .line 145
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_12

    .line 147
    iget-object v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_layout:Landroid/view/View;

    .line 149
    :cond_12
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    new-array v3, v0, [I

    .line 153
    new-array v4, v0, [I

    .line 154
    iget-object v5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object v5, p0, Lorg/qtproject/qt/android/CursorHandle;->m_activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v5, 0x0

    .line 157
    aget v6, v1, v5

    add-int/2addr v6, p1

    aget v7, v3, v5

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    .line 158
    aget v1, v1, v7

    add-int/2addr v1, p2

    iget v8, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    add-int/2addr v1, v8

    aget v4, v4, v7

    aget v3, v3, v7

    sub-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 160
    iget v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    if-ne v3, v7, :cond_54

    .line 161
    iget-object v3, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr v6, v3

    goto :goto_74

    :cond_54
    const/4 v4, 0x3

    if-ne v3, v0, :cond_5b

    .line 162
    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_61

    :cond_5b
    if-ne v3, v4, :cond_6b

    iget-boolean v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_rtl:Z

    if-eqz v0, :cond_6b

    .line 163
    :cond_61
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    mul-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x4

    goto :goto_73

    .line 165
    :cond_6b
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_73
    sub-int/2addr v6, v0

    .line 168
    :goto_74
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 169
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-virtual {v0, v6, v1, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 170
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    sub-int v1, p1, v1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    sub-int v2, p2, v2

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/CursorView;->adjusted(II)V

    goto :goto_95

    .line 172
    :cond_90
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 175
    :goto_95
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    .line 176
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    return-void
.end method

.method updatePosition(II)V
    .registers 6

    .line 203
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_yShift:I

    sub-int/2addr p2, v0

    .line 204
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-gt v0, v1, :cond_1b

    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    sub-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->tolerance:I

    if-le v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    .line 205
    :cond_1b
    :goto_1b
    iget v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_id:I

    iget v1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posX:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_posY:I

    add-int/2addr v2, p2

    invoke-static {v0, v1, v2}, Lorg/qtproject/qt/android/QtInputDelegate;->handleLocationChanged(III)V

    .line 206
    iput p1, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastX:I

    .line 207
    iput p2, p0, Lorg/qtproject/qt/android/CursorHandle;->m_lastY:I

    return-void
.end method

.method width()I
    .registers 2

    .line 195
    iget-object v0, p0, Lorg/qtproject/qt/android/CursorHandle;->m_cursorView:Lorg/qtproject/qt/android/CursorView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 198
    :cond_6
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method
