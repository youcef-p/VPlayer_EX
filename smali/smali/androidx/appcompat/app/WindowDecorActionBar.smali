###### Class androidx.appcompat.app.WindowDecorActionBar (androidx.appcompat.app.WindowDecorActionBar)
.class public Landroidx/appcompat/app/WindowDecorActionBar;
.super Landroidx/appcompat/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;,
        Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

.field private mActivity:Landroid/app/Activity;

.field mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Landroidx/appcompat/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 4

    .line 167
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 133
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 150
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 158
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 168
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    .line 169
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 170
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 171
    invoke-direct {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    if-nez p2, :cond_49

    const p2, 0x1020002

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    :cond_49
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 3

    .line 177
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 133
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 150
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 158
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 178
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 185
    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 120
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    .line 127
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 133
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$1;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 150
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$2;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    .line 158
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$3;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    .line 186
    invoke-direct {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    return v0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return p0
.end method

.method private cleanupTabs()V
    .registers 2

    .line 424
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 425
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 427
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 428
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_14

    .line 429
    invoke-virtual {v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_14
    const/4 v0, -0x1

    .line 431
    iput v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .registers 4

    .line 538
    check-cast p1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    .line 539
    invoke-virtual {p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 545
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 546
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 548
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_16
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_26

    .line 550
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    goto :goto_16

    :cond_26
    return-void

    .line 542
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Action Bar Tab must have a Callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureTabsExist()V
    .registers 5

    .line 283
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_5

    return-void

    .line 287
    :cond_5
    new-instance v0, Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 289
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    .line 290
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_36

    .line 293
    :cond_1a
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2c

    .line 294
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_31

    .line 296
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_31

    :cond_2c
    const/16 v1, 0x8

    .line 299
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 301
    :cond_31
    :goto_31
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 303
    :goto_36
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    return-void
.end method

.method private getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;
    .registers 5

    .line 232
    instance-of v0, p1, Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_7

    .line 233
    check-cast p1, Landroidx/appcompat/widget/DecorToolbar;

    return-object p1

    .line 234
    :cond_7
    instance-of v0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_12

    .line 235
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/DecorToolbar;

    move-result-object p1

    return-object p1

    .line 237
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_26

    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_26
    const-string p1, "null"

    :goto_28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .registers 3

    .line 706
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 707
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 708
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    .line 709
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 711
    :cond_e
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_11
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 7

    .line 190
    sget v0, Landroidx/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_f

    .line 192
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    .line 194
    :cond_f
    sget v0, Landroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Landroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 195
    sget v0, Landroidx/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    .line 197
    sget v0, Landroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    .line 200
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_94

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v1, :cond_94

    if-eqz p1, :cond_94

    .line 205
    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    .line 208
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    move p1, v0

    goto :goto_4e

    :cond_4d
    move p1, v1

    :goto_4e
    if-eqz p1, :cond_52

    .line 211
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 214
    :cond_52
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_63

    if-eqz p1, :cond_61

    goto :goto_63

    :cond_61
    move p1, v1

    goto :goto_64

    :cond_63
    :goto_63
    move p1, v0

    :goto_64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    .line 216
    invoke-virtual {v2}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    .line 218
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 221
    sget v2, Landroidx/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 222
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    .line 224
    :cond_84
    sget v0, Landroidx/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_90

    int-to-float v0, v0

    .line 226
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setElevation(F)V

    .line 228
    :cond_90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 201
    :cond_94
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 6

    .line 258
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v0, 0x0

    if-nez p1, :cond_12

    .line 261
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 262
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    goto :goto_1e

    .line 264
    :cond_12
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 265
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/DecorToolbar;->setEmbeddedTabView(Landroidx/appcompat/widget/ScrollingTabContainerView;)V

    .line 267
    :goto_1e
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_29

    move p1, v1

    goto :goto_2a

    :cond_29
    move p1, v2

    .line 268
    :goto_2a
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_40

    if-eqz p1, :cond_3b

    .line 270
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_40

    .line 272
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_40

    :cond_3b
    const/16 v3, 0x8

    .line 275
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 278
    :cond_40
    :goto_40
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    iget-boolean v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_4a

    if-eqz p1, :cond_4a

    move v3, v1

    goto :goto_4b

    :cond_4a
    move v3, v2

    :goto_4b
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 279
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_57

    if-eqz p1, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private shouldAnimateContextView()Z
    .registers 2

    .line 910
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .registers 3

    .line 680
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 681
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    .line 682
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_e

    .line 683
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_e
    const/4 v0, 0x0

    .line 685
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_12
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 5

    .line 765
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 769
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v0, :cond_21

    const/4 v0, 0x1

    .line 770
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 771
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->doShow(Z)V

    return-void

    .line 774
    :cond_17
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 775
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    .line 776
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->doHide(Z)V

    :cond_21
    return-void
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    .line 336
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 3

    .line 556
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;I)V
    .registers 4

    .line 561
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V
    .registers 5

    .line 576
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 577
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;IZ)V

    .line 578
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/WindowDecorActionBar;->configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_10

    .line 580
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_10
    return-void
.end method

.method public addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V
    .registers 4

    .line 566
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 567
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->addTab(Landroidx/appcompat/app/ActionBar$Tab;Z)V

    .line 568
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->configureTab(Landroidx/appcompat/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_16

    .line 570
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_16
    return-void
.end method

.method public animateToMode(Z)V
    .registers 10

    if-eqz p1, :cond_6

    .line 870
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->showForActionMode()V

    goto :goto_9

    .line 872
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->hideForActionMode()V

    .line 875
    :goto_9
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3e

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    if-eqz p1, :cond_26

    .line 882
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1, v4, v5}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 884
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    goto :goto_32

    .line 887
    :cond_26
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3, v6, v7}, Landroidx/appcompat/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 889
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 892
    :goto_32
    new-instance v1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 893
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->playSequentially(Landroidx/core/view/ViewPropertyAnimatorCompat;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 894
    invoke-virtual {v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void

    :cond_3e
    if-eqz p1, :cond_4b

    .line 897
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 898
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    .line 900
    :cond_4b
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/DecorToolbar;->setVisibility(I)V

    .line 901
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public collapseActionView()Z
    .registers 2

    .line 969
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 970
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .registers 3

    .line 307
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz v0, :cond_e

    .line 308
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    .line 310
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    :cond_e
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 5

    .line 346
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v0, :cond_5

    goto :goto_1e

    .line 349
    :cond_5
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    .line 351
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    .line 353
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    :goto_1e
    return-void
.end method

.method public doHide(Z)V
    .registers 6

    .line 831
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_7

    .line 832
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 835
    :cond_7
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_75

    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_11

    if-eqz p1, :cond_75

    .line 836
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 837
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 838
    new-instance v0, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 839
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_3b

    const/4 p1, 0x0

    .line 841
    filled-new-array {p1, p1}, [I

    move-result-object p1

    .line 842
    iget-object v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 843
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 845
    :cond_3b
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 846
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 847
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 848
    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz p1, :cond_60

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_60

    .line 849
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 851
    :cond_60
    sget-object p1, Landroidx/appcompat/app/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v1, 0xfa

    .line 852
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 853
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 854
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 855
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void

    .line 857
    :cond_75
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    return-void
.end method

.method public doShow(Z)V
    .registers 6

    .line 782
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_7

    .line 783
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    .line 785
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 787
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v2, 0x0

    if-nez v0, :cond_7e

    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_18

    if-eqz p1, :cond_7e

    .line 789
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 790
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_35

    .line 792
    filled-new-array {v1, v1}, [I

    move-result-object p1

    .line 793
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v1, 0x1

    .line 794
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 796
    :cond_35
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 797
    new-instance p1, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;-><init>()V

    .line 798
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 799
    iget-object v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mUpdateListener:Landroidx/core/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroidx/core/view/ViewPropertyAnimatorUpdateListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 800
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 801
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v1, :cond_69

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_69

    .line 802
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 803
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->play(Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 805
    :cond_69
    sget-object v0, Landroidx/appcompat/app/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    const-wide/16 v0, 0xfa

    .line 806
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 814
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 815
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 816
    invoke-virtual {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_9b

    .line 818
    :cond_7e
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 819
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 820
    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz p1, :cond_95

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_95

    .line 821
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 823
    :cond_95
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowListener:Landroidx/core/view/ViewPropertyAnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 825
    :goto_9b
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_a2

    .line 826
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_a2
    return-void
.end method

.method public enableContentAnimations(Z)V
    .registers 2

    .line 668
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 493
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    .line 513
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 663
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .registers 2

    .line 740
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 3

    .line 1304
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v0, 0x0

    return v0

    .line 1306
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 1308
    :cond_15
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .registers 2

    .line 508
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 4

    .line 1292
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_e

    return v2

    .line 1294
    :cond_e
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    return v0

    :cond_17
    return v2

    .line 1296
    :cond_18
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 658
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 503
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1351
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    return-object p1
.end method

.method public getTabCount()I
    .registers 2

    .line 1316
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 5

    .line 915
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_27

    .line 916
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 917
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 918
    sget v2, Landroidx/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 919
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_23

    .line 922
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_27

    .line 924
    :cond_23
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    .line 927
    :cond_27
    :goto_27
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 498
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .registers 2

    .line 1366
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .registers 2

    .line 1380
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    .line 699
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    const/4 v0, 0x0

    .line 701
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public hideForSystem()V
    .registers 2

    .line 717
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 718
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    .line 719
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    .line 735
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 3

    .line 863
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    .line 865
    iget-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_12

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getHideOffset()I

    move-result v1

    if-ge v1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public isTitleTruncated()Z
    .registers 2

    .line 932
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public newTab()Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 586
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 254
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroidx/appcompat/view/ActionBarPolicy;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public onContentScrollStarted()V
    .registers 2

    .line 957
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_a

    .line 958
    invoke-virtual {v0}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    :cond_a
    return-void
.end method

.method public onContentScrollStopped()V
    .registers 1

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .registers 7

    .line 1392
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1395
    :cond_6
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p2, :cond_13

    .line 1398
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    .line 1397
    :goto_14
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 1399
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1400
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_29
    return v1
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    .line 316
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurWindowVisibility:I

    return-void
.end method

.method public removeAllTabs()V
    .registers 1

    .line 420
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroidx/appcompat/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    .line 341
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 2

    .line 591
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .registers 6

    .line 596
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-nez v0, :cond_5

    goto :goto_58

    .line 601
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_e

    .line 602
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    goto :goto_10

    :cond_e
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 603
    :goto_10
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 604
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_23

    const/4 v2, -0x1

    .line 606
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    .line 609
    :cond_23
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_2a
    if-ge v2, v1, :cond_3a

    .line 611
    iget-object v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3a
    if-ne v0, p1, :cond_58

    .line 615
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 p1, 0x0

    goto :goto_55

    :cond_46
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    :goto_55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public requestFocus()Z
    .registers 3

    .line 446
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 447
    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_13

    .line 448
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V
    .registers 5

    .line 621
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_11

    if-eqz p1, :cond_e

    .line 622
    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_e
    iput v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    return-void

    .line 627
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 629
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->disallowAddToBackStack()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    .line 635
    :goto_35
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-ne v1, p1, :cond_4e

    if-eqz v1, :cond_75

    .line 637
    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabReselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 638
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ScrollingTabContainerView;->animateToTab(I)V

    goto :goto_75

    .line 641
    :cond_4e
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getPosition()I

    move-result v2

    :cond_56
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 642
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_66

    .line 643
    invoke-virtual {v1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabUnselected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    .line 645
    :cond_66
    check-cast p1, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    if-eqz p1, :cond_75

    .line 647
    invoke-virtual {p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->getCallback()Landroidx/appcompat/app/ActionBar$TabListener;

    move-result-object p1

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSelectedTab:Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;

    invoke-interface {p1, v1, v0}, Landroidx/appcompat/app/ActionBar$TabListener;->onTabSelected(Landroidx/appcompat/app/ActionBar$Tab;Landroidx/fragment/app/FragmentTransaction;)V

    :cond_75
    :goto_75
    if-eqz v0, :cond_80

    .line 651
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_80

    .line 652
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_80
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 478
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .registers 5

    .line 359
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    .line 360
    invoke-interface {v1}, Landroidx/appcompat/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1276
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V
    .registers 3

    .line 1281
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1282
    iget-object p2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p2, p1}, Landroidx/appcompat/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3

    .line 1385
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_7

    .line 1386
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 3

    const/4 v0, 0x4

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 375
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 464
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 5

    .line 469
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 471
    iput-boolean v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    .line 473
    :cond_d
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {v1, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 3

    const/16 v0, 0x10

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 385
    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 3

    const/4 v0, 0x2

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 370
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 3

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 380
    :goto_7
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setElevation(F)V
    .registers 3

    .line 244
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHideOffset(I)V
    .registers 3

    if-eqz p1, :cond_13

    .line 745
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 746
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 749
    :cond_13
    :goto_13
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 3

    if-eqz p1, :cond_13

    .line 725
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 726
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 729
    :cond_13
    :goto_13
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    .line 730
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .registers 3

    .line 952
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 947
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    .line 942
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 937
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    .line 390
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    .line 1357
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1362
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .registers 5

    .line 1287
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    new-instance v1, Landroidx/appcompat/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Landroidx/appcompat/app/NavItemSelectedListener;-><init>(Landroidx/appcompat/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    .line 1371
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1376
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 7

    .line 1321
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    goto :goto_1b

    .line 1324
    :cond_a
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v2, 0x0

    .line 1325
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    .line 1326
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    :goto_1b
    if-eq v0, p1, :cond_28

    .line 1329
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_28

    .line 1330
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_28

    .line 1331
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 1334
    :cond_28
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setNavigationMode(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_31

    goto :goto_43

    .line 1337
    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/app/WindowDecorActionBar;->ensureTabsExist()V

    .line 1338
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1339
    iget v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_43

    .line 1340
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    .line 1341
    iput v3, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mSavedTabPosition:I

    .line 1345
    :cond_43
    :goto_43
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4e

    iget-boolean v4, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4e

    move v4, v3

    goto :goto_4f

    :cond_4e
    move v4, v0

    :goto_4f
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/DecorToolbar;->setCollapsible(Z)V

    .line 1346
    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5b

    iget-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez p1, :cond_5b

    move v0, v3

    :cond_5b
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4

    .line 405
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Landroidx/appcompat/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 407
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void

    .line 413
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_20
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 2

    .line 328
    iput-boolean p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_b

    .line 329
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    if-eqz p1, :cond_b

    .line 330
    invoke-virtual {p1}, Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_b
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 483
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 400
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 456
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 395
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 436
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 2

    .line 673
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 674
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    .line 675
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public showForSystem()V
    .registers 2

    .line 691
    iget-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 692
    iput-boolean v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v0, 0x1

    .line 693
    invoke-direct {p0, v0}, Landroidx/appcompat/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public startActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;
    .registers 4

    .line 518
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eqz v0, :cond_7

    .line 519
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->finish()V

    .line 522
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 523
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->killMode()V

    .line 524
    new-instance v0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;-><init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V

    .line 525
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 528
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    .line 529
    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 530
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->initForMode(Landroidx/appcompat/view/ActionMode;)V

    const/4 p1, 0x1

    .line 531
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    return-object v0

    :cond_32
    const/4 p1, 0x0

    return-object p1
.end method

###### Class androidx.appcompat.app.WindowDecorActionBar.AnonymousClass1 (androidx.appcompat.app.WindowDecorActionBar$1)
.class Landroidx/appcompat/app/WindowDecorActionBar$1;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 136
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_1b

    .line 137
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 138
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 140
    :cond_1b
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 142
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 143
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {p1}, Landroidx/appcompat/app/WindowDecorActionBar;->completeDeferredDestroyActionMode()V

    .line 144
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_43

    .line 145
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$1;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_43
    return-void
.end method

###### Class androidx.appcompat.app.WindowDecorActionBar.AnonymousClass2 (androidx.appcompat.app.WindowDecorActionBar$2)
.class Landroidx/appcompat/app/WindowDecorActionBar$2;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 153
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mCurrentShowAnim:Landroidx/appcompat/view/ViewPropertyAnimatorCompatSet;

    .line 154
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$2;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method

###### Class androidx.appcompat.app.WindowDecorActionBar.AnonymousClass3 (androidx.appcompat.app.WindowDecorActionBar$3)
.class Landroidx/appcompat/app/WindowDecorActionBar$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$3;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/view/View;)V
    .registers 2

    .line 162
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$3;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContainerView:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 163
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

###### Class androidx.appcompat.app.WindowDecorActionBar.ActionModeImpl (androidx.appcompat.app.WindowDecorActionBar$ActionModeImpl)
.class public Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;
.super Landroidx/appcompat/view/ActionMode;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionModeImpl"
.end annotation


# instance fields
.field private final mActionModeContext:Landroid/content/Context;

.field private mCallback:Landroidx/appcompat/view/ActionMode$Callback;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;Landroid/content/Context;Landroidx/appcompat/view/ActionMode$Callback;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 986
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/appcompat/view/ActionMode;-><init>()V

    .line 987
    iput-object p2, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    .line 988
    iput-object p3, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 989
    new-instance p1, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 990
    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 991
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->setCallback(Landroidx/appcompat/view/menu/MenuBuilder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .registers 3

    .line 1051
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1053
    :try_start_5
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 1055
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1056
    throw v0
.end method

.method public finish()V
    .registers 4

    .line 1006
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_7

    return-void

    .line 1015
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1018
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iput-object p0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroidx/appcompat/view/ActionMode;

    .line 1019
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iput-object v1, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroidx/appcompat/view/ActionMode$Callback;

    goto :goto_26

    .line 1021
    :cond_21
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/ActionMode$Callback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    :goto_26
    const/4 v0, 0x0

    .line 1023
    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    .line 1024
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/WindowDecorActionBar;->animateToMode(Z)V

    .line 1027
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->closeMode()V

    .line 1028
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v1, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mOverlayLayout:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-boolean v2, v2, Landroidx/appcompat/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1030
    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iput-object v0, v1, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1108
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 1001
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 996
    new-instance v0, Landroidx/appcompat/view/SupportMenuInflater;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mActionModeContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1092
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1087
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .registers 3

    .line 1035
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mActionMode:Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;

    if-eq v0, p0, :cond_7

    return-void

    .line 1042
    :cond_7
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1044
    :try_start_c
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/ActionMode$Callback;->onPrepareActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_19

    .line 1046
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void

    :catchall_19
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1047
    throw v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .line 1103
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onCloseSubMenu(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1113
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-eqz p1, :cond_9

    .line 1114
    invoke-interface {p1, p0, p2}, Landroidx/appcompat/view/ActionMode$Callback;->onActionItemClicked(Landroidx/appcompat/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    .line 1141
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez p1, :cond_5

    return-void

    .line 1144
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    .line 1145
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .registers 5

    .line 1124
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCallback:Landroidx/appcompat/view/ActionMode$Callback;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 1128
    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    return v1

    .line 1132
    :cond_e
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v2, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v2}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 1061
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1062
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 1082
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1067
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 1077
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1072
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3

    .line 1097
    invoke-super {p0, p1}, Landroidx/appcompat/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 1098
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$ActionModeImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContextView:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

###### Class androidx.appcompat.app.WindowDecorActionBar.TabImpl (androidx.appcompat.app.WindowDecorActionBar$TabImpl)
.class public Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;
.super Landroidx/appcompat/app/ActionBar$Tab;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/WindowDecorActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroidx/appcompat/app/WindowDecorActionBar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/WindowDecorActionBar;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1152
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroidx/appcompat/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 1158
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/appcompat/app/ActionBar$TabListener;
    .registers 2

    .line 1173
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 1270
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 1184
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1204
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1209
    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .line 1163
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1218
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .registers 2

    .line 1251
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/WindowDecorActionBar;->selectTab(Landroidx/appcompat/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1256
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1261
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1262
    iget p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_f

    .line 1263
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_f
    return-object p0
.end method

.method public setCustomView(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 4

    .line 1198
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0}, Landroidx/appcompat/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 1199
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 1198
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1189
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCustomView:Landroid/view/View;

    .line 1190
    iget p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_f

    .line 1191
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_f
    return-object p0
.end method

.method public setIcon(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1232
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1223
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1224
    iget p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_f

    .line 1225
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_f
    return-object p0
.end method

.method public setPosition(I)V
    .registers 2

    .line 1213
    iput p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    return-void
.end method

.method public setTabListener(Landroidx/appcompat/app/ActionBar$TabListener;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 1178
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mCallback:Landroidx/appcompat/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 2

    .line 1168
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1246
    iget-object v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object v0, v0, Landroidx/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;
    .registers 3

    .line 1237
    iput-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1238
    iget p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    if-ltz p1, :cond_f

    .line 1239
    iget-object p1, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->this$0:Landroidx/appcompat/app/WindowDecorActionBar;

    iget-object p1, p1, Landroidx/appcompat/app/WindowDecorActionBar;->mTabScrollView:Landroidx/appcompat/widget/ScrollingTabContainerView;

    iget v0, p0, Landroidx/appcompat/app/WindowDecorActionBar$TabImpl;->mPosition:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ScrollingTabContainerView;->updateTab(I)V

    :cond_f
    return-object p0
.end method
