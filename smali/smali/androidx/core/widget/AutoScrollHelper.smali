###### Class androidx.core.widget.AutoScrollHelper (androidx.core.widget.AutoScrollHelper)
.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 196
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 142
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    .line 151
    new-array v1, v0, [F

    fill-array-data v1, :array_7c

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 154
    new-array v1, v0, [F

    fill-array-data v1, :array_84

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 163
    new-array v1, v0, [F

    fill-array-data v1, :array_8c

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 166
    new-array v1, v0, [F

    fill-array-data v1, :array_94

    iput-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 169
    new-array v0, v0, [F

    fill-array-data v0, :array_9c

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 212
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 214
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const v0, 0x44c4e000    # 1575.0f

    .line 215
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    const v2, 0x439d8000    # 315.0f

    .line 216
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float v0, v1

    .line 217
    invoke-virtual {p0, v0, v0}, Landroidx/core/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    int-to-float p1, p1

    .line 218
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    const/4 p1, 0x1

    .line 220
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 221
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const p1, 0x3e4ccccd    # 0.2f

    .line 222
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 223
    invoke-virtual {p0, p1, p1}, Landroidx/core/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    .line 224
    sget p1, Landroidx/core/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    const/16 p1, 0x1f4

    .line 225
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    .line 226
    invoke-virtual {p0, p1}, Landroidx/core/widget/AutoScrollHelper;->setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    return-void

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_84
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 8

    .line 541
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 542
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 543
    invoke-direct {p0, v0, p3, v1, p2}, Landroidx/core/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    return p3

    .line 549
    :cond_12
    iget-object p3, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget p3, p3, p1

    .line 550
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v1, v1, p1

    .line 551
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget p1, v2, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_27

    mul-float/2addr p2, p3

    .line 558
    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    return p1

    :cond_27
    neg-float p2, p2

    mul-float/2addr p2, p3

    .line 560
    invoke-static {p2, v1, p1}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    neg-float p1, p1

    return p1
.end method

.method static constrain(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method static constrain(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .registers 8

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    .line 630
    :cond_6
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-eq v1, v2, :cond_18

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    goto :goto_2c

    :cond_11
    cmpg-float v1, p1, v0

    if-gez v1, :cond_2c

    neg-float p2, p2

    div-float/2addr p1, p2

    return p1

    :cond_18
    cmpg-float v3, p1, p2

    if-gez v3, :cond_2c

    cmpl-float v3, p1, v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ltz v3, :cond_25

    div-float/2addr p1, p2

    sub-float/2addr v4, p1

    return v4

    .line 637
    :cond_25
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_2c

    if-ne v1, v2, :cond_2c

    return v4

    :cond_2c
    :goto_2c
    return v0
.end method

.method private getEdgeValue(FFFF)F
    .registers 6

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    .line 609
    invoke-static {p1, v0, p3}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    .line 610
    invoke-direct {p0, p4, p1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 611
    invoke-direct {p0, p2, p1}, Landroidx/core/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1d

    .line 615
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    neg-float p1, p1

    goto :goto_27

    :cond_1d
    cmpl-float p2, p1, v0

    if-lez p2, :cond_30

    .line 617
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :goto_27
    const/high16 p2, -0x40800000    # -1.0f

    const/high16 p3, 0x3f800000    # 1.0f

    .line 622
    invoke-static {p1, p2, p3}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    return p1

    :cond_30
    return v0
.end method

.method private requestStop()V
    .registers 2

    .line 530
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    return-void

    .line 535
    :cond_8
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    return-void
.end method

.method private startAnimating()V
    .registers 7

    .line 506
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 507
    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_b
    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    .line 511
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 513
    iget-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_21

    iget v1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_21

    .line 514
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_26

    .line 516
    :cond_21
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 521
    :goto_26
    iput-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .registers 9

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-wide v2, v0

    .line 680
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 682
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 683
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    return v0
.end method

.method public isExclusive()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 458
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 462
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x3

    if-eq v0, p1, :cond_16

    goto :goto_58

    .line 483
    :cond_16
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    goto :goto_58

    .line 465
    :cond_1a
    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 466
    iput-boolean v1, p0, Landroidx/core/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 470
    :cond_1e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 469
    invoke-direct {p0, v1, v0, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    .line 472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 471
    invoke-direct {p0, v2, p2, p1, v3}, Landroidx/core/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result p1

    .line 473
    iget-object p2, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p2, v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 477
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez p1, :cond_58

    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 478
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->startAnimating()V

    .line 487
    :cond_58
    :goto_58
    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz p1, :cond_61

    iget-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_61

    return v2

    :cond_61
    return v1
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    .line 414
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    .line 356
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    .line 237
    iget-boolean v0, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 238
    invoke-direct {p0}, Landroidx/core/widget/AutoScrollHelper;->requestStop()V

    .line 241
    :cond_9
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0
.end method

.method public setExclusive(Z)Landroidx/core/widget/AutoScrollHelper;
    .registers 2

    .line 265
    iput-boolean p1, p0, Landroidx/core/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    .line 397
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 398
    aput p2, v0, p1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    .line 296
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    .line 297
    aput p2, v0, p1

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    .line 314
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    .line 315
    aput p2, v0, p1

    return-object p0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    .line 444
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .registers 3

    .line 429
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 5

    .line 375
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 376
    aput p2, v0, p1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .registers 6

    .line 335
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    const/4 p1, 0x1

    div-float/2addr p2, v1

    .line 336
    aput p2, v0, p1

    return-object p0
.end method

.method shouldAnimate()Z
    .registers 3

    .line 494
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 495
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 496
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_12

    .line 498
    invoke-virtual {p0, v1}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    .line 499
    invoke-virtual {p0, v0}, Landroidx/core/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

###### Class androidx.core.widget.AutoScrollHelper.ClampedScroller (androidx.core.widget.AutoScrollHelper$ClampedScroller)
.class Landroidx/core/widget/AutoScrollHelper$ClampedScroller;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClampedScroller"
.end annotation


# instance fields
.field private mDeltaTime:J

.field private mDeltaX:I

.field private mDeltaY:I

.field private mEffectiveRampDown:I

.field private mRampDownDuration:I

.field private mRampUpDuration:I

.field private mStartTime:J

.field private mStopTime:J

.field private mStopValue:F

.field private mTargetVelocityX:F

.field private mTargetVelocityY:F


# direct methods
.method constructor <init>()V
    .registers 3

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 749
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v0, -0x1

    .line 750
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v0, 0x0

    .line 751
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/4 v0, 0x0

    .line 752
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 753
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method

.method private getValueAt(J)F
    .registers 11

    .line 792
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gez v2, :cond_8

    return v3

    .line 794
    :cond_8
    iget-wide v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    const/high16 v6, 0x3f800000    # 1.0f

    if-ltz v2, :cond_28

    cmp-long v2, p1, v4

    if-gez v2, :cond_17

    goto :goto_28

    :cond_17
    sub-long/2addr p1, v4

    .line 799
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    sub-float v1, v6, v0

    long-to-float p1, p1

    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 800
    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    return v1

    :cond_28
    :goto_28
    sub-long/2addr p1, v0

    long-to-float p1, p1

    .line 796
    iget p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1, v3, v6}, Landroidx/core/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    return p1
.end method

.method private interpolateValue(F)F
    .registers 4

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public computeScrollDelta()V
    .registers 6

    .line 823
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    .line 827
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 828
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    .line 829
    invoke-direct {p0, v2}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->interpolateValue(F)F

    move-result v2

    .line 830
    iget-wide v3, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    sub-long v3, v0, v3

    .line 832
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    long-to-float v0, v3

    mul-float/2addr v0, v2

    .line 833
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 834
    iget v1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void

    .line 824
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDeltaX()I
    .registers 2

    .line 861
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .registers 2

    .line 869
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return v0
.end method

.method public getHorizontalDirection()I
    .registers 3

    .line 849
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getVerticalDirection()I
    .registers 3

    .line 853
    iget v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .registers 7

    .line 787
    iget-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    .line 788
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public requestStop()V
    .registers 6

    .line 780
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 781
    iget-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    invoke-static {v2, v3, v4}, Landroidx/core/widget/AutoScrollHelper;->constrain(III)I

    move-result v2

    iput v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mEffectiveRampDown:I

    .line 782
    invoke-direct {p0, v0, v1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getValueAt(J)F

    move-result v2

    iput v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    .line 783
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    return-void
.end method

.method public setRampDownDuration(I)V
    .registers 2

    .line 761
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampDownDuration:I

    return-void
.end method

.method public setRampUpDuration(I)V
    .registers 2

    .line 757
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mRampUpDuration:I

    return-void
.end method

.method public setTargetVelocity(FF)V
    .registers 3

    .line 844
    iput p1, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityX:F

    .line 845
    iput p2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mTargetVelocityY:F

    return-void
.end method

.method public start()V
    .registers 5

    .line 768
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStartTime:J

    const-wide/16 v2, -0x1

    .line 769
    iput-wide v2, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopTime:J

    .line 770
    iput-wide v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaTime:J

    const/high16 v0, 0x3f000000    # 0.5f

    .line 771
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mStopValue:F

    const/4 v0, 0x0

    .line 772
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaX:I

    .line 773
    iput v0, p0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->mDeltaY:I

    return-void
.end method

###### Class androidx.core.widget.AutoScrollHelper.ScrollAnimationRunnable (androidx.core.widget.AutoScrollHelper$ScrollAnimationRunnable)
.class Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 687
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 692
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v0, v0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v0, :cond_7

    return-void

    .line 696
    :cond_7
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v0, v0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 697
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 698
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 701
    :cond_19
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 702
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_53

    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v2}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_53

    .line 707
    :cond_2c
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v2, v2, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v2, :cond_3b

    .line 708
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v1, v2, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 709
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper;->cancelTargetTouch()V

    .line 712
    :cond_3b
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 714
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v1

    .line 715
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v0

    .line 716
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 719
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 703
    :cond_53
    :goto_53
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method
