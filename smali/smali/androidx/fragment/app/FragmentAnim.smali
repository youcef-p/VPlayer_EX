###### Class androidx.fragment.app.FragmentAnim (androidx.fragment.app.FragmentAnim)
.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I
    .registers 3

    if-eqz p2, :cond_e

    if-eqz p1, :cond_9

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p0

    return p0

    .line 128
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p0

    return p0

    :cond_e
    if-eqz p1, :cond_15

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p0

    return p0

    .line 134
    :cond_15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p0

    return p0
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .registers 8

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 49
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/FragmentAnim;->getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I

    move-result p3

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 57
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 58
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 59
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 62
    :cond_22
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2f

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_2f

    return-object v2

    .line 66
    :cond_2f
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_3b

    .line 68
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 71
    :cond_3b
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 73
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_47
    if-nez p3, :cond_4f

    if-eqz v0, :cond_4f

    .line 77
    invoke-static {p0, v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(Landroid/content/Context;IZ)I

    move-result p3

    :cond_4f
    if-eqz p3, :cond_8b

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string p2, "anim"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 87
    :try_start_61
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 89
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_6c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_61 .. :try_end_6c} :catch_6d
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_6c} :catch_6f

    return-object v0

    :catch_6d
    move-exception p0

    .line 94
    throw p0

    .line 102
    :catch_6f
    :cond_6f
    :try_start_6f
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_8b

    .line 104
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_7a} :catch_7b

    return-object v0

    :catch_7b
    move-exception p2

    if-nez p1, :cond_8a

    .line 112
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_8b

    .line 114
    new-instance p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 109
    :cond_8a
    throw p2

    :cond_8b
    return-object v2
.end method

.method private static toActivityTransitResId(Landroid/content/Context;I)I
    .registers 3

    const v0, 0x1030001

    .line 172
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 174
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 175
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static transitToAnimResourceId(Landroid/content/Context;IZ)I
    .registers 4

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_4a

    const/16 v0, 0x2002

    if-eq p1, v0, :cond_42

    const/16 v0, 0x2005

    if-eq p1, v0, :cond_30

    const/16 v0, 0x1003

    if-eq p1, v0, :cond_28

    const/16 v0, 0x1004

    if-eq p1, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    if-eqz p2, :cond_20

    const p1, 0x10100b8

    .line 155
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_20
    const p1, 0x10100b9

    .line 156
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_28
    if-eqz p2, :cond_2d

    .line 151
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    return p0

    :cond_2d
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    return p0

    :cond_30
    if-eqz p2, :cond_3a

    const p1, 0x10100ba

    .line 160
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_3a
    const p1, 0x10100bb

    .line 162
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_42
    if-eqz p2, :cond_47

    .line 148
    sget p0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    return p0

    :cond_47
    sget p0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    return p0

    :cond_4a
    if-eqz p2, :cond_4f

    .line 145
    sget p0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    return p0

    :cond_4f
    sget p0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    return p0
.end method

###### Class androidx.fragment.app.FragmentAnim.AnimationOrAnimator (androidx.fragment.app.FragmentAnim$AnimationOrAnimator)
.class Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationOrAnimator"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/Animation;

.field public final animator:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    .line 196
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/AnimatorSet;

    .line 197
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p1, :cond_13

    return-void

    .line 199
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animator cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroid/view/animation/Animation;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 188
    iput-object v0, p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_b

    return-void

    .line 190
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class androidx.fragment.app.FragmentAnim.EndViewTransitionAnimation (androidx.fragment.app.FragmentAnim$EndViewTransitionAnimation)
.class Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
.super Landroid/view/animation/AnimationSet;
.source "FragmentAnim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EndViewTransitionAnimation"
.end annotation


# instance fields
.field private mAnimating:Z

.field private final mChild:Landroid/view/View;

.field private mEnded:Z

.field private final mParent:Landroid/view/ViewGroup;

.field private mTransitionEnded:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 220
    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    .line 221
    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    .line 222
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 6

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 231
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 232
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr p1, v0

    return p1

    .line 234
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 236
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 237
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_18
    return v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 7

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 246
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-eqz v1, :cond_b

    .line 247
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    xor-int/2addr p1, v0

    return p1

    .line 249
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_18

    .line 251
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    .line 252
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/core/view/OneShotPreDrawListener;

    :cond_18
    return v0
.end method

.method public run()V
    .registers 3

    .line 259
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mEnded:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mAnimating:Z

    .line 262
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 264
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;->mTransitionEnded:Z

    return-void
.end method
