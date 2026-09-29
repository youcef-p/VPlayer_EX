###### Class androidx.core.view.ViewGroupCompat (androidx.core.view.ViewGroupCompat)
.class public final Landroidx/core/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ViewGroupCompat$Api21Impl;
    }
.end annotation


# static fields
.field private static final CONSUMED:Landroid/view/WindowInsets;

.field public static final LAYOUT_MODE_CLIP_BOUNDS:I = 0x0

.field public static final LAYOUT_MODE_OPTICAL_BOUNDS:I = 0x1

.field static sCompatInsetsDispatchInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    sput-object v0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Landroidx/core/view/ViewGroupCompat;->sCompatInsetsDispatchInstalled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 7

    .line 231
    sget v0, Landroidx/core/R$id;->tag_on_apply_window_listener:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 232
    sget v1, Landroidx/core/R$id;->tag_window_insets_animation_callback:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    instance-of v2, v0, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v2, :cond_13

    .line 235
    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    goto :goto_1c

    .line 236
    :cond_13
    instance-of v0, v1, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v0, :cond_1b

    .line 237
    move-object v0, v1

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const/4 v1, 0x1

    .line 243
    new-array v1, v1, [Landroid/view/WindowInsets;

    .line 244
    new-instance v2, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;-><init>([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 252
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 255
    sget p1, Landroidx/core/R$id;->tag_compat_insets_dispatch:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 257
    instance-of v2, p1, Landroid/view/View$OnApplyWindowInsetsListener;

    if-eqz v2, :cond_37

    .line 258
    move-object v0, p1

    check-cast v0, Landroid/view/View$OnApplyWindowInsetsListener;

    .line 256
    :cond_37
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p1, 0x0

    .line 261
    aget-object v0, v1, p1

    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    if-nez v0, :cond_5e

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5e

    .line 262
    check-cast p0, Landroid/view/ViewGroup;

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, p1

    :goto_50
    if-ge v2, v0, :cond_5e

    .line 265
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aget-object v4, v1, p1

    invoke-static {v3, v4}, Landroidx/core/view/ViewGroupCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 268
    :cond_5e
    aget-object p0, v1, p1

    return-object p0
.end method

.method public static getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 1
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.getLayoutMode()"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutMode()I

    move-result p0

    return p0
.end method

.method public static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 1

    .line 194
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->getNestedScrollAxes(Landroid/view/ViewGroup;)I

    move-result p0

    return p0
.end method

.method public static installCompatInsetsDispatch(Landroid/view/View;)V
    .registers 3

    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    return-void

    .line 218
    :cond_7
    new-instance v0, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda1;-><init>()V

    .line 225
    sget v1, Landroidx/core/R$id;->tag_compat_insets_dispatch:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 226
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 p0, 0x1

    .line 227
    sput-boolean p0, Landroidx/core/view/ViewGroupCompat;->sCompatInsetsDispatchInstalled:Z

    return-void
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 1

    .line 170
    invoke-static {p0}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->isTransitionGroup(Landroid/view/ViewGroup;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dispatchApplyWindowInsets$1([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    if-eqz p1, :cond_7

    .line 246
    invoke-interface {p1, p2, p3}, Landroid/view/View$OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    goto :goto_b

    .line 247
    :cond_7
    invoke-virtual {p2, p3}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    :goto_b
    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 250
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method static synthetic lambda$installCompatInsetsDispatch$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 2

    .line 219
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 223
    sget-object p0, Landroidx/core/view/ViewGroupCompat;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method public static onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.onRequestSendAccessibilityEvent(child, event)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public static setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.setLayoutMode(mode)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutMode(I)V

    return-void
.end method

.method public static setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
    .registers 2
    .annotation runtime Landroidx/annotation/ReplaceWith;
        expression = "group.setMotionEventSplittingEnabled(split)"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 2

    .line 157
    invoke-static {p0, p1}, Landroidx/core/view/ViewGroupCompat$Api21Impl;->setTransitionGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

###### Class androidx.core.view.ViewGroupCompat.Api21Impl (androidx.core.view.ViewGroupCompat$Api21Impl)
.class Landroidx/core/view/ViewGroupCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 1

    .line 286
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 1

    .line 282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0
.end method

.method static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    return-void
.end method

###### Class androidx.core.view.ViewGroupCompat$$ExternalSyntheticLambda0 (androidx.core.view.ViewGroupCompat$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:[Landroid/view/WindowInsets;

.field public final synthetic f$1:Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method public synthetic constructor <init>([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;->f$0:[Landroid/view/WindowInsets;

    iput-object p2, p0, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;->f$1:Landroid/view/View$OnApplyWindowInsetsListener;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    .line 0
    iget-object v0, p0, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;->f$0:[Landroid/view/WindowInsets;

    iget-object v1, p0, Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda0;->f$1:Landroid/view/View$OnApplyWindowInsetsListener;

    invoke-static {v0, v1, p1, p2}, Landroidx/core/view/ViewGroupCompat;->lambda$dispatchApplyWindowInsets$1([Landroid/view/WindowInsets;Landroid/view/View$OnApplyWindowInsetsListener;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.core.view.ViewGroupCompat$$ExternalSyntheticLambda1 (androidx.core.view.ViewGroupCompat$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/view/ViewGroupCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Landroidx/core/view/ViewGroupCompat;->lambda$installCompatInsetsDispatch$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
