###### Class org.qtproject.qt.android.QtAccessibilityDelegate (org.qtproject.qt.android.QtAccessibilityDelegate)
.class Lorg/qtproject/qt/android/QtAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;,
        Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;
    }
.end annotation


# static fields
.field static final INVALID_ID:I = 0x14d

.field private static final TAG:Ljava/lang/String; = "Qt A11Y"


# instance fields
.field private m_focusedVirtualViewId:I

.field private final m_globalOffset:[I

.field private m_hoveredVirtualViewId:I

.field private m_layout:Lorg/qtproject/qt/android/QtLayout;

.field private m_manager:Landroid/view/accessibility/AccessibilityManager;

.field private final m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private m_oldOffsetX:I

.field private m_oldOffsetY:I

.field private m_view:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    const/16 v0, 0x14d

    .line 41
    iput v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 43
    iput v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 50
    iput v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 568
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;
    .registers 1

    .line 27
    iget-object p0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    return-object p0
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;
    .registers 1

    .line 27
    iget-object p0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 27
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)I
    .registers 1

    .line 27
    iget p0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p0
.end method

.method static synthetic access$702(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)I
    .registers 2

    .line 27
    iput p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    return p1
.end method

.method private dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 152
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_31

    .line 156
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->hitTest(FF)I

    move-result v0

    const/16 v1, 0x14d

    if-ne v0, v1, :cond_1c

    const/4 v0, -0x1

    .line 161
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_2c

    const/16 v1, 0x9

    if-eq p1, v1, :cond_2c

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2c

    goto :goto_2f

    .line 165
    :cond_2c
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->setHoveredVirtualViewId(I)V

    :goto_2f
    const/4 p1, 0x1

    return p1

    :cond_31
    :goto_31
    const/4 p1, 0x0

    return p1
.end method

.method private dumpNodes(I)V
    .registers 9

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A11Y hierarchy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->parentId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qt A11Y"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "    desc: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " NODE: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v0

    .line 446
    array-length v2, v0

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v2, :cond_86

    aget v4, v0, v3

    .line 447
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has child: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->dumpNodes(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_86
    return-void
.end method

.method private getBoundsInParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V
    .registers 3

    .line 677
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 8

    .line 413
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 414
    :goto_e
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    const/4 v3, 0x0

    const-string v4, "Qt A11Y"

    if-eqz v2, :cond_71

    if-eqz v0, :cond_71

    const/16 v0, 0x14d

    if-ne p1, v0, :cond_1c

    goto :goto_71

    .line 419
    :cond_1c
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_70

    .line 422
    :cond_27
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 424
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 425
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 427
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->descriptionForAccessibleObject(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->addLocaleSpan(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 430
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 431
    const-string v0, "AccessibilityEvent with empty description"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_5d
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2, v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object p2

    :cond_70
    :goto_70
    return-object v3

    .line 415
    :cond_71
    :goto_71
    const-string p1, "getEventForVirtualViewId for invalid view"

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private getNodeForView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 454
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-eqz v0, :cond_ac

    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    if-nez v1, :cond_a

    goto/16 :goto_ac

    .line 459
    :cond_a
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 461
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 464
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_globalOffset:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 465
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    .line 466
    aget v2, v2, v5

    .line 469
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 470
    invoke-direct {p0, v1, v5}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getBoundsInParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V

    .line 471
    invoke-direct {p0, v0, v5}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->setBoundsInParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V

    .line 473
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 474
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 475
    invoke-virtual {v5, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 476
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 479
    iget-object v5, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 480
    instance-of v6, v5, Landroid/view/View;

    if-eqz v6, :cond_50

    .line 481
    check-cast v5, Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 484
    :cond_50
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 485
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 486
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_7f

    const/4 v1, -0x1

    .line 492
    invoke-static {v1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object v1

    .line 493
    array-length v5, v1

    :goto_73
    if-ge v3, v5, :cond_7f

    aget v6, v1, v3

    .line 494
    iget-object v7, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v7, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 500
    :cond_7f
    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetX:I

    if-ne v1, v4, :cond_87

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetY:I

    if-eq v1, v2, :cond_ab

    .line 501
    :cond_87
    iput v4, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetX:I

    .line 502
    iput v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_oldOffsetY:I

    .line 503
    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    const/16 v2, 0x14d

    if-eq v1, v2, :cond_ab

    .line 504
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x80

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 507
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    iget v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    :cond_ab
    return-object v0

    .line 455
    :cond_ac
    :goto_ac
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    .line 518
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    if-nez v0, :cond_a

    goto/16 :goto_c4

    .line 521
    :cond_a
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v1

    if-gez v1, :cond_c3

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtNativeAccessibility;->populateNode(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto/16 :goto_c3

    .line 530
    :cond_2b
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 531
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->addLocaleSpan(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AccessibilityNodeInfo with empty contentDescription: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qt A11Y"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_67
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->parentId(I)I

    move-result v1

    .line 537
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    .line 539
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 540
    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_globalOffset:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    .line 541
    aget v3, v3, v6

    .line 542
    invoke-virtual {v2, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 543
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 545
    invoke-static {v1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->screenRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 546
    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 547
    invoke-direct {p0, v0, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->setBoundsInParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V

    .line 550
    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v1, p1, :cond_9f

    .line 551
    invoke-virtual {v0, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 552
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_a7

    .line 554
    :cond_9f
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 555
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 558
    :goto_a7
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->childIdListForAccessibleObject(I)[I

    move-result-object p1

    .line 559
    array-length v1, p1

    move v2, v4

    :goto_ad
    if-ge v2, v1, :cond_b9

    aget v3, p1, v2

    .line 560
    iget-object v5, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 561
    :cond_b9
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 562
    array-length p1, p1

    invoke-direct {p0, v0, p1, v6, v4}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V

    :cond_c3
    :goto_c3
    return-object v0

    .line 519
    :cond_c4
    :goto_c4
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    .line 650
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 651
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    return-object v0

    .line 653
    :cond_c
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private obtainAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    .line 659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 660
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    return-object v0

    .line 662
    :cond_c
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method private obtainAccessibilityNodeInfo(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 4

    .line 668
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_c

    .line 669
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    return-object v0

    .line 671
    :cond_c
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method private setBoundsInParent(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Rect;)V
    .registers 3

    .line 682
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IIZ)V
    .registers 7

    .line 688
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_f

    .line 689
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-direct {v0, p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZ)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void

    .line 691
    :cond_f
    invoke-static {p2, p3, p4}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method private setHoveredVirtualViewId(I)V
    .registers 4

    .line 401
    iget v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 406
    :cond_5
    iput p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_hoveredVirtualViewId:I

    const/16 v1, 0x80

    .line 407
    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    const/16 p1, 0x100

    .line 408
    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    return-void
.end method


# virtual methods
.method addLocaleSpan(ILjava/lang/String;)Landroid/text/SpannableString;
    .registers 6

    .line 174
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    new-instance p2, Landroid/text/style/LocaleSpan;

    .line 176
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->languageTag(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/style/LocaleSpan;-><init>(Ljava/util/Locale;)V

    .line 177
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .line 145
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_nodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p1
.end method

.method initLayoutAccessibility(Lorg/qtproject/qt/android/QtLayout;)V
    .registers 4

    if-nez p1, :cond_a

    .line 69
    const-string p1, "Qt A11Y"

    const-string v0, "Unable to initialize the accessibility delegate with a null layout"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_a
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_layout:Lorg/qtproject/qt/android/QtLayout;

    .line 75
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_3d

    .line 77
    new-instance p1, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;)V

    .line 78
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 79
    const-string v0, "Qt A11y"

    const-string v1, "Could not register a11y state change listener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_31
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->onAccessibilityStateChanged(Z)V

    :cond_3d
    return-void
.end method

.method invalidateVirtualViewId(I)V
    .registers 3

    const/16 v0, 0x800

    .line 389
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 396
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method synthetic lambda$notifyAnnouncementEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;)V
    .registers 5

    .line 290
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x14d

    .line 293
    const-string v1, "Qt A11Y"

    if-ne p1, v0, :cond_11

    .line 294
    const-string p1, "notifyAnnouncementEvent() for invalid view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 298
    :cond_11
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 299
    const-string p1, "notifyAnnouncementEvent for disabled AccessibilityManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    const/16 v0, 0x4000

    .line 304
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 307
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method synthetic lambda$notifyLocationChange$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V
    .registers 3

    .line 190
    iget v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v0, p1, :cond_7

    .line 191
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    :cond_7
    return-void
.end method

.method synthetic lambda$notifyObjectFocus$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V
    .registers 3

    .line 226
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 228
    :cond_5
    iput p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    .line 230
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    return-void
.end method

.method synthetic lambda$notifyObjectHide$0$org-qtproject-qt-android-QtAccessibilityDelegate(II)V
    .registers 5

    .line 202
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-eqz v0, :cond_14

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne v1, p1, :cond_14

    const/16 v1, 0x14d

    .line 203
    iput v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    .line 205
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    .line 210
    :cond_14
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    return-void
.end method

.method synthetic lambda$notifyObjectShow$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V
    .registers 2

    .line 219
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->invalidateVirtualViewId(I)V

    return-void
.end method

.method synthetic lambda$notifyScrolledEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V
    .registers 3

    .line 0
    const/16 v0, 0x1000

    .line 183
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    return-void
.end method

.method synthetic lambda$notifyTextChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 11

    .line 316
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_8a

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_8a

    .line 322
    :cond_10
    iget v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    const/16 v1, 0x14d

    if-eq v0, v1, :cond_17

    move p1, v0

    :cond_17
    if-ne p1, v1, :cond_21

    .line 324
    const-string p1, "Qt A11Y"

    const-string p2, "notifyTextChanged() with no focused view"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_21
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    .line 338
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 339
    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 340
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 342
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v2, p4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 345
    invoke-virtual {v2, p5}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 346
    invoke-virtual {v2, p6}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 347
    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    add-int/2addr p4, p5

    const/16 p3, 0x2000

    .line 353
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p3

    .line 354
    iget-object p5, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p3, p5, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 355
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 359
    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    if-eqz p2, :cond_80

    .line 360
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    goto :goto_81

    :cond_80
    const/4 p1, 0x0

    :goto_81
    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 361
    invoke-virtual {p3, p4}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 362
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method synthetic lambda$notifyValueChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;)V
    .registers 8

    .line 241
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-nez v0, :cond_6

    goto/16 :goto_aa

    :cond_6
    const/16 v0, 0x14d

    .line 246
    const-string v1, "Qt A11Y"

    if-eq p1, v0, :cond_ab

    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_ab

    .line 251
    :cond_16
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_26

    .line 253
    const-string p1, "Could not announce value because ViewGroup was null."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 257
    :cond_26
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getNodeForVirtualViewId(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 259
    const-string v3, "android.widget.ProgressBar"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/16 v3, 0x800

    goto :goto_3d

    :cond_3b
    const/16 v3, 0x4000

    .line 262
    :goto_3d
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->obtainAccessibilityEvent(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    const/4 v4, 0x1

    .line 264
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 265
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->addLocaleSpan(ILjava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7a

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "No value to announce for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 273
    :cond_7a
    iget-object p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 274
    iget-object p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v3, p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 276
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, p1, v3}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-nez p1, :cond_aa

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to send value change announcement for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityEvent;->getClassName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    :goto_aa
    return-void

    .line 247
    :cond_ab
    :goto_ab
    const-string p1, "notifyValueChanged() for invalid view"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method notifyAnnouncementEvent(ILjava/lang/String;)V
    .registers 4

    .line 289
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyDescriptionOrNameChanged(ILjava/lang/String;)V
    .registers 4

    .line 283
    iget v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-ne p1, v0, :cond_7

    .line 284
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyValueChanged(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method notifyLocationChange(I)V
    .registers 3

    .line 189
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyObjectFocus(I)V
    .registers 3

    .line 225
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyObjectHide(II)V
    .registers 4

    .line 197
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;II)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyObjectShow(I)V
    .registers 3

    .line 216
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyScrolledEvent(I)V
    .registers 3

    .line 183
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyTextChanged(ILjava/lang/String;Ljava/lang/String;III)V
    .registers 15

    .line 315
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;Ljava/lang/String;III)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method notifyValueChanged(ILjava/lang/String;)V
    .registers 4

    .line 237
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_manager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_5

    return-void

    .line 240
    :cond_5
    new-instance v0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected performActionForVirtualViewId(II)Z
    .registers 5

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2d

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1c

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_17

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_12

    goto :goto_2b

    .line 642
    :cond_12
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->scrollBackward(I)Z

    move-result p1

    return p1

    .line 639
    :cond_17
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->scrollForward(I)Z

    move-result p1

    return p1

    .line 630
    :cond_1c
    iget p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_focusedVirtualViewId:I

    if-eq p2, p1, :cond_2b

    .line 631
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->focusAction(I)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 633
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->notifyObjectFocus(I)V

    return v1

    :cond_2a
    return p2

    :cond_2b
    :goto_2b
    const/4 p1, 0x0

    return p1

    .line 625
    :cond_2d
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->clickAction(I)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 627
    invoke-virtual {p0, p1, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    :cond_36
    return p2
.end method

.method sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 374
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_7

    goto :goto_1c

    .line 377
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_17

    .line 379
    const-string p1, "Qt A11Y"

    const-string v0, "Could not send AccessibilityEvent because group was null. This should really not happen."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 384
    :cond_17
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->m_view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method sendEventForVirtualViewId(II)V
    .registers 3

    .line 368
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->getEventForVirtualViewId(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 369
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate.AnonymousClass1 (org.qtproject.qt.android.QtAccessibilityDelegate$1)
.class Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "QtAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    .line 573
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_10

    goto :goto_17

    .line 576
    :cond_10
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$600(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 574
    :cond_17
    :goto_17
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$500(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .registers 6

    .line 582
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 583
    const-string p1, "Qt A11Y"

    const-string p2, "Unable to perform action with a null view"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    const/16 v0, 0x80

    if-eq p2, v0, :cond_23

    const/4 v0, -0x1

    if-ne p1, v0, :cond_43

    .line 606
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 591
    :cond_23
    iget-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$700(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)I

    move-result p3

    if-ne p3, p1, :cond_32

    .line 592
    iget-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    const/16 v0, 0x14d

    invoke-static {p3, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$702(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)I

    .line 598
    :cond_32
    iget-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {p3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    .line 599
    iget-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    const/high16 v0, 0x10000

    invoke-virtual {p3, p1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->sendEventForVirtualViewId(II)V

    const/4 v1, 0x1

    .line 609
    :cond_43
    iget-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {p3, p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->performActionForVirtualViewId(II)Z

    move-result p1

    or-int/2addr p1, v1

    return p1
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate.AccessibilityManagerListener (org.qtproject.qt.android.QtAccessibilityDelegate$AccessibilityManagerListener)
.class Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;)V
    .registers 3

    .line 85
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .registers 8

    .line 91
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_21

    .line 94
    :cond_9
    const-string v0, "QT_ANDROID_DISABLE_ACCESSIBILITY"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 95
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    if-nez p1, :cond_45

    .line 99
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 100
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtLayout;->removeView(Landroid/view/View;)V

    .line 101
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$302(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    .line 103
    :cond_41
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->setActive(Z)V

    return-void

    .line 108
    :cond_45
    :try_start_45
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_60

    .line 110
    new-instance v1, Landroid/view/View;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v3

    invoke-virtual {v3}, Lorg/qtproject/qt/android/QtLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 121
    :cond_60
    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 124
    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_85

    .line 126
    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v3

    iget-object v4, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v4}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$200(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Lorg/qtproject/qt/android/QtLayout;

    move-result-object v4

    invoke-virtual {v4}, Lorg/qtproject/qt/android/QtLayout;->getChildCount()I

    move-result v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1, v4, v5}, Lorg/qtproject/qt/android/QtLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_85
    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v2, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$302(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Landroid/view/View;)Landroid/view/View;

    .line 132
    iget-object v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$300(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$AccessibilityManagerListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-direct {v2, v3, v0}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_9a} :catch_9b

    goto :goto_b0

    :catch_9b
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qt A11y"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_b0
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeAccessibility;->setActive(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate.HoverEventListener (org.qtproject.qt.android.QtAccessibilityDelegate$HoverEventListener)
.class Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;
.super Ljava/lang/Object;
.source "QtAccessibilityDelegate.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Lorg/qtproject/qt/android/QtAccessibilityDelegate$1;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;-><init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 57
    iget-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$HoverEventListener;->this$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->access$000(Lorg/qtproject/qt/android/QtAccessibilityDelegate;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyValueChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyObjectShow$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyAnnouncementEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda3;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyScrolledEvent$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda4 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;ILjava/lang/String;Ljava/lang/String;III)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iput-object p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iput p5, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$1:I

    iget-object v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$3:Ljava/lang/String;

    iget v4, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda4;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyTextChanged$0$org-qtproject-qt-android-QtAccessibilityDelegate(ILjava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda5 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda5;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyObjectFocus$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda6 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;II)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda6;->f$2:I

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyObjectHide$0$org-qtproject-qt-android-QtAccessibilityDelegate(II)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda7 (org.qtproject.qt.android.QtAccessibilityDelegate$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAccessibilityDelegate;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtAccessibilityDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtAccessibilityDelegate$$ExternalSyntheticLambda7;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtAccessibilityDelegate;->lambda$notifyLocationChange$0$org-qtproject-qt-android-QtAccessibilityDelegate(I)V

    return-void
.end method
