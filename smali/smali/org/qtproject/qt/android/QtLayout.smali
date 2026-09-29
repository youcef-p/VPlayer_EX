###### Class org.qtproject.qt.android.QtLayout (org.qtproject.qt.android.QtLayout)
.class Lorg/qtproject/qt/android/QtLayout;
.super Landroid/view/ViewGroup;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtLayout$LayoutParams;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 111
    instance-of p1, p1, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 80
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 117
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method moveChild(Landroid/view/View;I)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_a

    .line 173
    :cond_3
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    :goto_a
    return-void

    .line 176
    :cond_b
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLayout;->detachViewFromParent(Landroid/view/View;)V

    .line 177
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->requestLayout()V

    .line 178
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/qtproject/qt/android/QtLayout;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .line 89
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_3c

    .line 91
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_39

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 96
    iget v3, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 97
    iget v4, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    .line 98
    iget v5, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_25

    sub-int v5, p4, p2

    goto :goto_2a

    .line 99
    :cond_25
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 100
    :goto_2a
    iget v2, v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->height:I

    if-ne v2, v6, :cond_31

    sub-int v2, p5, p3

    goto :goto_36

    .line 101
    :cond_31
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v4

    .line 102
    :goto_36
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11

    .line 33
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    .line 39
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->measureChildren(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v1, v0, :cond_48

    .line 43
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_45

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    if-eqz v5, :cond_35

    .line 50
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    .line 51
    iget v6, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 52
    iget v5, v5, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_3d

    .line 54
    :cond_35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 58
    :goto_3d
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 59
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 64
    :cond_48
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 67
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p1

    .line 68
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtLayout;->resolveSize(II)I

    move-result p2

    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_18

    .line 197
    :cond_3
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_18

    .line 200
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne p0, v0, :cond_19

    .line 206
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_18

    .line 208
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtLayout;->invalidate()V

    :cond_18
    :goto_18
    return-void

    .line 211
    :cond_19
    instance-of p3, v0, Landroid/view/ViewGroup;

    if-eqz p3, :cond_22

    .line 212
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 213
    :cond_22
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtLayout.LayoutParams (org.qtproject.qt.android.QtLayout$LayoutParams)
.class Lorg/qtproject/qt/android/QtLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "QtLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutParams"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method constructor <init>(IIII)V
    .registers 5

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 150
    iput p3, p0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->x:I

    .line 151
    iput p4, p0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;->y:I

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 164
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
