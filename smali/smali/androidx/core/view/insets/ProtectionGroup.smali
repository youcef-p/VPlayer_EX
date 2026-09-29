###### Class androidx.core.view.insets.ProtectionGroup (androidx.core.view.insets.ProtectionGroup)
.class Landroidx/core/view/insets/ProtectionGroup;
.super Ljava/lang/Object;
.source "ProtectionGroup.java"

# interfaces
.implements Landroidx/core/view/insets/SystemBarStateMonitor$Callback;


# instance fields
.field private mAnimationCount:I

.field private mDisposed:Z

.field private mInsets:Landroidx/core/graphics/Insets;

.field private mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

.field private final mMonitor:Landroidx/core/view/insets/SystemBarStateMonitor;

.field private final mProtections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/insets/Protection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/core/view/insets/SystemBarStateMonitor;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/insets/SystemBarStateMonitor;",
            "Ljava/util/List<",
            "Landroidx/core/view/insets/Protection;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    .line 47
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsets:Landroidx/core/graphics/Insets;

    .line 48
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/ProtectionGroup;->addProtections(Ljava/util/List;Z)V

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p2, v0}, Landroidx/core/view/insets/ProtectionGroup;->addProtections(Ljava/util/List;Z)V

    .line 55
    invoke-virtual {p1, p0}, Landroidx/core/view/insets/SystemBarStateMonitor;->addCallback(Landroidx/core/view/insets/SystemBarStateMonitor$Callback;)V

    .line 56
    iput-object p1, p0, Landroidx/core/view/insets/ProtectionGroup;->mMonitor:Landroidx/core/view/insets/SystemBarStateMonitor;

    return-void
.end method

.method private addProtections(Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/view/insets/Protection;",
            ">;Z)V"
        }
    .end annotation

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_42

    .line 62
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/Protection;

    .line 63
    invoke-virtual {v2}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v3

    if-eq v3, p2, :cond_14

    goto :goto_22

    .line 66
    :cond_14
    invoke-virtual {v2}, Landroidx/core/view/insets/Protection;->getController()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_25

    .line 68
    invoke-virtual {v2, p0}, Landroidx/core/view/insets/Protection;->setController(Ljava/lang/Object;)V

    .line 69
    iget-object v3, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 71
    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is already controlled by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    return-void
.end method

.method private updateInsets()V
    .registers 6

    .line 78
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 79
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_23

    .line 80
    iget-object v2, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/Protection;

    .line 81
    iget-object v3, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsets:Landroidx/core/graphics/Insets;

    iget-object v4, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    invoke-virtual {v2, v3, v4, v0}, Landroidx/core/view/insets/Protection;->dispatchInsets(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_23
    return-void
.end method


# virtual methods
.method dispose()V
    .registers 4

    .line 183
    iget-boolean v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mDisposed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 186
    iput-boolean v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mDisposed:Z

    .line 187
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionGroup;->mMonitor:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-virtual {v1, p0}, Landroidx/core/view/insets/SystemBarStateMonitor;->removeCallback(Landroidx/core/view/insets/SystemBarStateMonitor$Callback;)V

    .line 188
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_14
    if-ltz v1, :cond_25

    .line 189
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/insets/Protection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/core/view/insets/Protection;->setController(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 191
    :cond_25
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method getProtection(I)Landroidx/core/view/insets/Protection;
    .registers 3

    .line 176
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/view/insets/Protection;

    return-object p1
.end method

.method public onAnimationEnd()V
    .registers 4

    .line 150
    iget v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mAnimationCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    move v2, v1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    sub-int/2addr v0, v1

    .line 151
    iput v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mAnimationCount:I

    if-eqz v2, :cond_12

    if-nez v0, :cond_12

    .line 155
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionGroup;->updateInsets()V

    :cond_12
    return-void
.end method

.method public onAnimationProgress(ILandroidx/core/graphics/Insets;Landroid/graphics/RectF;)V
    .registers 10

    .line 107
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 108
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_7f

    .line 109
    iget-object v3, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/insets/Protection;

    .line 110
    invoke-virtual {v3}, Landroidx/core/view/insets/Protection;->getSide()I

    move-result v4

    and-int v5, v4, p1

    if-nez v5, :cond_1d

    goto :goto_7c

    .line 114
    :cond_1d
    invoke-virtual {v3, v2}, Landroidx/core/view/insets/Protection;->setSystemVisible(Z)V

    if-eq v4, v2, :cond_69

    const/4 v5, 0x2

    if-eq v4, v5, :cond_55

    const/4 v5, 0x4

    if-eq v4, v5, :cond_41

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2d

    goto :goto_7c

    .line 138
    :cond_2d
    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    if-lez v4, :cond_3b

    .line 139
    iget v4, p2, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v4, v4

    iget v5, v0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    .line 142
    :cond_3b
    iget v4, p3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_7c

    .line 131
    :cond_41
    iget v4, v0, Landroidx/core/graphics/Insets;->right:I

    if-lez v4, :cond_4f

    .line 132
    iget v4, p2, Landroidx/core/graphics/Insets;->right:I

    int-to-float v4, v4

    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    .line 135
    :cond_4f
    iget v4, p3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_7c

    .line 124
    :cond_55
    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    if-lez v4, :cond_63

    .line 125
    iget v4, p2, Landroidx/core/graphics/Insets;->top:I

    int-to-float v4, v4

    iget v5, v0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    .line 128
    :cond_63
    iget v4, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    goto :goto_7c

    .line 117
    :cond_69
    iget v4, v0, Landroidx/core/graphics/Insets;->left:I

    if-lez v4, :cond_77

    .line 118
    iget v4, p2, Landroidx/core/graphics/Insets;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    .line 121
    :cond_77
    iget v4, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    :goto_7c
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_7f
    return-void
.end method

.method public onAnimationStart()V
    .registers 2

    .line 102
    iget v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mAnimationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mAnimationCount:I

    return-void
.end method

.method public onColorHintChanged(I)V
    .registers 4

    .line 95
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 96
    iget-object v1, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/insets/Protection;

    invoke-virtual {v1, p1}, Landroidx/core/view/insets/Protection;->dispatchColorHint(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public onInsetsChanged(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 88
    iput-object p1, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsets:Landroidx/core/graphics/Insets;

    .line 89
    iput-object p2, p0, Landroidx/core/view/insets/ProtectionGroup;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 90
    invoke-direct {p0}, Landroidx/core/view/insets/ProtectionGroup;->updateInsets()V

    return-void
.end method

.method size()I
    .registers 2

    .line 165
    iget-object v0, p0, Landroidx/core/view/insets/ProtectionGroup;->mProtections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
