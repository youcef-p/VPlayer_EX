###### Class androidx.core.view.insets.Protection (androidx.core.view.insets.Protection)
.class public abstract Landroidx/core/view/insets/Protection;
.super Ljava/lang/Object;
.source "Protection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/Protection$Attributes;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_IN:J = 0x14dL

.field private static final DEFAULT_DURATION_OUT:J = 0xa6L

.field private static final DEFAULT_INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_INTERPOLATOR_MOVE_IN:Landroid/view/animation/Interpolator;

.field private static final DEFAULT_INTERPOLATOR_MOVE_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAttributes:Landroidx/core/view/insets/Protection$Attributes;

.field private mController:Ljava/lang/Object;

.field private mInsets:Landroidx/core/graphics/Insets;

.field private mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

.field private final mSide:I

.field private mSystemAlpha:F

.field private mSystemInsetAmount:F

.field private mUserAlpha:F

.field private mUserAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mUserInsetAmount:F

.field private mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 49
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_IN:Landroid/view/animation/Interpolator;

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_OUT:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroidx/core/view/insets/Protection$Attributes;

    invoke-direct {v0}, Landroidx/core/view/insets/Protection$Attributes;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    .line 66
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    .line 67
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Landroidx/core/view/insets/Protection;->mSystemAlpha:F

    .line 69
    iput v0, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    .line 70
    iput v0, p0, Landroidx/core/view/insets/Protection;->mSystemInsetAmount:F

    .line 71
    iput v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mController:Ljava/lang/Object;

    .line 76
    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 77
    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_46

    const/4 v0, 0x2

    if-eq p1, v0, :cond_46

    const/4 v0, 0x4

    if-eq p1, v0, :cond_46

    const/16 v0, 0x8

    if-ne p1, v0, :cond_31

    goto :goto_46

    .line 93
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected side: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_46
    :goto_46
    iput p1, p0, Landroidx/core/view/insets/Protection;->mSide:I

    return-void
.end method

.method private cancelUserAlphaAnimation()V
    .registers 2

    .line 255
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 256
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method private cancelUserInsetsAmountAnimation()V
    .registers 2

    .line 343
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 344
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    :cond_a
    return-void
.end method

.method private setAlphaInternal(F)V
    .registers 2

    .line 235
    iput p1, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    .line 236
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->updateAlpha()V

    return-void
.end method

.method private setInsetAmountInternal(F)V
    .registers 2

    .line 310
    iput p1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    .line 311
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->updateInsetAmount()V

    return-void
.end method

.method private updateAlpha()V
    .registers 4

    .line 251
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    iget v1, p0, Landroidx/core/view/insets/Protection;->mSystemAlpha:F

    iget v2, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/view/insets/Protection$Attributes;->access$400(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void
.end method

.method private updateInsetAmount()V
    .registers 5

    .line 325
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    iget v1, p0, Landroidx/core/view/insets/Protection;->mSystemInsetAmount:F

    mul-float/2addr v0, v1

    .line 326
    iget v1, p0, Landroidx/core/view/insets/Protection;->mSide:I

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x2

    if-eq v1, v2, :cond_31

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const/16 v2, 0x8

    if-eq v1, v2, :cond_17

    return-void

    .line 337
    :cond_17
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    sub-float/2addr v3, v0

    invoke-static {v1}, Landroidx/core/view/insets/Protection$Attributes;->access$700(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-static {v1, v3}, Landroidx/core/view/insets/Protection$Attributes;->access$800(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    .line 334
    :cond_24
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    sub-float/2addr v3, v0

    invoke-static {v1}, Landroidx/core/view/insets/Protection$Attributes;->access$500(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    invoke-static {v1, v3}, Landroidx/core/view/insets/Protection$Attributes;->access$600(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    .line 331
    :cond_31
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    sub-float/2addr v3, v0

    neg-float v0, v3

    invoke-static {v1}, Landroidx/core/view/insets/Protection$Attributes;->access$700(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Landroidx/core/view/insets/Protection$Attributes;->access$800(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void

    .line 328
    :cond_3f
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    sub-float/2addr v3, v0

    neg-float v0, v3

    invoke-static {v1}, Landroidx/core/view/insets/Protection$Attributes;->access$500(Landroidx/core/view/insets/Protection$Attributes;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    invoke-static {v1, v0}, Landroidx/core/view/insets/Protection$Attributes;->access$600(Landroidx/core/view/insets/Protection$Attributes;F)V

    return-void
.end method


# virtual methods
.method public animateAlpha(F)V
    .registers 5

    .line 270
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->cancelUserAlphaAnimation()V

    .line 271
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x2

    .line 274
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 275
    iget v1, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    cmpg-float p1, v1, p1

    if-gez p1, :cond_2c

    const-wide/16 v1, 0x14d

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_38

    :cond_2c
    const-wide/16 v1, 0xa6

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_FADE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    :goto_38
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/insets/Protection;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public animateInsetsAmount(F)V
    .registers 5

    .line 358
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->cancelUserInsetsAmountAnimation()V

    .line 359
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x2

    .line 362
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    .line 363
    iget v1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    cmpg-float p1, v1, p1

    if-gez p1, :cond_2c

    const-wide/16 v1, 0x14d

    .line 364
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 365
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_38

    :cond_2c
    const-wide/16 v1, 0xa6

    .line 367
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 368
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    sget-object v0, Landroidx/core/view/insets/Protection;->DEFAULT_INTERPOLATOR_MOVE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    :goto_38
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/insets/Protection;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmountAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method dispatchColorHint(I)V
    .registers 2

    return-void
.end method

.method dispatchInsets(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;
    .registers 4

    .line 151
    iput-object p1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    .line 152
    iput-object p2, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 153
    iget-object p1, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    invoke-static {p1, p3}, Landroidx/core/view/insets/Protection$Attributes;->access$000(Landroidx/core/view/insets/Protection$Attributes;Landroidx/core/graphics/Insets;)V

    .line 154
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->updateLayout()Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getAlpha()F
    .registers 2

    .line 247
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserAlpha:F

    return v0
.end method

.method getAttributes()Landroidx/core/view/insets/Protection$Attributes;
    .registers 2

    .line 115
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    return-object v0
.end method

.method getController()Ljava/lang/Object;
    .registers 2

    .line 202
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mController:Ljava/lang/Object;

    return-object v0
.end method

.method public getInsetAmount()F
    .registers 2

    .line 321
    iget v0, p0, Landroidx/core/view/insets/Protection;->mUserInsetAmount:F

    return v0
.end method

.method public getSide()I
    .registers 2

    .line 105
    iget v0, p0, Landroidx/core/view/insets/Protection;->mSide:I

    return v0
.end method

.method getThickness(I)I
    .registers 2

    return p1
.end method

.method synthetic lambda$animateAlpha$0$androidx-core-view-insets-Protection(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 283
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection;->setAlphaInternal(F)V

    return-void
.end method

.method synthetic lambda$animateInsetsAmount$1$androidx-core-view-insets-Protection(Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection;->setAlphaInternal(F)V

    return-void
.end method

.method occupiesCorners()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 229
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->cancelUserAlphaAnimation()V

    .line 230
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection;->setAlphaInternal(F)V

    return-void

    .line 227
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alpha must in a range of [0, 1]. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setController(Ljava/lang/Object;)V
    .registers 2

    .line 206
    iput-object p1, p0, Landroidx/core/view/insets/Protection;->mController:Ljava/lang/Object;

    return-void
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 376
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    invoke-static {v0, p1}, Landroidx/core/view/insets/Protection$Attributes;->access$900(Landroidx/core/view/insets/Protection$Attributes;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInsetAmount(F)V
    .registers 5

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_12

    .line 304
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->cancelUserInsetsAmountAnimation()V

    .line 305
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection;->setInsetAmountInternal(F)V

    return-void

    .line 301
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inset amount must in a range of [0, 1]. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setSystemAlpha(F)V
    .registers 2

    .line 214
    iput p1, p0, Landroidx/core/view/insets/Protection;->mSystemAlpha:F

    .line 215
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->updateAlpha()V

    return-void
.end method

.method setSystemInsetAmount(F)V
    .registers 2

    .line 288
    iput p1, p0, Landroidx/core/view/insets/Protection;->mSystemInsetAmount:F

    .line 289
    invoke-direct {p0}, Landroidx/core/view/insets/Protection;->updateInsetAmount()V

    return-void
.end method

.method setSystemVisible(Z)V
    .registers 3

    .line 210
    iget-object v0, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    invoke-static {v0, p1}, Landroidx/core/view/insets/Protection$Attributes;->access$300(Landroidx/core/view/insets/Protection$Attributes;Z)V

    return-void
.end method

.method updateLayout()Landroidx/core/graphics/Insets;
    .registers 7

    .line 158
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 160
    iget v1, p0, Landroidx/core/view/insets/Protection;->mSide:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_75

    const/4 v4, 0x2

    if-eq v1, v4, :cond_55

    const/4 v4, 0x4

    if-eq v1, v4, :cond_35

    const/16 v4, 0x8

    if-eq v1, v4, :cond_15

    move v1, v2

    goto/16 :goto_94

    .line 183
    :cond_15
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 184
    iget-object v4, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$200(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 185
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 186
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v2, v2, v2, v0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_94

    .line 176
    :cond_35
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->right:I

    .line 177
    iget-object v4, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->right:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$100(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 178
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 179
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v2, v2, v0, v2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_94

    .line 169
    :cond_55
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->top:I

    .line 170
    iget-object v4, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$200(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 171
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 172
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v2, v0, v2, v2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_94

    .line 162
    :cond_75
    iget-object v1, p0, Landroidx/core/view/insets/Protection;->mInsets:Landroidx/core/graphics/Insets;

    iget v1, v1, Landroidx/core/graphics/Insets;->left:I

    .line 163
    iget-object v4, p0, Landroidx/core/view/insets/Protection;->mAttributes:Landroidx/core/view/insets/Protection$Attributes;

    iget-object v5, p0, Landroidx/core/view/insets/Protection;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    iget v5, v5, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {p0, v5}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/view/insets/Protection$Attributes;->access$100(Landroidx/core/view/insets/Protection$Attributes;I)V

    .line 164
    invoke-virtual {p0}, Landroidx/core/view/insets/Protection;->occupiesCorners()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 165
    invoke-virtual {p0, v1}, Landroidx/core/view/insets/Protection;->getThickness(I)I

    move-result v0

    invoke-static {v0, v2, v2, v2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    :cond_94
    :goto_94
    if-lez v1, :cond_97

    move v2, v3

    .line 192
    :cond_97
    invoke-virtual {p0, v2}, Landroidx/core/view/insets/Protection;->setSystemVisible(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_a1

    move v4, v2

    goto :goto_a2

    :cond_a1
    move v4, v3

    .line 193
    :goto_a2
    invoke-virtual {p0, v4}, Landroidx/core/view/insets/Protection;->setSystemAlpha(F)V

    if-lez v1, :cond_a8

    goto :goto_a9

    :cond_a8
    move v2, v3

    .line 194
    :goto_a9
    invoke-virtual {p0, v2}, Landroidx/core/view/insets/Protection;->setSystemInsetAmount(F)V

    return-object v0
.end method

###### Class androidx.core.view.insets.Protection.Attributes (androidx.core.view.insets.Protection$Attributes)
.class Landroidx/core/view/insets/Protection$Attributes;
.super Ljava/lang/Object;
.source "Protection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/Protection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Attributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/Protection$Attributes$Callback;
    }
.end annotation


# static fields
.field private static final UNSPECIFIED:I = -0x1


# instance fields
.field private mAlpha:F

.field private mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mMargin:Landroidx/core/graphics/Insets;

.field private mTranslationX:F

.field private mTranslationY:F

.field private mVisible:Z

.field private mWidth:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 386
    iput v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mWidth:I

    .line 387
    iput v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mHeight:I

    .line 388
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mMargin:Landroidx/core/graphics/Insets;

    const/4 v0, 0x0

    .line 389
    iput-boolean v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mVisible:Z

    const/4 v0, 0x0

    .line 390
    iput-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 391
    iput v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationX:F

    .line 392
    iput v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 393
    iput v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mAlpha:F

    return-void
.end method

.method static synthetic access$000(Landroidx/core/view/insets/Protection$Attributes;Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setMargin(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/core/view/insets/Protection$Attributes;I)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setWidth(I)V

    return-void
.end method

.method static synthetic access$200(Landroidx/core/view/insets/Protection$Attributes;I)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setHeight(I)V

    return-void
.end method

.method static synthetic access$300(Landroidx/core/view/insets/Protection$Attributes;Z)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setVisible(Z)V

    return-void
.end method

.method static synthetic access$400(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setAlpha(F)V

    return-void
.end method

.method static synthetic access$500(Landroidx/core/view/insets/Protection$Attributes;)I
    .registers 1

    .line 382
    iget p0, p0, Landroidx/core/view/insets/Protection$Attributes;->mWidth:I

    return p0
.end method

.method static synthetic access$600(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setTranslationX(F)V

    return-void
.end method

.method static synthetic access$700(Landroidx/core/view/insets/Protection$Attributes;)I
    .registers 1

    .line 382
    iget p0, p0, Landroidx/core/view/insets/Protection$Attributes;->mHeight:I

    return p0
.end method

.method static synthetic access$800(Landroidx/core/view/insets/Protection$Attributes;F)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setTranslationY(F)V

    return-void
.end method

.method static synthetic access$900(Landroidx/core/view/insets/Protection$Attributes;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 382
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$Attributes;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setAlpha(F)V
    .registers 3

    .line 530
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 531
    iput p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mAlpha:F

    .line 532
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_f

    .line 533
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onAlphaChanged(F)V

    :cond_f
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 505
    iput-object p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 506
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_9

    .line 507
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method private setHeight(I)V
    .registers 3

    .line 478
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mHeight:I

    if-eq v0, p1, :cond_d

    .line 479
    iput p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mHeight:I

    .line 480
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_d

    .line 481
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onHeightChanged(I)V

    :cond_d
    return-void
.end method

.method private setMargin(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 487
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mMargin:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, p1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 488
    iput-object p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mMargin:Landroidx/core/graphics/Insets;

    .line 489
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_11

    .line 490
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onMarginChanged(Landroidx/core/graphics/Insets;)V

    :cond_11
    return-void
.end method

.method private setTranslationX(F)V
    .registers 3

    .line 512
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 513
    iput p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationX:F

    .line 514
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_f

    .line 515
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onTranslationXChanged(F)V

    :cond_f
    return-void
.end method

.method private setTranslationY(F)V
    .registers 3

    .line 521
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_f

    .line 522
    iput p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationY:F

    .line 523
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_f

    .line 524
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onTranslationYChanged(F)V

    :cond_f
    return-void
.end method

.method private setVisible(Z)V
    .registers 3

    .line 496
    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mVisible:Z

    if-eq v0, p1, :cond_d

    .line 497
    iput-boolean p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mVisible:Z

    .line 498
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_d

    .line 499
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onVisibilityChanged(Z)V

    :cond_d
    return-void
.end method

.method private setWidth(I)V
    .registers 3

    .line 469
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mWidth:I

    if-eq v0, p1, :cond_d

    .line 470
    iput p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mWidth:I

    .line 471
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_d

    .line 472
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$Attributes$Callback;->onWidthChanged(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method getAlpha()F
    .registers 2

    .line 465
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mAlpha:F

    return v0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 438
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 411
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mHeight:I

    return v0
.end method

.method getMargin()Landroidx/core/graphics/Insets;
    .registers 2

    .line 420
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mMargin:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method getTranslationX()F
    .registers 2

    .line 447
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationX:F

    return v0
.end method

.method getTranslationY()F
    .registers 2

    .line 456
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mTranslationY:F

    return v0
.end method

.method getWidth()I
    .registers 2

    .line 402
    iget v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mWidth:I

    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mVisible:Z

    return v0
.end method

.method setCallback(Landroidx/core/view/insets/Protection$Attributes$Callback;)V
    .registers 3

    .line 574
    iget-object v0, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    if-eqz v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 575
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 578
    :cond_f
    :goto_f
    iput-object p1, p0, Landroidx/core/view/insets/Protection$Attributes;->mCallback:Landroidx/core/view/insets/Protection$Attributes$Callback;

    return-void
.end method

###### Class androidx.core.view.insets.Protection.Attributes.Callback (androidx.core.view.insets.Protection$Attributes$Callback)
.class interface abstract Landroidx/core/view/insets/Protection$Attributes$Callback;
.super Ljava/lang/Object;
.source "Protection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/Protection$Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public onAlphaChanged(F)V
    .registers 2

    return-void
.end method

.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public onHeightChanged(I)V
    .registers 2

    return-void
.end method

.method public onMarginChanged(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method public onTranslationXChanged(F)V
    .registers 2

    return-void
.end method

.method public onTranslationYChanged(F)V
    .registers 2

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onWidthChanged(I)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.insets.Protection$$ExternalSyntheticLambda0 (androidx.core.view.insets.Protection$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/insets/Protection;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/Protection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/insets/Protection;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/insets/Protection;

    invoke-virtual {v0, p1}, Landroidx/core/view/insets/Protection;->lambda$animateInsetsAmount$1$androidx-core-view-insets-Protection(Landroid/animation/ValueAnimator;)V

    return-void
.end method

###### Class androidx.core.view.insets.Protection$$ExternalSyntheticLambda1 (androidx.core.view.insets.Protection$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/insets/Protection;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/Protection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/insets/Protection;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/core/view/insets/Protection$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/insets/Protection;

    invoke-virtual {v0, p1}, Landroidx/core/view/insets/Protection;->lambda$animateAlpha$0$androidx-core-view-insets-Protection(Landroid/animation/ValueAnimator;)V

    return-void
.end method
