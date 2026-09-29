###### Class org.qtproject.qt.android.QtInputDelegate (org.qtproject.qt.android.QtInputDelegate)
.class Lorg/qtproject/qt/android/QtInputDelegate;
.super Ljava/lang/Object;
.source "QtInputDelegate.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;
.implements Lorg/qtproject/qt/android/QtInputInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;
    }
.end annotation


# static fields
.field private static final KEYBOARD_TO_SCREEN_RATIO:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "QtInputDelegate"

.field private static m_oldX:I

.field private static m_oldY:I

.field private static m_tabletEventSupported:Ljava/lang/Boolean;


# instance fields
.field private m_backKeyPressedSent:Z

.field private m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

.field private m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_isKeyboardHidingAnimationOngoing:Z

.field private m_keyboardIsVisible:Z

.field private m_keyboardTransitionInProgress:Z

.field private final m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

.field private m_landscapeKeyboardHeight:I

.field private m_lastChar:I

.field private m_metaState:J

.field private m_portraitKeyboardHeight:I

.field private m_probeKeyboardHeightDelayMs:I

.field private m_showHideTimeStamp:J

.field private m_softInputMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardTransitionInProgress:Z

    .line 60
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    .line 61
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 62
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    .line 63
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    .line 64
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    const/16 v1, 0x32

    .line 65
    iput v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    .line 67
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    .line 75
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    .line 76
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    .line 89
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtInputDelegate;ZJ)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility_internal(ZJ)V

    return-void
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtInputDelegate;Z)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardTransitionInProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/QtInputDelegate;)I
    .registers 1

    .line 32
    iget p0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    return p0
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V
    .registers 8

    .line 32
    invoke-direct/range {p0 .. p7}, Lorg/qtproject/qt/android/QtInputDelegate;->probeForKeyboardHeight(Landroid/app/Activity;IIIIII)V

    return-void
.end method

.method static native dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method static native dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method private static getAction(ILandroid/view/MotionEvent;)I
    .registers 9

    .line 592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    .line 594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-lez v0, :cond_2f

    .line 596
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 597
    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    :goto_17
    if-ge v1, v0, :cond_2e

    .line 599
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_2d

    .line 600
    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v6

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2d
    :goto_2d
    return v2

    :cond_2e
    return v3

    :cond_2f
    return v2

    :cond_30
    if-eqz v0, :cond_4b

    const/4 v4, 0x5

    if-ne v0, v4, :cond_3c

    .line 608
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-ne p0, v4, :cond_3c

    goto :goto_4b

    :cond_3c
    if-eq v0, v2, :cond_49

    const/4 v1, 0x6

    if-ne v0, v1, :cond_48

    .line 611
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    if-ne p0, p1, :cond_48

    goto :goto_49

    :cond_48
    return v3

    :cond_49
    :goto_49
    const/4 p0, 0x3

    return p0

    :cond_4b
    :goto_4b
    return v1
.end method

.method static native handleLocationChanged(III)V
.end method

.method static native isTabletEventSupported()Z
.end method

.method static native keyDown(IIIZ)V
.end method

.method static native keyUp(IIIZ)V
.end method

.method static native keyboardGeometryChanged(IIII)V
.end method

.method static native keyboardVisibilityChanged(Z)V
.end method

.method private keyboardVisibilityUpdated(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 382
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 383
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardVisibilityChanged(Z)V

    return-void
.end method

.method static native longPress(III)V
.end method

.method static native mouseDown(IIII)V
.end method

.method static native mouseMove(IIII)V
.end method

.method static native mouseUp(IIII)V
.end method

.method static native mouseWheel(IIIFF)V
.end method

.method private probeForKeyboardHeight(Landroid/app/Activity;IIIIII)V
    .registers 18

    .line 457
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_c

    .line 458
    const-string p1, "QtInputDelegate"

    const-string p2, "probeForKeyboardHeight: null QtEditText"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 461
    :cond_c
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V

    iget p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    int-to-long p1, p1

    invoke-virtual {v0, v1, p1, p2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z
    .registers 5

    .line 681
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 684
    :goto_c
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1c

    if-nez v0, :cond_17

    goto :goto_1c

    .line 687
    :cond_17
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    return v2
.end method

.method static sendMouseEvent(Landroid/view/MotionEvent;I)Z
    .registers 7

    .line 692
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9a

    if-eq v0, v1, :cond_88

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_30

    const/4 v2, 0x7

    if-eq v0, v2, :cond_30

    const/16 v2, 0x8

    if-eq v0, v2, :cond_15

    return v3

    .line 717
    :cond_15
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/16 v3, 0xa

    .line 718
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    const/16 v4, 0x9

    .line 719
    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p0

    .line 717
    invoke-static {p1, v0, v2, v3, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseWheel(IIIFF)V

    goto/16 :goto_b9

    .line 704
    :cond_30
    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_49

    .line 705
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseMove(IIII)V

    goto :goto_b9

    .line 707
    :cond_49
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v2, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 708
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 709
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-gt v0, v3, :cond_68

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v3, :cond_b9

    .line 710
    :cond_68
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseMove(IIII)V

    .line 711
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    .line 712
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    goto :goto_b9

    .line 694
    :cond_88
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    invoke-static {p1, v0, v2, p0}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseUp(IIII)V

    goto :goto_b9

    .line 698
    :cond_9a
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->mouseDown(IIII)V

    .line 699
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sput p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldX:I

    .line 700
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    float-to-int p0, p0

    sput p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_oldY:I

    :cond_b9
    :goto_b9
    return v1
.end method

.method static sendTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 18

    move-object/from16 v0, p0

    .line 621
    sget-object v1, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_10

    .line 622
    invoke-static {}, Lorg/qtproject/qt/android/QtInputDelegate;->isTabletEventSupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    :cond_10
    const/4 v11, 0x0

    .line 624
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eq v1, v12, :cond_21

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1f

    move v5, v11

    goto :goto_22

    :cond_1f
    move v5, v13

    goto :goto_22

    :cond_21
    move v5, v14

    .line 633
    :goto_22
    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v13, :cond_2c

    .line 634
    invoke-static/range {p0 .. p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    return-void

    .line 635
    :cond_2c
    sget-object v1, Lorg/qtproject/qt/android/QtInputDelegate;->m_tabletEventSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_58

    if-eqz v5, :cond_58

    .line 636
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 637
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    .line 638
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v9

    move/from16 v0, p1

    .line 636
    invoke-static/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate;->tabletEvent(IIJIIIFFF)V

    return-void

    .line 640
    :cond_58
    invoke-static/range {p1 .. p1}, Lorg/qtproject/qt/android/QtInputDelegate;->touchBegin(I)V

    move v15, v11

    .line 641
    :goto_5c
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v15, v1, :cond_91

    .line 643
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 644
    invoke-static {v15, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->getAction(ILandroid/view/MotionEvent;)I

    move-result v3

    if-nez v15, :cond_6e

    move v4, v14

    goto :goto_6f

    :cond_6e
    move v4, v11

    .line 646
    :goto_6f
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v5, v1

    .line 647
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v6, v1

    .line 648
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v7

    .line 649
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v8

    .line 650
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v9

    .line 651
    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v10

    move/from16 v1, p1

    .line 642
    invoke-static/range {v1 .. v10}, Lorg/qtproject/qt/android/QtInputDelegate;->touchAdd(IIIZIIFFFF)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_5c

    :cond_91
    move/from16 v1, p1

    .line 654
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_a9

    if-eq v0, v14, :cond_a5

    if-eq v0, v13, :cond_a1

    .line 668
    invoke-static {v1, v14}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    return-void

    .line 664
    :cond_a1
    invoke-static {v1}, Lorg/qtproject/qt/android/QtInputDelegate;->touchCancel(I)V

    return-void

    .line 660
    :cond_a5
    invoke-static {v1, v12}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    return-void

    .line 656
    :cond_a9
    invoke-static {v1, v11}, Lorg/qtproject/qt/android/QtInputDelegate;->touchEnd(II)V

    return-void
.end method

.method static sendTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 2

    .line 675
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->sendMouseEvent(Landroid/view/MotionEvent;I)Z

    return-void
.end method

.method private setKeyboardTransitionInProgress(Z)V
    .registers 3

    .line 125
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardTransitionInProgress:Z

    if-ne v0, p1, :cond_9

    goto :goto_b

    .line 128
    :cond_9
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardTransitionInProgress:Z

    :cond_b
    :goto_b
    return-void
.end method

.method private setKeyboardVisibility_internal(ZJ)V
    .registers 6

    .line 396
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_7

    goto :goto_24

    .line 398
    :cond_7
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_showHideTimeStamp:J

    .line 400
    iget-boolean p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    if-ne p2, p1, :cond_e

    goto :goto_24

    .line 402
    :cond_e
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    .line 403
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyboardVisibilityUpdated(Z)V

    .line 404
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardTransitionInProgress(Z)V

    if-nez p1, :cond_24

    .line 408
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardVisibilityListener:Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;

    invoke-interface {p1}, Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;->onKeyboardVisibilityChange()V

    .line 409
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz p1, :cond_24

    .line 410
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->clearFocus()V

    :cond_24
    :goto_24
    return-void
.end method

.method private showKeyboard(Landroid/app/Activity;IIIIII)V
    .registers 20

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2f

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 152
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 153
    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$2;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lorg/qtproject/qt/android/QtInputDelegate$2;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;ILandroid/view/View;Landroid/app/Activity;IIIIII)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 173
    invoke-virtual {v11}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->show(I)V

    return-void

    .line 175
    :cond_2f
    iget-object v10, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v10, :cond_34

    return-void

    .line 177
    :cond_34
    iget-object v11, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate$3;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;Landroid/app/Activity;IIIIII)V

    const/4 v1, 0x0

    invoke-virtual {v10, v11, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    return-void
.end method

.method static native tabletEvent(IIJIIIFFF)V
.end method

.method static native touchAdd(IIIZIIFFFF)V
.end method

.method static native touchBegin(I)V
.end method

.method static native touchCancel(I)V
.end method

.method static native touchEnd(II)V
.end method

.method private updateSoftInputMode(Landroid/app/Activity;I)Z
    .registers 6

    .line 422
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 423
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 429
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_1e

    .line 430
    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    if-eqz v1, :cond_17

    goto :goto_28

    .line 431
    :cond_17
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x5

    goto :goto_28

    .line 433
    :cond_1e
    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    if-eqz v1, :cond_23

    goto :goto_28

    .line 434
    :cond_23
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x3

    move v1, v0

    .line 437
    :goto_28
    iget v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 438
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 440
    iget p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3e

    const/4 p1, 0x1

    return p1

    :cond_3e
    return v2

    :cond_3f
    if-le p2, v1, :cond_4b

    .line 445
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_54

    .line 448
    :cond_4b
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x21

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_54
    return v2
.end method


# virtual methods
.method getCurrentQtEditText()Lorg/qtproject/qt/android/QtEditText;
    .registers 2

    .line 377
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    return-object v0
.end method

.method public getInputConnectionListener()Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;
    .registers 1

    return-object p0
.end method

.method public getSelectionHandleWidth()I
    .registers 2

    .line 233
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->getSelectionHandleWidth()I

    move-result v0

    return v0
.end method

.method handleDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 562
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method handleDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 547
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4e

    .line 548
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 549
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 550
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_4e

    .line 551
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 552
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_33

    move v4, v1

    goto :goto_34

    :cond_33
    move v4, v2

    .line 551
    :goto_34
    invoke-static {v2, v0, v3, v4}, Lorg/qtproject/qt/android/QtInputDelegate;->keyDown(IIIZ)V

    .line 553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 554
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    .line 553
    :goto_4b
    invoke-static {v2, v0, v3, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyUp(IIIZ)V

    .line 557
    :cond_4e
    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public hideSoftwareKeyboard()V
    .registers 2

    .line 272
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_9

    goto :goto_14

    :cond_9
    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    .line 276
    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method initInputMethodManager(Landroid/app/Activity;)V
    .registers 4

    .line 94
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_13

    .line 96
    const-string v0, "QtInputDelegate"

    const-string v1, "getSystemService() returned a null InputMethodManager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2d

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 101
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate$1;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate$1;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2d
    return-void
.end method

.method public isKeyboardHidden()Z
    .registers 5

    .line 324
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 326
    const-string v0, "QtInputDelegate"

    const-string v2, "isKeyboardHidden: The activity reference is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 330
    :cond_f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_44

    .line 331
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 333
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 334
    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 335
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 336
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    int-to-float v0, v0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_42

    return v1

    :cond_42
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_44
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method isKeyboardVisible()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    return v0
.end method

.method public isSoftwareKeyboardVisible()Z
    .registers 2

    .line 312
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_isKeyboardHidingAnimationOngoing:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public keyboardTransitionInProgress()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardTransitionInProgress:Z

    return v0
.end method

.method synthetic lambda$hideSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate()V
    .registers 6

    .line 277
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_9

    goto :goto_47

    .line 280
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2d

    .line 281
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 283
    const-string v0, "QtInputDelegate"

    const-string v1, "hideSoftwareKeyboard: The activity reference is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_1d
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    return-void

    .line 288
    :cond_2d
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtInputDelegate$4;

    new-instance v3, Landroid/os/Handler;

    .line 289
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lorg/qtproject/qt/android/QtInputDelegate$4;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;)V

    const/4 v3, 0x0

    .line 288
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    :cond_47
    :goto_47
    return-void
.end method

.method synthetic lambda$probeForKeyboardHeight$0$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V
    .registers 12

    .line 462
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_keyboardIsVisible:Z

    if-nez v0, :cond_7

    :cond_4
    move-object p1, p0

    goto/16 :goto_67

    .line 464
    :cond_7
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 465
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 466
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 467
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 468
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_5c

    .line 469
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v0, :cond_3e

    .line 470
    iget v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v2, :cond_4

    .line 471
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_landscapeKeyboardHeight:I

    .line 472
    invoke-virtual/range {p0 .. p7}, Lorg/qtproject/qt/android/QtInputDelegate;->showSoftwareKeyboard(Landroid/app/Activity;IIIIII)V

    move-object p1, p0

    return-void

    :cond_3e
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p0

    .line 476
    iget v2, p2, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_5a

    .line 477
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Lorg/qtproject/qt/android/QtInputDelegate;->m_portraitKeyboardHeight:I

    move p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    move p6, p7

    move p7, v0

    .line 478
    invoke-virtual/range {p0 .. p7}, Lorg/qtproject/qt/android/QtInputDelegate;->showSoftwareKeyboard(Landroid/app/Activity;IIIIII)V

    move-object p1, p0

    return-void

    :cond_5a
    move-object p1, p2

    goto :goto_67

    :cond_5c
    move-object p1, p0

    .line 485
    iget p2, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    const/16 p3, 0x3e8

    if-ge p2, p3, :cond_67

    mul-int/lit8 p2, p2, 0x2

    .line 486
    iput p2, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_probeKeyboardHeightDelayMs:I

    :cond_67
    :goto_67
    return-void
.end method

.method synthetic lambda$resetSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate()V
    .registers 3

    .line 262
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v1, :cond_9

    goto :goto_11

    .line 264
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    :cond_11
    :goto_11
    return-void
.end method

.method synthetic lambda$showSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V
    .registers 18

    .line 211
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_9

    goto :goto_3a

    .line 214
    :cond_9
    invoke-direct/range {p0 .. p2}, Lorg/qtproject/qt/android/QtInputDelegate;->updateSoftInputMode(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3a

    .line 217
    :cond_10
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, p3, p4}, Lorg/qtproject/qt/android/QtEditText;->setEditTextOptions(II)V

    .line 218
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v2, p5, p2, v3, v4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lorg/qtproject/qt/android/QtEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEditText;->requestFocus()Z

    .line 220
    iget-object v9, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v8, p3

    move v7, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V

    const-wide/16 v1, 0xf

    invoke-virtual {v9, v0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3a
    :goto_3a
    return-void
.end method

.method synthetic lambda$showSoftwareKeyboard$1$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V
    .registers 8

    .line 221
    invoke-direct/range {p0 .. p7}, Lorg/qtproject/qt/android/QtInputDelegate;->showKeyboard(Landroid/app/Activity;IIIIII)V

    move-object p1, p0

    .line 222
    iget-object p2, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    iget-boolean p2, p2, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    if-eqz p2, :cond_16

    .line 223
    iget-object p2, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object p3, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {p2, p3}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 224
    iget-object p2, p1, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    const/4 p3, 0x0

    iput-boolean p3, p2, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    :cond_16
    return-void
.end method

.method synthetic lambda$updateHandles$0$org-qtproject-qt-android-QtInputDelegate(IIIIIIIIZ)V
    .registers 20

    .line 245
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_14

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 246
    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtEditText;->updateHandles(IIIIIIIIZ)V

    :cond_14
    return-void
.end method

.method synthetic lambda$updateSelection$0$org-qtproject-qt-android-QtInputDelegate(IIII)V
    .registers 11

    .line 138
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_d

    .line 139
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    :cond_d
    return-void
.end method

.method public onEditTextChanged(Lorg/qtproject/qt/android/QtEditText;)V
    .registers 2

    .line 361
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->setFocusedView(Lorg/qtproject/qt/android/QtEditText;)V

    return-void
.end method

.method public onHideKeyboardRunnableDone(ZJ)V
    .registers 4

    .line 351
    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8

    .line 493
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v0, v1, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyDown(JILandroid/view/KeyEvent;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    .line 494
    invoke-static {v0, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(J)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    or-int/2addr v0, v1

    .line 495
    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    .line 497
    iget-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v1, v2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2d

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 501
    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    invoke-static {v2, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v1

    goto :goto_2e

    :cond_2d
    move v1, v0

    :goto_2e
    const/16 v2, 0x18

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3b

    const/16 v2, 0x19

    if-eq p1, v2, :cond_3b

    const/16 v2, 0x5b

    if-ne p1, v2, :cond_44

    .line 504
    :cond_3b
    const-string v2, "QT_ANDROID_VOLUME_KEYS"

    .line 507
    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    return v3

    .line 511
    :cond_44
    iput v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_lastChar:I

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_55

    .line 513
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardVisible()Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    iput-boolean v4, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    if-eqz v0, :cond_55

    return v2

    .line 518
    :cond_55
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-lez p2, :cond_60

    move v3, v2

    :cond_60
    invoke-static {p1, v1, v0, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->keyDown(IIIZ)V

    return v2
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_d

    const/16 v0, 0x19

    if-eq p1, v0, :cond_d

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_16

    .line 525
    :cond_d
    const-string v0, "QT_ANDROID_VOLUME_KEYS"

    .line 528
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v0, :cond_29

    .line 532
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_backKeyPressedSent:Z

    if-nez v0, :cond_29

    .line 533
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V

    .line 534
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return v2

    .line 538
    :cond_29
    iget-wide v3, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    invoke-static {v3, v4, p1, p2}, Landroid/text/method/MetaKeyKeyListener;->handleKeyUp(JILandroid/view/KeyEvent;)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_metaState:J

    .line 539
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_38

    move v1, v2

    .line 540
    :cond_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-static {p1, v0, p2, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->keyUp(IIIZ)V

    return v2
.end method

.method public onSendKeyEventDefaultCase()V
    .registers 1

    .line 356
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V

    return-void
.end method

.method public onSetClosing(Z)V
    .registers 4

    if-nez p1, :cond_a

    const/4 p1, 0x1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    :cond_a
    return-void
.end method

.method public resetSoftwareKeyboard()V
    .registers 5

    .line 259
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    if-nez v0, :cond_9

    goto :goto_13

    .line 261
    :cond_9
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;)V

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_13
    :goto_13
    return-void
.end method

.method setFocusedView(Lorg/qtproject/qt/android/QtEditText;)V
    .registers 3

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardTransitionInProgress(Z)V

    .line 417
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_currentEditText:Lorg/qtproject/qt/android/QtEditText;

    return-void
.end method

.method setKeyboardVisibility(ZJ)V
    .registers 6

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_9

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility_internal(ZJ)V

    :cond_9
    return-void
.end method

.method setSoftInputMode(I)V
    .registers 2

    .line 372
    iput p1, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_softInputMode:I

    return-void
.end method

.method public showSoftwareKeyboard(Landroid/app/Activity;IIIIII)V
    .registers 17

    .line 207
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_5

    return-void

    .line 210
    :cond_5
    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v2, p1

    move v7, p2

    move v8, p3

    move v6, p4

    move v3, p5

    move v5, p6

    move/from16 v4, p7

    invoke-direct/range {v0 .. v8}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateHandles(IIIIIIIIZ)V
    .registers 21

    .line 244
    new-instance v0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;IIIIIIIIZ)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSelection(IIII)V
    .registers 12

    .line 136
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_11

    .line 137
    new-instance v1, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtInputDelegate;IIII)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate.AnonymousClass1 (org.qtproject.qt.android.QtInputDelegate$1)
.class Lorg/qtproject/qt/android/QtInputDelegate$1;
.super Ljava/lang/Object;
.source "QtInputDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->initInputMethodManager(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_lastImeVisibility:Z

.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/view/View;)V
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

    .line 101
    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$rootView:Landroid/view/View;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 102
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->m_lastImeVisibility:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 106
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_2e

    .line 110
    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    .line 111
    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->m_lastImeVisibility:Z

    if-eq v1, v0, :cond_20

    .line 112
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->m_lastImeVisibility:Z

    .line 113
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lorg/qtproject/qt/android/QtInputDelegate;->access$000(Lorg/qtproject/qt/android/QtInputDelegate;ZJ)V

    .line 116
    :cond_20
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->isKeyboardHidden()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 117
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$1;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->access$100(Lorg/qtproject/qt/android/QtInputDelegate;Z)V

    :cond_2e
    :goto_2e
    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate.AnonymousClass2 (org.qtproject.qt.android.QtInputDelegate$2)
.class Lorg/qtproject/qt/android/QtInputDelegate$2;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->showKeyboard(Landroid/app/Activity;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$enterKeyType:I

.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;ILandroid/view/View;Landroid/app/Activity;IIIIII)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 155
    iput-object p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$decorView:Landroid/view/View;

    iput-object p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$activity:Landroid/app/Activity;

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$x:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$y:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$width:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$height:I

    iput p9, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$inputHints:I

    iput p10, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$enterKeyType:I

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .registers 10

    .line 163
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$decorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 164
    invoke-virtual {p1}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_2f

    .line 165
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->updateCursorPosition()Z

    .line 166
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->access$200(Lorg/qtproject/qt/android/QtInputDelegate;)I

    move-result p1

    if-nez p1, :cond_2f

    .line 167
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$x:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$y:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$width:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$height:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$inputHints:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$2;->val$enterKeyType:I

    invoke-static/range {v0 .. v7}, Lorg/qtproject/qt/android/QtInputDelegate;->access$300(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V

    :cond_2f
    return-void
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowInsets;",
            "Ljava/util/List<",
            "Landroid/view/WindowInsetsAnimation;",
            ">;)",
            "Landroid/view/WindowInsets;"
        }
    .end annotation

    return-object p1
.end method

###### Class org.qtproject.qt.android.QtInputDelegate.AnonymousClass3 (org.qtproject.qt.android.QtInputDelegate$3)
.class Lorg/qtproject/qt/android/QtInputDelegate$3;
.super Landroid/os/ResultReceiver;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->showKeyboard(Landroid/app/Activity;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enterKeyType:I

.field final synthetic val$height:I

.field final synthetic val$inputHints:I

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;Landroid/app/Activity;IIIIII)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 177
    iput-object p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$x:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$y:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$width:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$height:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$inputHints:I

    iput p9, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$enterKeyType:I

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 11

    const/4 p2, 0x1

    if-eqz p1, :cond_1b

    if-eq p1, p2, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_10

    goto :goto_3f

    .line 183
    :cond_c
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->updateCursorPosition()Z

    goto :goto_1b

    .line 194
    :cond_10
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return-void

    .line 186
    :cond_1b
    :goto_1b
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    .line 187
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtInputDelegate;->access$200(Lorg/qtproject/qt/android/QtInputDelegate;)I

    move-result p1

    if-nez p1, :cond_3f

    .line 188
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$x:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$y:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$width:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$height:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$inputHints:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$3;->val$enterKeyType:I

    invoke-static/range {v0 .. v7}, Lorg/qtproject/qt/android/QtInputDelegate;->access$300(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V

    :cond_3f
    :goto_3f
    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate.AnonymousClass4 (org.qtproject.qt.android.QtInputDelegate$4)
.class Lorg/qtproject/qt/android/QtInputDelegate$4;
.super Landroid/os/ResultReceiver;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtInputDelegate;->hideSoftwareKeyboard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputDelegate;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$4;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    const/4 p2, 0x1

    if-eqz p1, :cond_17

    if-eq p1, p2, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 p2, 0x3

    if-eq p1, p2, :cond_c

    return-void

    .line 299
    :cond_c
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$4;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    const/4 p2, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return-void

    .line 295
    :cond_17
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$4;->this$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtInputDelegate;->setKeyboardVisibility(ZJ)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate.KeyboardVisibilityListener (org.qtproject.qt.android.QtInputDelegate$KeyboardVisibilityListener)
.class interface abstract Lorg/qtproject/qt/android/QtInputDelegate$KeyboardVisibilityListener;
.super Ljava/lang/Object;
.source "QtInputDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtInputDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "KeyboardVisibilityListener"
.end annotation


# virtual methods
.method public abstract onKeyboardVisibilityChange()V
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iput p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$6:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$1:Landroid/app/Activity;

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$6:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda0;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$showSoftwareKeyboard$1$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;IIIIIIIIZ)V
    .registers 11

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$6:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$7:I

    iput p9, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$8:I

    iput-boolean p10, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$9:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$6:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$7:I

    iget v8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$8:I

    iget-boolean v9, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda1;->f$9:Z

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$updateHandles$0$org-qtproject-qt-android-QtInputDelegate(IIIIIIIIZ)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$6:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$6:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda2;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$showSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$hideSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda4 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$resetSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda5 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda5;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$updateSelection$0$org-qtproject-qt-android-QtInputDelegate(IIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda6 (org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtInputDelegate;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtInputDelegate;Landroid/app/Activity;IIIIII)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iput p3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$4:I

    iput p6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$6:I

    iput p8, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtInputDelegate;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$1:Landroid/app/Activity;

    iget v2, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$4:I

    iget v5, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$6:I

    iget v7, p0, Lorg/qtproject/qt/android/QtInputDelegate$$ExternalSyntheticLambda6;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lorg/qtproject/qt/android/QtInputDelegate;->lambda$probeForKeyboardHeight$0$org-qtproject-qt-android-QtInputDelegate(Landroid/app/Activity;IIIIII)V

    return-void
.end method
