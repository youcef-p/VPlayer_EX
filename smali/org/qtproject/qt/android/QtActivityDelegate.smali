###### Class org.qtproject.qt.android.QtActivityDelegate (org.qtproject.qt.android.QtActivityDelegate)
.class Lorg/qtproject/qt/android/QtActivityDelegate;
.super Lorg/qtproject/qt/android/QtActivityDelegateBase;
.source "QtActivityDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtWindowInterface;
.implements Lorg/qtproject/qt/android/QtAccessibilityInterface;
.implements Lorg/qtproject/qt/android/QtMenuInterface;
.implements Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtActivityDelegate"


# instance fields
.field private m_backendsRegistered:Z

.field private m_dummyView:Landroid/view/View;

.field private m_layout:Lorg/qtproject/qt/android/QtRootLayout;

.field private final m_nativeViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m_splashScreen:Landroid/widget/ImageView;

.field private m_splashScreenSticky:Z


# direct methods
.method public static synthetic $r8$lambda$4V3_gpMFhc1dtxWKYSvdOzUJaas(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    return-void
.end method

.method public static synthetic $r8$lambda$rQiWVDjUeLbisHto8ROBKjQLo2c(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->closeContextMenu()V

    return-void
.end method

.method public static synthetic $r8$lambda$yIfVBhhxEuq5hi9RSOy-bkjMjQ4(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegateBase;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    .line 38
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 40
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backendsRegistered:Z

    .line 42
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtRootLayout;
    .registers 1

    .line 31
    iget-object p0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    return-object p0
.end method

.method private setActivityBackgroundDrawable()V
    .registers 5

    .line 429
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 430
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010054

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 433
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_26

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_26

    .line 435
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_38

    .line 437
    :cond_26
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 438
    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 441
    :goto_38
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addTopLevelWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 364
    :cond_7
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public bringChildToBack(I)V
    .registers 3

    .line 418
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_c

    .line 419
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public bringChildToFront(I)V
    .registers 3

    .line 405
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_c

    .line 406
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method public closeContextMenu()V
    .registers 3

    .line 300
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected hideSplashScreen(I)V
    .registers 3

    .line 196
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method initMembers()V
    .registers 3

    .line 53
    invoke-super {p0}, Lorg/qtproject/qt/android/QtActivityDelegateBase;->initMembers()V

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActionBarVisibility(Z)V

    .line 55
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setActivityBackgroundDrawable()V

    .line 56
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeAccessibility;->accessibilitySupported()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 57
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->initLayoutAccessibility(Lorg/qtproject/qt/android/QtLayout;)V

    :cond_17
    return-void
.end method

.method insertNativeView(ILandroid/view/View;IIII)V
    .registers 16

    .line 448
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-nez v0, :cond_5

    return-void

    .line 451
    :cond_5
    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIILandroid/view/View;II)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$addTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 4

    .line 365
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-nez v0, :cond_5

    goto :goto_38

    .line 368
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 369
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 370
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 375
    :cond_19
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;I)V

    .line 376
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-boolean p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    if-nez p1, :cond_38

    .line 378
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen()V

    :cond_38
    :goto_38
    return-void
.end method

.method synthetic lambda$bringChildToBack$0$org-qtproject-qt-android-QtActivityDelegate(I)V
    .registers 4

    .line 420
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    if-eqz p1, :cond_16

    .line 421
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->moveChild(Landroid/view/View;I)V

    :cond_16
    return-void
.end method

.method synthetic lambda$bringChildToFront$0$org-qtproject-qt-android-QtActivityDelegate(I)V
    .registers 4

    .line 407
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    if-eqz p1, :cond_1d

    .line 408
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_1d

    .line 409
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/qtproject/qt/android/QtRootLayout;->moveChild(Landroid/view/View;I)V

    :cond_1d
    return-void
.end method

.method synthetic lambda$hideSplashScreen$0$org-qtproject-qt-android-QtActivityDelegate(I)V
    .registers 5

    .line 197
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    return-void

    .line 200
    :cond_5
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v1, :cond_12

    if-gtz p1, :cond_12

    .line 201
    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    return-void

    .line 206
    :cond_12
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 207
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    int-to-long v1, p1

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 210
    new-instance p1, Lorg/qtproject/qt/android/QtActivityDelegate$2;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method synthetic lambda$insertNativeView$0$org-qtproject-qt-android-QtActivityDelegate(IIILandroid/view/View;II)V
    .registers 10

    .line 452
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 453
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 454
    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    .line 457
    :cond_c
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 458
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    :cond_29
    if-ltz p2, :cond_37

    if-gez p3, :cond_2e

    goto :goto_37

    .line 464
    :cond_2e
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p2, p3, p5, p6}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_40

    .line 461
    :cond_37
    :goto_37
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p4, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    :goto_40
    invoke-virtual {p4, p1}, Landroid/view/View;->setId(I)V

    .line 468
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {p2, p4}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;)V

    .line 469
    iget-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic lambda$openContextMenu$0$org-qtproject-qt-android-QtActivityDelegate(IIII)V
    .registers 8

    .line 312
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    const-string v1, "QtActivityDelegate"

    if-nez v0, :cond_c

    .line 313
    const-string p1, "Unable to open context menu on null layout"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_c
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->getCurrentQtEditText()Lorg/qtproject/qt/android/QtEditText;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 318
    const-string p1, "No focused view when trying to open context menu"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_1a
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lorg/qtproject/qt/android/QtRootLayout;->setLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Z)V

    .line 322
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->requestLayout()V

    .line 323
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/qtproject/qt/android/QtActivityDelegate$3;

    invoke-direct {p2, p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate$3;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Lorg/qtproject/qt/android/QtEditText;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method synthetic lambda$removeTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate(I)V
    .registers 4

    .line 387
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 388
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtWindow;

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtWindow;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 390
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_topLevelWindows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 393
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_dummyView:Landroid/view/View;

    return-void

    .line 394
    :cond_27
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-eqz v0, :cond_2e

    .line 395
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtRootLayout;->removeView(Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method synthetic lambda$setNativeViewGeometry$0$org-qtproject-qt-android-QtActivityDelegate(IIIII)V
    .registers 8

    .line 478
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 479
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_nativeViews:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_22

    .line 481
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_22
    return-void

    .line 483
    :cond_23
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "View "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " not found!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QtActivityDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic lambda$setUpLayout$0$org-qtproject-qt-android-QtActivityDelegate()Z
    .registers 7

    .line 135
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 138
    :cond_a
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 139
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 140
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 141
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-gez v2, :cond_3c

    .line 144
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return v1

    :cond_3c
    const/4 v4, 0x2

    .line 147
    new-array v4, v4, [I

    .line 148
    iget-object v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v5, v4}, Lorg/qtproject/qt/android/QtRootLayout;->getLocationOnScreen([I)V

    .line 149
    aget v3, v4, v3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    aget v4, v4, v1

    sub-int/2addr v5, v4

    .line 150
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 149
    invoke-static {v3, v5, v0, v2}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardGeometryChanged(IIII)V

    return v1
.end method

.method public notifyAnnouncementEvent(ILjava/lang/String;)V
    .registers 4

    .line 273
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyAnnouncementEvent(ILjava/lang/String;)V

    return-void
.end method

.method public notifyDescriptionOrNameChanged(ILjava/lang/String;)V
    .registers 4

    .line 261
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyDescriptionOrNameChanged(ILjava/lang/String;)V

    return-void
.end method

.method public notifyLocationChange(I)V
    .registers 3

    .line 232
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyLocationChange(I)V

    return-void
.end method

.method public notifyObjectFocus(I)V
    .registers 3

    .line 250
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyObjectFocus(I)V

    return-void
.end method

.method public notifyObjectHide(II)V
    .registers 4

    .line 238
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyObjectHide(II)V

    return-void
.end method

.method public notifyObjectShow(I)V
    .registers 3

    .line 244
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyObjectShow(I)V

    return-void
.end method

.method public notifyScrolledEvent(I)V
    .registers 3

    .line 267
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyScrolledEvent(I)V

    return-void
.end method

.method public notifyTextChanged(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 14

    .line 280
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyTextChanged(ILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public notifyValueChanged(ILjava/lang/String;)V
    .registers 4

    .line 256
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_accessibilityDelegate:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public final onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 2

    .line 90
    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p1, :cond_8

    .line 91
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->registerBackends()V

    return-void

    .line 93
    :cond_8
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->unregisterBackends()V

    return-void
.end method

.method onCreatePopupMenu(Landroid/view/Menu;)V
    .registers 2

    .line 342
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNative;->fillContextMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    .line 343
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate;->setContextMenuVisible(Z)V

    return-void
.end method

.method public openContextMenu(IIII)V
    .registers 12

    .line 306
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-nez v0, :cond_c

    .line 307
    const-string p1, "QtActivityDelegate"

    const-string p2, "Unable to open context menu with a null layout"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 311
    :cond_c
    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Lorg/qtproject/qt/android/QtRootLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public openOptionsMenu()V
    .registers 3

    .line 294
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method registerBackends()V
    .registers 3

    .line 62
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backendsRegistered:Z

    if-nez v0, :cond_24

    invoke-static {}, Lorg/qtproject/qt/android/BackendRegister;->isNull()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    :cond_b
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backendsRegistered:Z

    .line 66
    const-class v0, Lorg/qtproject/qt/android/QtWindowInterface;

    invoke-static {v0, p0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 67
    const-class v0, Lorg/qtproject/qt/android/QtAccessibilityInterface;

    invoke-static {v0, p0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 68
    const-class v0, Lorg/qtproject/qt/android/QtMenuInterface;

    invoke-static {v0, p0}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 69
    const-class v0, Lorg/qtproject/qt/android/QtInputInterface;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_inputDelegate:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/BackendRegister;->registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public removeTopLevelWindow(I)V
    .registers 3

    .line 386
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetOptionsMenu()V
    .registers 3

    .line 288
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;-><init>(Landroid/app/Activity;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method setActionBarVisibility(Z)V
    .registers 3

    .line 349
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 351
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_22

    if-nez p1, :cond_18

    goto :goto_22

    .line 354
    :cond_18
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    return-void

    .line 352
    :cond_22
    :goto_22
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    return-void
.end method

.method setNativeViewGeometry(IIIII)V
    .registers 13

    .line 477
    new-instance v0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setUpLayout()V
    .registers 4

    .line 121
    new-instance v0, Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtRootLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    .line 123
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 124
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->setUpSplashScreen(I)V

    .line 125
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 126
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityDelegate;->handleUiModeChange()V

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_displayManager:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->initDisplayProperties()V

    .line 134
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method protected setUpSplashScreen(I)V
    .registers 7

    .line 158
    const-string v0, "android.app.splash_screen_sticky"

    .line 0
    const-string v1, "android.app.splash_screen_drawable_"

    .line 158
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-nez v2, :cond_10

    .line 159
    const-string p1, "QtActivityDelegate"

    const-string v0, "Unable to setup splash screen with a null layout"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_10
    :try_start_10
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 165
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    .line 164
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_28

    .line 169
    const-string p1, "landscape"

    goto :goto_2a

    :cond_28
    const-string p1, "portrait"

    :goto_2a
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 171
    const-string p1, "android.app.splash_screen_drawable"

    .line 173
    :cond_38
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 174
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 175
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 176
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x1

    goto :goto_53

    :cond_52
    const/4 v0, 0x0

    :goto_53
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreenSticky:Z

    .line 178
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 179
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    .line 180
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    .line 181
    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 180
    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_splashScreen:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtRootLayout;->addView(Landroid/view/View;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_90} :catch_91

    :cond_90
    return-void

    :catch_91
    move-exception p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 99
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_layout:Lorg/qtproject/qt/android/QtRootLayout;

    if-nez v0, :cond_c

    .line 100
    const-string p1, "QtActivityDelegate"

    const-string p2, "Unable to start native application with a null layout"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_c
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt/android/QtActivityDelegate$1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method unregisterBackends()V
    .registers 2

    .line 74
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backendsRegistered:Z

    if-nez v0, :cond_5

    goto :goto_e

    :cond_5
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_backendsRegistered:Z

    .line 79
    invoke-static {}, Lorg/qtproject/qt/android/BackendRegister;->isNull()Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    .line 82
    :cond_f
    const-class v0, Lorg/qtproject/qt/android/QtWindowInterface;

    invoke-static {v0}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 83
    const-class v0, Lorg/qtproject/qt/android/QtAccessibilityInterface;

    invoke-static {v0}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 84
    const-class v0, Lorg/qtproject/qt/android/QtMenuInterface;

    invoke-static {v0}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    .line 85
    const-class v0, Lorg/qtproject/qt/android/QtInputInterface;

    invoke-static {v0}, Lorg/qtproject/qt/android/BackendRegister;->unregisterBackend(Ljava/lang/Class;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate.AnonymousClass1 (org.qtproject.qt.android.QtActivityDelegate$1)
.class Lorg/qtproject/qt/android/QtActivityDelegate$1;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->startNativeApplicationImpl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field final synthetic val$appParams:Ljava/lang/String;

.field final synthetic val$mainLib:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$appParams:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$mainLib:Ljava/lang/String;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 3

    .line 108
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtRootLayout;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 109
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$appParams:Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->val$mainLib:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->startApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->access$000(Lorg/qtproject/qt/android/QtActivityDelegate;)Lorg/qtproject/qt/android/QtRootLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtRootLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1c
    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate.AnonymousClass2 (org.qtproject.qt.android.QtActivityDelegate$2)
.class Lorg/qtproject/qt/android/QtActivityDelegate$2;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 213
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$2;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->hideSplashScreen(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate.AnonymousClass3 (org.qtproject.qt.android.QtActivityDelegate$3)
.class Lorg/qtproject/qt/android/QtActivityDelegate$3;
.super Ljava/lang/Object;
.source "QtActivityDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtActivityDelegate;->openContextMenu(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field final synthetic val$focusedEditText:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method public static synthetic $r8$lambda$VLZFtNr1-LvlSu7bRV2iGL11UIA(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;Lorg/qtproject/qt/android/QtEditText;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 324
    iput-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->val$focusedEditText:Lorg/qtproject/qt/android/QtEditText;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGlobalLayout$0$org-qtproject-qt-android-QtActivityDelegate$3(Landroid/widget/PopupMenu;)V
    .registers 3

    .line 332
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v0, v0, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 4

    .line 327
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->val$focusedEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 328
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v1, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->val$focusedEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 329
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtActivityDelegate;->onCreatePopupMenu(Landroid/view/Menu;)V

    .line 330
    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3;->this$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v1, v1, Lorg/qtproject/qt/android/QtActivityDelegate;->m_activity:Landroid/app/Activity;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 331
    new-instance v1, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtActivityDelegate$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 333
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$3;->$r8$lambda$VLZFtNr1-LvlSu7bRV2iGL11UIA(Landroid/app/Activity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtActivityDelegate$3$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate$3;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate$3;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate$3;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/widget/PopupMenu;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$3$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate$3;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtActivityDelegate$3;->lambda$onGlobalLayout$0$org-qtproject-qt-android-QtActivityDelegate$3(Landroid/widget/PopupMenu;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIIII)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda0;->f$5:I

    invoke-virtual/range {v0 .. v5}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$setNativeViewGeometry$0$org-qtproject-qt-android-QtActivityDelegate(IIIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/view/View;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIILandroid/view/View;II)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iput p6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$3:I

    iget-object v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$4:Landroid/view/View;

    iget v5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda1;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$insertNativeView$0$org-qtproject-qt-android-QtActivityDelegate(IIILandroid/view/View;II)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda10 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda10)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;Lorg/qtproject/qt/android/QtWindow;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;->f$1:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda10;->f$1:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$addTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate(Lorg/qtproject/qt/android/QtWindow;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda11 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda11)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda11;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$removeTopLevelWindow$0$org-qtproject-qt-android-QtActivityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$setUpLayout$0$org-qtproject-qt-android-QtActivityDelegate()Z

    move-result v0

    return v0
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$bringChildToFront$0$org-qtproject-qt-android-QtActivityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda4 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda4;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$openContextMenu$0$org-qtproject-qt-android-QtActivityDelegate(IIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda5 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$bringChildToBack$0$org-qtproject-qt-android-QtActivityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda6 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtActivityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtActivityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda6;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtActivityDelegate;->lambda$hideSplashScreen$0$org-qtproject-qt-android-QtActivityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda7 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda7;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->$r8$lambda$rQiWVDjUeLbisHto8ROBKjQLo2c(Landroid/app/Activity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda8 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda8)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda8;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->$r8$lambda$yIfVBhhxEuq5hi9RSOy-bkjMjQ4(Landroid/app/Activity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda9 (org.qtproject.qt.android.QtActivityDelegate$$ExternalSyntheticLambda9)
.class public final synthetic Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityDelegate$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtActivityDelegate;->$r8$lambda$4V3_gpMFhc1dtxWKYSvdOzUJaas(Landroid/app/Activity;)V

    return-void
.end method
