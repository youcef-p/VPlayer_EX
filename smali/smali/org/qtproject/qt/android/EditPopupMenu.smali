###### Class org.qtproject.qt.android.EditPopupMenu (org.qtproject.qt.android.EditPopupMenu)
.class Lorg/qtproject/qt/android/EditPopupMenu;
.super Ljava/lang/Object;
.source "EditPopupMenu.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private m_buttons:I

.field private final m_editText:Lorg/qtproject/qt/android/QtEditText;

.field private m_popup:Landroid/widget/PopupWindow;

.field private m_posX:I

.field private m_posY:I

.field private final m_view:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtEditText;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    .line 30
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    .line 31
    new-instance v1, Lorg/qtproject/qt/android/EditContextView;

    invoke-direct {v1, v0, p0}, Lorg/qtproject/qt/android/EditContextView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    .line 32
    invoke-virtual {v1, p0}, Lorg/qtproject/qt/android/EditContextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 35
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private initOverlay()V
    .registers 5

    .line 40
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    return-void

    .line 43
    :cond_5
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 45
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 46
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 48
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method


# virtual methods
.method public contextButtonClicked(I)V
    .registers 2

    sparse-switch p1, :sswitch_data_18

    goto :goto_13

    .line 153
    :sswitch_4
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    goto :goto_13

    .line 150
    :sswitch_8
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    goto :goto_13

    .line 144
    :sswitch_c
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    goto :goto_13

    .line 147
    :sswitch_10
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    .line 156
    :goto_13
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    return-void

    nop

    :sswitch_data_18
    .sparse-switch
        0x1040001 -> :sswitch_10
        0x1040003 -> :sswitch_c
        0x104000b -> :sswitch_8
        0x104000d -> :sswitch_4
    .end sparse-switch
.end method

.method hide()V
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    .line 115
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    :cond_a
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_8

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-eq p5, p9, :cond_1b

    .line 135
    :cond_8
    iget-object p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1b

    .line 136
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 137
    iget p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(III)V

    :cond_1b
    return-void
.end method

.method public onPreDraw()Z
    .registers 4

    .line 125
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 126
    iget v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    iget v1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    iget v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(III)V

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method setPosition(III)V
    .registers 15

    .line 54
    const-string v0, "QtEditText "

    const-string v1, "Qt JAVA"

    invoke-direct {p0}, Lorg/qtproject/qt/android/EditPopupMenu;->initOverlay()V

    .line 56
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v2, p3}, Lorg/qtproject/qt/android/EditContextView;->updateButtons(I)V

    .line 57
    iget-object v2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_view:Lorg/qtproject/qt/android/EditContextView;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/EditContextView;->getCalculatedSize()Landroid/graphics/Point;

    move-result-object v2

    const/4 v3, 0x2

    .line 59
    new-array v4, v3, [I

    .line 64
    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v5}, Lorg/qtproject/qt/android/QtEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_21

    .line 66
    iget-object v5, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 67
    :cond_21
    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 70
    new-array v6, v3, [I

    .line 71
    new-array v7, v3, [I

    .line 72
    iget-object v8, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    iget-object v8, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v8, 0x0

    .line 75
    aget v9, v4, v8

    add-int/2addr v9, p1

    aget v10, v6, v8

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    .line 76
    aget v4, v4, v10

    add-int/2addr v4, p2

    aget v7, v7, v10

    aget v6, v6, v10

    sub-int/2addr v7, v6

    add-int/2addr v4, v7

    .line 78
    iget v6, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v3

    sub-int/2addr v9, v6

    .line 80
    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    if-gez v4, :cond_62

    .line 82
    iget-object v4, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v4}, Lorg/qtproject/qt/android/QtEditText;->getSelectionHandleBottom()I

    move-result v4

    :cond_62
    if-gtz v4, :cond_a1

    .line 86
    :try_start_64
    iget-object v6, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v6}, Lorg/qtproject/qt/android/QtEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lorg/qtproject/qt/android/QtLayout;

    .line 87
    invoke-virtual {v6}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V
    :try_end_6f
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_6f} :catch_89
    .catch Ljava/lang/NullPointerException; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_a1

    .line 92
    :catch_70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " does not have a parent, requestLayout() skipped"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 89
    :catch_89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " parent is not a QtLayout, requestLayout() skipped"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_a1
    :goto_a1
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v3

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_b3

    .line 98
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v2, Landroid/graphics/Point;->x:I

    sub-int v9, v0, v1

    :cond_b3
    if-gez v9, :cond_b6

    move v9, v8

    .line 103
    :cond_b6
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 104
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v9, v4, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_ca

    .line 106
    :cond_c5
    iget-object v0, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5, v8, v9, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 108
    :goto_ca
    iput p1, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posX:I

    .line 109
    iput p2, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_posY:I

    .line 110
    iput p3, p0, Lorg/qtproject/qt/android/EditPopupMenu;->m_buttons:I

    return-void
.end method
