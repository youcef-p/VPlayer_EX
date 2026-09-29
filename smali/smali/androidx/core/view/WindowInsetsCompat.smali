###### Class androidx.core.view.WindowInsetsCompat (androidx.core.view.WindowInsetsCompat)
.class public Landroidx/core/view/WindowInsetsCompat;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Impl34;,
        Landroidx/core/view/WindowInsetsCompat$Impl;,
        Landroidx/core/view/WindowInsetsCompat$Impl30;,
        Landroidx/core/view/WindowInsetsCompat$Impl29;,
        Landroidx/core/view/WindowInsetsCompat$Impl28;,
        Landroidx/core/view/WindowInsetsCompat$Impl21;,
        Landroidx/core/view/WindowInsetsCompat$Impl20;,
        Landroidx/core/view/WindowInsetsCompat$Type;,
        Landroidx/core/view/WindowInsetsCompat$Builder;,
        Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;,
        Landroidx/core/view/WindowInsetsCompat$TypeImpl34;,
        Landroidx/core/view/WindowInsetsCompat$TypeImpl30;,
        Landroidx/core/view/WindowInsetsCompat$Side;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;,
        Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
    }
.end annotation


# static fields
.field public static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;

.field private static final TAG:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_b

    .line 79
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl34;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void

    .line 80
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_16

    .line 81
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void

    .line 83
    :cond_16
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    sput-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_11

    .line 92
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl34;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl34;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    return-void

    .line 93
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1f

    .line 94
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    return-void

    .line 95
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2d

    .line 96
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    return-void

    .line 98
    :cond_2d
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_7e

    .line 116
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1c

    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl34;

    if-eqz v0, :cond_1c

    .line 118
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl34;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl34;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl34;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl34;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 119
    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_31

    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    if-eqz v0, :cond_31

    .line 120
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl30;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl30;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl30;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 121
    :cond_31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_46

    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    if-eqz v0, :cond_46

    .line 122
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl29;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl29;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl29;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 123
    :cond_46
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    if-eqz v0, :cond_55

    .line 124
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl28;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 125
    :cond_55
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    if-eqz v0, :cond_64

    .line 126
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl21;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl21;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 127
    :cond_64
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v0, :cond_73

    .line 128
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    goto :goto_7a

    .line 130
    :cond_73
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 132
    :goto_7a
    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V

    return-void

    .line 135
    :cond_7e
    new-instance p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-direct {p1, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    return-void
.end method

.method static insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;
    .registers 10

    .line 1322
    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1323
    iget v2, p0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1324
    iget v3, p0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1325
    iget v4, p0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_26

    if-ne v2, p2, :cond_26

    if-ne v3, p3, :cond_26

    if-ne v1, p4, :cond_26

    return-object p0

    .line 1329
    :cond_26
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 172
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_28

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 175
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->setSystemUiVisibility(I)V

    :cond_28
    return-object v0
.end method


# virtual methods
.method public consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 480
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 3

    .line 2245
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->copyRootViewBounds(Landroid/view/View;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 714
    :cond_4
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 717
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    .line 718
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-static {v0, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    .line 492
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 662
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 689
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 564
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getStableInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 445
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getStableInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 405
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getStableInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getStableInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getStableInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 548
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 602
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getSystemWindowInsetBottom()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->left:I

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 229
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->right:I

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    return v0
.end method

.method public getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public getTappableElementInsets()Landroidx/core/graphics/Insets;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hasInsets()Z
    .registers 3

    .line 273
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 274
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->all()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 275
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v0, 0x0

    return v0

    :cond_2e
    :goto_2e
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 723
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->hashCode()I

    move-result v0

    return v0
.end method

.method public inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    .line 646
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public inset(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 621
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/core/view/WindowInsetsCompat;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public isConsumed()Z
    .registers 2

    .line 292
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .registers 2

    .line 308
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v0

    return v0
.end method

.method public isVisible(I)Z
    .registers 3

    .line 706
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isVisible(I)Z

    move-result p1

    return p1
.end method

.method public replaceSystemWindowInsets(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 345
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p1

    .line 346
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroidx/core/view/WindowInsetsCompat;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 364
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 365
    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1715
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 2241
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setRootViewData(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    .line 2237
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1811
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setStableInsets(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method setSystemUiVisibility(I)V
    .registers 3

    .line 2249
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->setSystemUiVisibility(I)V

    return-void
.end method

.method public toWindowInsets()Landroid/view/WindowInsets;
    .registers 3

    .line 733
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/core/view/WindowInsetsCompat$Impl20;

    iget-object v0, v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

###### Class androidx.core.view.WindowInsetsCompat.Api21ReflectionHolder (androidx.core.view.WindowInsetsCompat$Api21ReflectionHolder)
.class Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ReflectionHolder"
.end annotation


# static fields
.field private static sContentInsets:Ljava/lang/reflect/Field;

.field private static sReflectionSucceeded:Z

.field private static sStableInsets:Ljava/lang/reflect/Field;

.field private static sViewAttachInfoField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 2268
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 2269
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2270
    const-string v0, "android.view.View$AttachInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2271
    const-string v2, "mStableInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    .line 2272
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2273
    const-string v2, "mContentInsets"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    .line 2274
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2275
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    .line 2277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get visible insets from AttachInfo "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 2284
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sReflectionSucceeded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_69

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_69

    .line 2288
    :cond_c
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 2290
    :try_start_10
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sViewAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 2292
    sget-object v2, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sStableInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2293
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Api21ReflectionHolder;->sContentInsets:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v2, :cond_69

    if-eqz v0, :cond_69

    .line 2295
    new-instance v3, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v3}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 2296
    invoke-static {v2}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v2

    .line 2297
    invoke-static {v0}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v0

    .line 2298
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 2302
    invoke-virtual {v0, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 2303
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsCompat;->copyRootViewBounds(Landroid/view/View;)V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_4f} :catch_50

    return-object v0

    :catch_50
    move-exception p0

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get insets from AttachInfo. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowInsetsCompat"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    :goto_69
    return-object v1
.end method

###### Class androidx.core.view.WindowInsetsCompat.Builder (androidx.core.view.WindowInsetsCompat$Builder)
.class public final Landroidx/core/view/WindowInsetsCompat$Builder;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_11

    .line 1417
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1418
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1f

    .line 1419
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1420
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2d

    .line 1421
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1423
    :cond_2d
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 4

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_11

    .line 1436
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1437
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1f

    .line 1438
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1439
    :cond_1f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2d

    .line 1440
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void

    .line 1442
    :cond_2d
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    return-void
.end method


# virtual methods
.method public build()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1623
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3

    .line 1613
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V

    return-object p0
.end method

.method public setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 4

    .line 1539
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsets(ILandroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 4

    .line 1564
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1504
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1599
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setStableInsets(Landroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setSystemGestureInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1461
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setTappableElementInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1522
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    return-object p0
.end method

.method public setVisible(IZ)Landroidx/core/view/WindowInsetsCompat$Builder;
    .registers 4

    .line 1577
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Builder;->mImpl:Landroidx/core/view/WindowInsetsCompat$BuilderImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setVisible(IZ)V

    return-object p0
.end method

###### Class androidx.core.view.WindowInsetsCompat.BuilderImpl (androidx.core.view.WindowInsetsCompat$BuilderImpl)
.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final mInsets:Landroidx/core/view/WindowInsetsCompat;

.field mInsetsTypeMask:[Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1633
    new-instance v0, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 1636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1637
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method protected final applyInsetTypes()V
    .registers 6

    .line 1682
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-eqz v0, :cond_58

    const/4 v1, 0x1

    .line 1683
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aget-object v0, v0, v2

    .line 1684
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_1c

    .line 1689
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v2

    :cond_1c
    if-nez v0, :cond_24

    .line 1692
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 1695
    :cond_24
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)V

    .line 1697
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3a

    .line 1698
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setSystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1700
    :cond_3a
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_49

    .line 1701
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V

    .line 1703
    :cond_49
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_58

    .line 1704
    invoke-virtual {p0, v0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->setTappableElementInsets(Landroidx/core/graphics/Insets;)V

    :cond_58
    return-void
.end method

.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1709
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->applyInsetTypes()V

    .line 1710
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsets:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .registers 2

    return-void
.end method

.method setInsets(ILandroidx/core/graphics/Insets;)V
    .registers 6

    .line 1654
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    if-nez v0, :cond_a

    const/16 v0, 0xa

    .line 1655
    new-array v0, v0, [Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    :cond_a
    const/4 v0, 0x1

    :goto_b
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1f

    and-int v1, p1, v0

    if-nez v1, :cond_14

    goto :goto_1c

    .line 1661
    :cond_14
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1c
    shl-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .registers 3

    const/16 p2, 0x8

    if-eq p1, p2, :cond_5

    return-void

    .line 1669
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ignoring visibility inset not available for IME"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setVisible(IZ)V
    .registers 3

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.BuilderImpl20 (androidx.core.view.WindowInsetsCompat$BuilderImpl20)
.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z = false

.field private static sConsumedField:Ljava/lang/reflect/Field; = null

.field private static sConsumedFieldFetched:Z = false


# instance fields
.field private mPlatformInsets:Landroid/view/WindowInsets;

.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1729
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1730
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 1734
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1735
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .registers 7

    .line 1768
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    const/4 v1, 0x1

    const-string v2, "WindowInsetsCompat"

    if-nez v0, :cond_1a

    .line 1770
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    const-string v3, "CONSUMED"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    move-exception v0

    .line 1772
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1774
    :goto_18
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    .line 1776
    :cond_1a
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    .line 1778
    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    if-eqz v0, :cond_33

    .line 1780
    new-instance v4, Landroid/view/WindowInsets;

    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    return-object v4

    :catch_2d
    move-exception v0

    .line 1783
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1789
    :cond_33
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    if-nez v0, :cond_4f

    .line 1791
    :try_start_37
    const-class v0, Landroid/view/WindowInsets;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_37 .. :try_end_46} :catch_47

    goto :goto_4d

    :catch_47
    move-exception v0

    .line 1793
    const-string v4, "Could not retrieve WindowInsets(Rect) constructor"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1795
    :goto_4d
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    .line 1797
    :cond_4f
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_69

    .line 1799
    :try_start_53
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_53 .. :try_end_62} :catch_63

    return-object v0

    :catch_63
    move-exception v0

    .line 1801
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_69
    return-object v3
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 1753
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    .line 1754
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1756
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    .line 1757
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Landroidx/core/graphics/Insets;)V

    return-object v0
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 1748
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 6

    .line 1740
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_12

    .line 1741
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    :cond_12
    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.BuilderImpl29 (androidx.core.view.WindowInsetsCompat$BuilderImpl29)
.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl29"
.end annotation


# instance fields
.field final mPlatBuilder:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1819
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    .line 1820
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    .line 1824
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1825
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1827
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_14

    .line 1828
    :cond_f
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_14
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    .line 1863
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->applyInsetTypes()V

    .line 1864
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1865
    invoke-virtual {v0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1864
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 1866
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    return-object v0
.end method

.method setDisplayCutout(Landroidx/core/view/DisplayCutoutCompat;)V
    .registers 3

    .line 1858
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->unwrap()Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setMandatorySystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1843
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1853
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setSystemGestureInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1838
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1833
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setTappableElementInsets(Landroidx/core/graphics/Insets;)V
    .registers 3

    .line 1848
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.BuilderImpl30 (androidx.core.view.WindowInsetsCompat$BuilderImpl30)
.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl30"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1874
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 1878
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl29;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method setInsets(ILandroidx/core/graphics/Insets;)V
    .registers 4

    .line 1883
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1884
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    .line 1885
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    .line 1883
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .registers 4

    .line 1891
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1892
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    .line 1893
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    .line 1891
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setVisible(IZ)V
    .registers 4

    .line 1899
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setVisible(IZ)Landroid/view/WindowInsets$Builder;

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.BuilderImpl34 (androidx.core.view.WindowInsetsCompat$BuilderImpl34)
.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl34"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1906
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>()V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 1910
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl30;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method


# virtual methods
.method setInsets(ILandroidx/core/graphics/Insets;)V
    .registers 4

    .line 1915
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1916
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    .line 1917
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    .line 1915
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsets(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setInsetsIgnoringVisibility(ILandroidx/core/graphics/Insets;)V
    .registers 4

    .line 1923
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    .line 1924
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    .line 1925
    invoke-virtual {p2}, Landroidx/core/graphics/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object p2

    .line 1923
    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setInsetsIgnoringVisibility(ILandroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method setVisible(IZ)V
    .registers 4

    .line 1931
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl34;->mPlatBuilder:Landroid/view/WindowInsets$Builder;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowInsets$Builder;->setVisible(IZ)Landroid/view/WindowInsets$Builder;

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl (androidx.core.view.WindowInsetsCompat$Impl)
.class Landroidx/core/view/WindowInsetsCompat$Impl;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# static fields
.field static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;


# instance fields
.field final mHost:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 738
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>()V

    .line 739
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 741
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 742
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 771
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 763
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 759
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl;->mHost:Landroidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method copyRootViewBounds(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 820
    :cond_4
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 821
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl;

    .line 822
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 823
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v3

    if-ne v1, v3, :cond_4b

    .line 824
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 825
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 826
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    return v0

    :cond_4b
    return v2
.end method

.method getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method getInsets(I)Landroidx/core/graphics/Insets;
    .registers 2

    .line 802
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1
.end method

.method getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_7

    .line 809
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 807
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to query the maximum insets for IME"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 789
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getStableInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 779
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 784
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 775
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 794
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .line 832
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isRound()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->isConsumed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 833
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 832
    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 5

    .line 798
    sget-object p1, Landroidx/core/view/WindowInsetsCompat$Impl;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p1
.end method

.method isConsumed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isRound()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isVisible(I)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    return-void
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

.method setSystemUiVisibility(I)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl20 (androidx.core.view.WindowInsetsCompat$Impl20)
.class Landroidx/core/view/WindowInsetsCompat$Impl20;
.super Landroidx/core/view/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static final SYSTEM_BAR_VISIBILITY_MASK:I = 0x6

.field private static sAttachInfoClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field; = null

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method; = null

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field; = null

.field private static sVisibleRectReflectionFetched:Z = false


# instance fields
.field private mOverriddenInsets:[Landroidx/core/graphics/Insets;

.field final mPlatformInsets:Landroid/view/WindowInsets;

.field mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

.field private mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field mSystemUiVisibility:I

.field private mSystemWindowInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 883
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    const/4 p1, 0x0

    .line 875
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    .line 884
    iput-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V
    .registers 4

    .line 888
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private getInsets(IZ)Landroidx/core/graphics/Insets;
    .registers 6

    .line 922
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    const/4 v1, 0x1

    :goto_3
    const/16 v2, 0x200

    if-gt v1, v2, :cond_17

    and-int v2, p1, v1

    if-nez v2, :cond_c

    goto :goto_14

    .line 927
    :cond_c
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    :goto_14
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    return-object v0
.end method

.method private getRootStableInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 1086
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz v0, :cond_9

    .line 1087
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 1089
    :cond_9
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method private getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;
    .registers 6

    .line 1113
    const-string v0, "WindowInsetsCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_5f

    .line 1117
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    if-nez v1, :cond_f

    .line 1118
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    .line 1121
    :cond_f
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    if-eqz v3, :cond_5e

    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1d

    goto :goto_5e

    :cond_1d
    const/4 v3, 0x0

    .line 1128
    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_31

    .line 1130
    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 1136
    :cond_31
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1137
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_46

    .line 1138
    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    move-result-object p1
    :try_end_45
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1e .. :try_end_45} :catch_47

    return-object p1

    :cond_46
    return-object v2

    :catch_47
    move-exception p1

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1141
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    :goto_5e
    return-object v2

    .line 1114
    :cond_5f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static loadReflectionField()V
    .registers 4

    const/4 v0, 0x1

    .line 1158
    :try_start_1
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    .line 1159
    const-string v1, "android.view.View$AttachInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    .line 1160
    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    .line 1161
    const-string v1, "android.view.ViewRootImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1162
    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    .line 1163
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1164
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception v1

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :goto_50
    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    return-void
.end method

.method static systemBarVisibilityEquals(II)Z
    .registers 2

    and-int/lit8 p0, p0, 0x6

    and-int/lit8 p1, p1, 0x6

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method copyRootViewBounds(Landroid/view/View;)V
    .registers 2

    .line 1095
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1097
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 1099
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Landroidx/core/graphics/Insets;)V

    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    .line 1069
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1070
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootViewData(Landroidx/core/graphics/Insets;)V

    .line 1071
    iget v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setSystemUiVisibility(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1174
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1175
    :cond_8
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    .line 1176
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget-object v2, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    iget p1, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    .line 1177
    invoke-static {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->systemBarVisibilityEquals(II)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    const/4 v0, 0x0

    .line 898
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method protected getInsetsForType(IZ)Landroidx/core/graphics/Insets;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_e5

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_97

    const/16 p2, 0x8

    if-eq p1, p2, :cond_55

    const/16 p2, 0x10

    if-eq p1, p2, :cond_50

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4b

    const/16 p2, 0x40

    if-eq p1, p2, :cond_46

    const/16 p2, 0x80

    if-eq p1, p2, :cond_1f

    .line 1027
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 1016
    :cond_1f
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_28

    .line 1017
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p1

    goto :goto_2c

    .line 1018
    :cond_28
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object p1

    :goto_2c
    if-eqz p1, :cond_43

    .line 1020
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    move-result p2

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    move-result v0

    .line 1021
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    move-result p1

    .line 1020
    invoke-static {p2, v0, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 1023
    :cond_43
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 1012
    :cond_46
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 1008
    :cond_4b
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 1004
    :cond_50
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 980
    :cond_55
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    if-eqz p1, :cond_5f

    .line 981
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    move-result p2

    aget-object v0, p1, p2

    :cond_5f
    if-eqz v0, :cond_62

    return-object v0

    .line 985
    :cond_62
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 986
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 988
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget v2, p2, Landroidx/core/graphics/Insets;->bottom:I

    if-le v0, v2, :cond_77

    .line 991
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 992
    :cond_77
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    if-eqz p1, :cond_94

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    .line 993
    invoke-virtual {p1, v0}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_94

    .line 996
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    if-le p1, p2, :cond_94

    .line 997
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 1000
    :cond_94
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    :cond_97
    if-eqz p2, :cond_be

    .line 948
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 949
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 950
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v2, p2, Landroidx/core/graphics/Insets;->left:I

    .line 951
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    .line 953
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    .line 954
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 950
    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 956
    :cond_be
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_c6

    .line 957
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 959
    :cond_c6
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 960
    iget-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p2, :cond_d2

    .line 961
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 964
    :cond_d2
    iget p2, p1, Landroidx/core/graphics/Insets;->bottom:I

    if-eqz v0, :cond_dc

    .line 969
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 971
    :cond_dc
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v0, v1, p1, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    :cond_e5
    if-eqz p2, :cond_fc

    .line 937
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 938
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    .line 939
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroidx/core/graphics/Insets;->top:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 938
    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 940
    :cond_fc
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_105

    .line 941
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 943
    :cond_105
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    const/4 v0, 0x1

    .line 903
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method final getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 5

    .line 1048
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_22

    .line 1049
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1050
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1051
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1052
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1053
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1049
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    .line 1055
    :cond_22
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    .line 1061
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 1062
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 1063
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 1064
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method isRound()Z
    .registers 2

    .line 893
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method protected isTypeVisible(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v2, 0x2

    if-eq p1, v2, :cond_14

    const/4 v2, 0x4

    if-eq p1, v2, :cond_13

    const/16 v2, 0x8

    if-eq p1, v2, :cond_14

    const/16 v2, 0x80

    if-eq p1, v2, :cond_14

    return v1

    :cond_13
    return v0

    .line 1037
    :cond_14
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    move-result-object p1

    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {p1, v0}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method isVisible(I)Z
    .registers 5

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/16 v2, 0x200

    if-gt v1, v2, :cond_16

    and-int v2, p1, v1

    if-nez v2, :cond_b

    goto :goto_13

    .line 913
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method public setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 1151
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 1081
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    .line 1076
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method setSystemUiVisibility(I)V
    .registers 2

    .line 1104
    iput p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemUiVisibility:I

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl21 (androidx.core.view.WindowInsetsCompat$Impl21)
.class Landroidx/core/view/WindowInsetsCompat$Impl21;
.super Landroidx/core/view/WindowInsetsCompat$Impl20;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# instance fields
.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1190
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 1187
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V
    .registers 3

    .line 1194
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    const/4 p1, 0x0

    .line 1187
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    .line 1195
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method


# virtual methods
.method consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1205
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1210
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method final getStableInsets()Landroidx/core/graphics/Insets;
    .registers 5

    .line 1215
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_22

    .line 1216
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1217
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1218
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1219
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1220
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 1216
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    .line 1222
    :cond_22
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method isConsumed()Z
    .registers 2

    .line 1200
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    .line 1227
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl28 (androidx.core.view.WindowInsetsCompat$Impl28)
.class Landroidx/core/view/WindowInsetsCompat$Impl28;
.super Landroidx/core/view/WindowInsetsCompat$Impl21;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl28"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1235
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V
    .registers 3

    .line 1239
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V

    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 1249
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1255
    :cond_4
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1256
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    .line 1258
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    iget-object v3, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    iget-object v3, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    .line 1259
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mSystemUiVisibility:I

    iget p1, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;->mSystemUiVisibility:I

    .line 1260
    invoke-static {v1, p1}, Landroidx/core/view/WindowInsetsCompat$Impl28;->systemBarVisibilityEquals(II)Z

    move-result p1

    if-eqz p1, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    .line 1244
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat;->wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1266
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    move-result v0

    return v0
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl29 (androidx.core.view.WindowInsetsCompat$Impl29)
.class Landroidx/core/view/WindowInsetsCompat$Impl29;
.super Landroidx/core/view/WindowInsetsCompat$Impl28;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl29"
.end annotation


# instance fields
.field private mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

.field private mSystemGestureInsets:Landroidx/core/graphics/Insets;

.field private mTappableElementInsets:Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1278
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 1273
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1274
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1275
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Landroidx/core/graphics/Insets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl29;)V
    .registers 3

    .line 1282
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl28;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V

    const/4 p1, 0x0

    .line 1273
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1274
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1275
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Landroidx/core/graphics/Insets;

    return-void
.end method


# virtual methods
.method getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 1295
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1296
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1297
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1299
    :cond_10
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mMandatorySystemGestureInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method getSystemGestureInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 1287
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1288
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Landroidx/core/graphics/Insets;

    .line 1290
    :cond_10
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mSystemGestureInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method getTappableElementInsets()Landroidx/core/graphics/Insets;
    .registers 2

    .line 1304
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Landroidx/core/graphics/Insets;

    if-nez v0, :cond_10

    .line 1305
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Landroidx/core/graphics/Insets;

    .line 1307
    :cond_10
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mTappableElementInsets:Landroidx/core/graphics/Insets;

    return-object v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    .line 1312
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl29;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    return-void
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl30 (androidx.core.view.WindowInsetsCompat$Impl30)
.class Landroidx/core/view/WindowInsetsCompat$Impl30;
.super Landroidx/core/view/WindowInsetsCompat$Impl29;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl30"
.end annotation


# static fields
.field static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1334
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 1335
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl30;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1338
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl30;)V
    .registers 3

    .line 1342
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl29;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl29;)V

    return-void
.end method


# virtual methods
.method final copyRootViewBounds(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 1347
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1348
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1347
    invoke-static {p1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 1354
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1355
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1354
    invoke-static {p1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(I)Z
    .registers 3

    .line 1361
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl30;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl30;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.WindowInsetsCompat.Impl34 (androidx.core.view.WindowInsetsCompat$Impl34)
.class Landroidx/core/view/WindowInsetsCompat$Impl34;
.super Landroidx/core/view/WindowInsetsCompat$Impl30;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl34"
.end annotation


# static fields
.field static final CONSUMED:Landroidx/core/view/WindowInsetsCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1375
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    .line 1376
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    sput-object v0, Landroidx/core/view/WindowInsetsCompat$Impl34;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    .line 1379
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl34;)V
    .registers 3

    .line 1383
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl30;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl30;)V

    return-void
.end method


# virtual methods
.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 1388
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl34;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1389
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1388
    invoke-static {p1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    .line 1395
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl34;->mPlatformInsets:Landroid/view/WindowInsets;

    .line 1396
    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 1395
    invoke-static {p1}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(I)Z
    .registers 3

    .line 1402
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl34;->mPlatformInsets:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/WindowInsetsCompat$TypeImpl34;->toPlatformType(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p1

    return p1
.end method

###### Class androidx.core.view.WindowInsetsCompat.Side (androidx.core.view.WindowInsetsCompat$Side)
.class public final Landroidx/core/view/WindowInsetsCompat$Side;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Side$InsetsSide;
    }
.end annotation


# static fields
.field public static final BOTTOM:I = 0x8

.field public static final LEFT:I = 0x1

.field public static final RIGHT:I = 0x4

.field public static final TOP:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static all()I
    .registers 1

    const/16 v0, 0xf

    return v0
.end method

###### Class androidx.core.view.WindowInsetsCompat.Side.InsetsSide (androidx.core.view.WindowInsetsCompat$Side$InsetsSide)
.class public interface abstract annotation Landroidx/core/view/WindowInsetsCompat$Side$InsetsSide;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat$Side;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InsetsSide"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.view.WindowInsetsCompat.Type (androidx.core.view.WindowInsetsCompat$Type)
.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x200

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0xa

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final SYSTEM_OVERLAYS:I = 0x200

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .registers 1

    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .registers 1

    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_49

    const/4 v1, 0x2

    if-eq p0, v1, :cond_48

    const/4 v0, 0x4

    if-eq p0, v0, :cond_47

    const/16 v1, 0x8

    if-eq p0, v1, :cond_45

    const/16 v2, 0x10

    if-eq p0, v2, :cond_44

    const/16 v0, 0x20

    if-eq p0, v0, :cond_42

    const/16 v0, 0x40

    if-eq p0, v0, :cond_40

    const/16 v0, 0x80

    if-eq p0, v0, :cond_3e

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3d

    const/16 v0, 0x200

    if-ne p0, v0, :cond_28

    const/16 p0, 0x9

    return p0

    .line 2103
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    return v1

    :cond_3e
    const/4 p0, 0x7

    return p0

    :cond_40
    const/4 p0, 0x6

    return p0

    :cond_42
    const/4 p0, 0x5

    return p0

    :cond_44
    return v0

    :cond_45
    const/4 p0, 0x3

    return p0

    :cond_47
    return v1

    :cond_48
    return v0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method public static mandatorySystemGestures()I
    .registers 1

    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .registers 1

    const/16 v0, 0x207

    return v0
.end method

.method public static systemGestures()I
    .registers 1

    const/16 v0, 0x10

    return v0
.end method

.method public static systemOverlays()I
    .registers 1

    const/16 v0, 0x200

    return v0
.end method

.method public static tappableElement()I
    .registers 1

    const/16 v0, 0x40

    return v0
.end method

###### Class androidx.core.view.WindowInsetsCompat.Type.InsetsType (androidx.core.view.WindowInsetsCompat$Type$InsetsType)
.class public interface abstract annotation Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InsetsType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class androidx.core.view.WindowInsetsCompat.TypeImpl30 (androidx.core.view.WindowInsetsCompat$TypeImpl30)
.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_3
    const/16 v3, 0x200

    if-gt v2, v3, :cond_53

    and-int v3, p0, v2

    if-eqz v3, :cond_50

    if-eq v2, v1, :cond_4b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_46

    const/4 v3, 0x4

    if-eq v2, v3, :cond_41

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3c

    const/16 v3, 0x10

    if-eq v2, v3, :cond_37

    const/16 v3, 0x20

    if-eq v2, v3, :cond_32

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x80

    if-eq v2, v3, :cond_28

    goto :goto_50

    .line 2179
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    goto :goto_4f

    .line 2176
    :cond_2d
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    goto :goto_4f

    .line 2173
    :cond_32
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    goto :goto_4f

    .line 2170
    :cond_37
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    goto :goto_4f

    .line 2167
    :cond_3c
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    goto :goto_4f

    .line 2164
    :cond_41
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    goto :goto_4f

    .line 2161
    :cond_46
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_4f

    .line 2158
    :cond_4b
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    :goto_4f
    or-int/2addr v0, v3

    :cond_50
    :goto_50
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_53
    return v0
.end method

###### Class androidx.core.view.WindowInsetsCompat.TypeImpl34 (androidx.core.view.WindowInsetsCompat$TypeImpl34)
.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl34;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl34"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlatformType(I)I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    :goto_3
    const/16 v3, 0x200

    if-gt v2, v3, :cond_5a

    and-int v4, p0, v2

    if-eqz v4, :cond_57

    if-eq v2, v1, :cond_52

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_48

    const/16 v4, 0x8

    if-eq v2, v4, :cond_43

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3e

    const/16 v4, 0x20

    if-eq v2, v4, :cond_39

    const/16 v4, 0x40

    if-eq v2, v4, :cond_34

    const/16 v4, 0x80

    if-eq v2, v4, :cond_2f

    if-eq v2, v3, :cond_2a

    goto :goto_57

    .line 2227
    :cond_2a
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemOverlays()I

    move-result v3

    goto :goto_56

    .line 2224
    :cond_2f
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v3

    goto :goto_56

    .line 2221
    :cond_34
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v3

    goto :goto_56

    .line 2218
    :cond_39
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    goto :goto_56

    .line 2215
    :cond_3e
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    goto :goto_56

    .line 2212
    :cond_43
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    goto :goto_56

    .line 2209
    :cond_48
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v3

    goto :goto_56

    .line 2206
    :cond_4d
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    goto :goto_56

    .line 2203
    :cond_52
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v3

    :goto_56
    or-int/2addr v0, v3

    :cond_57
    :goto_57
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5a
    return v0
.end method
