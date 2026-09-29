###### Class org.qtproject.qt.android.EditContextView (org.qtproject.qt.android.EditContextView)
.class Lorg/qtproject/qt/android/EditContextView;
.super Landroid/widget/LinearLayout;
.source "EditContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/EditContextView$ContextButton;,
        Lorg/qtproject/qt/android/EditContextView$OnClickListener;
    }
.end annotation


# static fields
.field static final COPY_BUTTON:I = 0x2

.field static final CUT_BUTTON:I = 0x1

.field static final PASTE_BUTTON:I = 0x4

.field static final SELECT_ALL_BUTTON:I = 0x8


# instance fields
.field final m_buttons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/EditContextView$ContextButton;",
            ">;"
        }
    .end annotation
.end field

.field final m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/EditContextView$OnClickListener;)V
    .registers 4

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    .line 111
    iput-object p2, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    .line 112
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p1, 0x1040003

    .line 114
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x1040001

    .line 115
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x104000b

    .line 116
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    const p1, 0x104000d

    .line 117
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView;->addButton(I)V

    return-void
.end method


# virtual methods
.method addButton(I)V
    .registers 4

    .line 68
    new-instance v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;-><init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V

    .line 69
    iget-object v1, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/EditContextView;->addView(Landroid/view/View;)V

    return-void
.end method

.method getCalculatedSize()Landroid/graphics/Point;
    .registers 7

    .line 94
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 95
    iget-object v2, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 96
    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_10

    .line 97
    invoke-virtual {v3, v1, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->measure(II)V

    .line 98
    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 99
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getMeasuredHeight()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_10

    .line 103
    :cond_3b
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 104
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 62
    check-cast p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    .line 63
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_onClickListener:Lorg/qtproject/qt/android/EditContextView$OnClickListener;

    iget p1, p1, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    invoke-interface {v0, p1}, Lorg/qtproject/qt/android/EditContextView$OnClickListener;->contextButtonClicked(I)V

    return-void
.end method

.method updateButtons(I)V
    .registers 6

    .line 75
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v1, 0x1040003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1e

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    .line 77
    :goto_1b
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 79
    :cond_1e
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x1040001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    if-eqz v0, :cond_39

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 81
    :goto_36
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 83
    :cond_39
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x104000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    if-eqz v0, :cond_54

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_50

    move v3, v1

    goto :goto_51

    :cond_50
    move v3, v2

    .line 85
    :goto_51
    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    .line 87
    :cond_54
    iget-object v0, p0, Lorg/qtproject/qt/android/EditContextView;->m_buttons:Ljava/util/HashMap;

    const v3, 0x104000d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/qtproject/qt/android/EditContextView$ContextButton;

    if-eqz v0, :cond_6d

    and-int/2addr p1, v2

    if-eqz p1, :cond_69

    goto :goto_6a

    :cond_69
    move v1, v2

    .line 89
    :goto_6a
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setVisibility(I)V

    :cond_6d
    return-void
.end method

###### Class org.qtproject.qt.android.EditContextView.ContextButton (org.qtproject.qt.android.EditContextView$ContextButton)
.class Lorg/qtproject/qt/android/EditContextView$ContextButton;
.super Landroid/widget/TextView;
.source "EditContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/EditContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextButton"
.end annotation


# instance fields
.field m_buttonId:I

.field final synthetic this$0:Lorg/qtproject/qt/android/EditContextView;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/EditContextView;Landroid/content/Context;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->this$0:Lorg/qtproject/qt/android/EditContextView;

    .line 39
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 40
    iput p3, p0, Lorg/qtproject/qt/android/EditContextView$ContextButton;->m_buttonId:I

    .line 41
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setText(I)V

    .line 42
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p3, v0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x11

    .line 44
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setGravity(I)V

    .line 45
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x106000a

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 45
    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p3

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setTextColor(I)V

    .line 47
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x1080019

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 47
    invoke-virtual {p3, v0, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/qtproject/qt/android/EditContextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p3, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr p2, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 52
    invoke-virtual {p0, p3, p2, p3, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setPadding(IIII)V

    .line 53
    invoke-virtual {p0}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setSingleLine()V

    .line 54
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/EditContextView$ContextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class org.qtproject.qt.android.EditContextView.OnClickListener (org.qtproject.qt.android.EditContextView$OnClickListener)
.class interface abstract Lorg/qtproject/qt/android/EditContextView$OnClickListener;
.super Ljava/lang/Object;
.source "EditContextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/EditContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "OnClickListener"
.end annotation


# virtual methods
.method public abstract contextButtonClicked(I)V
.end method
