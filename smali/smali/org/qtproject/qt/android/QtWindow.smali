###### Class org.qtproject.qt.android.QtWindow (org.qtproject.qt.android.QtWindow)
.class Lorg/qtproject/qt/android/QtWindow;
.super Lorg/qtproject/qt/android/QtLayout;
.source "QtWindow.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtSurfaceInterface;


# instance fields
.field private m_actionBarHeight:I

.field private final m_childWindows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/qtproject/qt/android/QtWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final m_editText:Lorg/qtproject/qt/android/QtEditText;

.field private m_editTextFocusInitialized:Z

.field private m_firstSafeMarginsDelivered:Z

.field private m_gestureDetector:Landroid/view/GestureDetector;

.field private final m_inputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

.field private m_nativeView:Landroid/view/View;

.field private m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

.field private m_surfaceContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
    .registers 7

    .line 48
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editTextFocusInitialized:Z

    .line 37
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_firstSafeMarginsDelivered:Z

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lorg/qtproject/qt/android/QtWindow;->m_actionBarHeight:I

    .line 49
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtWindow;->setId(I)V

    .line 50
    iput-object p4, p0, Lorg/qtproject/qt/android/QtWindow;->m_inputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    .line 51
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtWindow;->setParent(Lorg/qtproject/qt/android/QtWindow;)V

    const/4 p3, 0x1

    .line 52
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtWindow;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setDefaultFocusHighlightEnabled(Z)V

    const/4 p3, 0x2

    .line 54
    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/QtWindow;->setImportantForAccessibility(I)V

    .line 61
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setVisible(Z)V

    if-nez p2, :cond_51

    .line 63
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_51

    .line 65
    new-instance p2, Lorg/qtproject/qt/android/QtEditText;

    invoke-direct {p2, p1, p4}, Lorg/qtproject/qt/android/QtEditText;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 66
    invoke-virtual {p2, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 67
    invoke-virtual {p2, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {p2, p3}, Lorg/qtproject/qt/android/QtEditText;->setImportantForAccessibility(I)V

    .line 69
    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    .line 71
    new-instance p3, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p2}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;-><init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtLayout$LayoutParams;)V

    invoke-static {p3}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_54

    :cond_51
    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    .line 76
    :goto_54
    new-instance p2, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/content/Context;)V

    invoke-static {p2}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 87
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->registerSafeAreaMarginsListener()V

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;I)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/QtWindow;->reportSafeAreaMargins(Landroid/view/WindowInsets;I)V

    return-void
.end method

.method static synthetic access$102(Lorg/qtproject/qt/android/QtWindow;Z)Z
    .registers 2

    .line 28
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_firstSafeMarginsDelivered:Z

    return p1
.end method

.method private actionBarHeight()I
    .registers 3

    .line 222
    iget v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_actionBarHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 223
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 226
    :try_start_19
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lorg/qtproject/qt/android/QtWindow;->m_actionBarHeight:I
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_23

    .line 228
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_28

    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    throw v1

    .line 231
    :cond_28
    :goto_28
    iget v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_actionBarHeight:I

    return v0
.end method

.method private reportSafeAreaMargins(Landroid/view/WindowInsets;I)V
    .registers 12

    .line 192
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    .line 194
    new-array v2, v1, [I

    .line 195
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 196
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 197
    aget v2, v2, v5

    .line 199
    new-array v1, v1, [I

    .line 200
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtWindow;->getLocationOnScreen([I)V

    .line 201
    aget v6, v1, v3

    .line 202
    aget v1, v1, v5

    sub-int v5, v6, v4

    sub-int v7, v1, v2

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v4, v8

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    sub-int/2addr v4, v6

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    sub-int/2addr v2, v1

    .line 211
    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtWindow;->getSafeInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p1

    .line 212
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 213
    iget v1, p1, Landroid/graphics/Insets;->top:I

    iget v5, p1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v5, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 214
    iget v5, p1, Landroid/graphics/Insets;->right:I

    iget v6, p1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 215
    iget v5, p1, Landroid/graphics/Insets;->bottom:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 217
    invoke-static {v0, v1, v4, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtWindow;->safeAreaMarginsChanged(Landroid/graphics/Insets;I)V

    return-void
.end method

.method private static native safeAreaMarginsChanged(Landroid/graphics/Insets;I)V
.end method

.method private static native setSurface(ILandroid/view/Surface;)V
.end method

.method static native updateWindows()V
.end method

.method static native windowFocusChanged(ZI)V
.end method


# virtual methods
.method addChildWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 3

    .line 349
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;-><init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method bringChildToBack(I)V
    .registers 3

    .line 391
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method bringChildToFront(I)V
    .registers 3

    .line 380
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method createSurface(ZIZI)V
    .registers 11

    .line 308
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtWindow;IZIZ)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method destroySurface()V
    .registers 3

    .line 330
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda14;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method getSafeInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/graphics/Insets;
    .registers 7

    .line 155
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_14

    .line 156
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    or-int/2addr p1, v0

    .line 157
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1

    .line 161
    :cond_14
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    .line 163
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 164
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 168
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    if-eqz p2, :cond_4a

    .line 170
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 172
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 173
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 180
    :cond_4a
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 181
    invoke-virtual {p2}, Landroid/app/ActionBar;->isShowing()Z

    move-result p2

    if-nez p2, :cond_65

    .line 182
    :cond_5c
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtWindow;->actionBarHeight()I

    move-result p2

    sub-int p2, v0, p2

    if-lez p2, :cond_65

    move v0, p2

    .line 187
    :cond_65
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$addChildWindow$0$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 4

    .line 350
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$bringChildToBack$0$org-qtproject-qt-android-QtWindow(I)V
    .registers 3

    .line 392
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->moveChild(Landroid/view/View;I)V

    :cond_12
    return-void
.end method

.method synthetic lambda$bringChildToFront$0$org-qtproject-qt-android-QtWindow(I)V
    .registers 3

    .line 381
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1d

    .line 383
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1d

    .line 384
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->moveChild(Landroid/view/View;I)V

    :cond_1d
    return-void
.end method

.method synthetic lambda$createSurface$0$org-qtproject-qt-android-QtWindow(IZIZ)V
    .registers 6

    .line 309
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 310
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    :cond_7
    if-nez p1, :cond_15

    .line 313
    new-instance p1, Lorg/qtproject/qt/android/QtSurface;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p0, p2, p3}, Lorg/qtproject/qt/android/QtSurface;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;ZI)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    goto :goto_20

    .line 316
    :cond_15
    new-instance p1, Lorg/qtproject/qt/android/QtTextureView;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0, p4}, Lorg/qtproject/qt/android/QtTextureView;-><init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtSurfaceInterface;Z)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    .line 318
    :goto_20
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    new-instance p2, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;I)V

    return-void
.end method

.method synthetic lambda$destroySurface$0$org-qtproject-qt-android-QtWindow()V
    .registers 2

    .line 331
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 332
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 333
    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_surfaceContainer:Landroid/view/View;

    :cond_a
    return-void
.end method

.method synthetic lambda$new$0$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtLayout$LayoutParams;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$new$1$org-qtproject-qt-android-QtWindow(Landroid/content/Context;)V
    .registers 4

    .line 77
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lorg/qtproject/qt/android/QtWindow$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtWindow$1;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_gestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    .line 84
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method synthetic lambda$registerSafeAreaMarginsListener$0$org-qtproject-qt-android-QtWindow(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/QtWindow;->reportSafeAreaMargins(Landroid/view/WindowInsets;I)V

    return-object p1
.end method

.method synthetic lambda$registerSafeAreaMarginsListener$1$org-qtproject-qt-android-QtWindow(Landroid/view/WindowInsets;)V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->reportSafeAreaMargins(Landroid/view/WindowInsets;I)V

    return-void
.end method

.method synthetic lambda$registerSafeAreaMarginsListener$2$org-qtproject-qt-android-QtWindow(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 146
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 148
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getRootView()Landroid/view/View;

    move-result-object p2

    new-instance p3, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method synthetic lambda$registerSafeAreaMarginsListener$3$org-qtproject-qt-android-QtWindow(Landroid/view/WindowInsets;)V
    .registers 3

    .line 148
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/QtWindow;->reportSafeAreaMargins(Landroid/view/WindowInsets;I)V

    return-void
.end method

.method synthetic lambda$removeChildWindow$0$org-qtproject-qt-android-QtWindow(I)V
    .registers 4

    .line 358
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 359
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_childWindows:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    :cond_1b
    return-void
.end method

.method synthetic lambda$removeNativeView$0$org-qtproject-qt-android-QtWindow()V
    .registers 2

    .line 403
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 404
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    :cond_a
    return-void
.end method

.method synthetic lambda$setGeometry$0$org-qtproject-qt-android-QtWindow(IIII)V
    .registers 6

    .line 342
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/qtproject/qt/android/QtActivityBase;

    if-eqz v0, :cond_10

    .line 343
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    return-void
.end method

.method synthetic lambda$setNativeView$0$org-qtproject-qt-android-QtWindow(Landroid/view/View;)V
    .registers 4

    .line 367
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 368
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->removeView(Landroid/view/View;)V

    .line 370
    :cond_7
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    .line 371
    new-instance v0, Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lorg/qtproject/qt/android/QtLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    iget-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_nativeView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->addView(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$setVisible$0$org-qtproject-qt-android-QtWindow(Z)V
    .registers 2

    .line 0
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x4

    .line 236
    :goto_5
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtWindow;->setVisibility(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 284
    invoke-super {p0}, Lorg/qtproject/qt/android/QtLayout;->onAttachedToWindow()V

    .line 285
    invoke-static {}, Lorg/qtproject/qt/android/QtDragManager;->getInstance()Lorg/qtproject/qt/android/QtDragManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 291
    invoke-static {}, Lorg/qtproject/qt/android/QtDragManager;->getInstance()Lorg/qtproject/qt/android/QtDragManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/QtDragManager;->onSourceWindowDetached(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 292
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 293
    invoke-super {p0}, Lorg/qtproject/qt/android/QtLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 278
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendGenericMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result p1

    return p1
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .registers 3

    .line 242
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtWindow;->setSurface(ILandroid/view/Surface;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 250
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editTextFocusInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 251
    iput-boolean v1, p0, Lorg/qtproject/qt/android/QtWindow;->m_editTextFocusInitialized:Z

    .line 252
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_13

    .line 253
    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 254
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 258
    :cond_13
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {v1, v0}, Lorg/qtproject/qt/android/QtWindow;->windowFocusChanged(ZI)V

    .line 259
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_25

    iget-object v2, p0, Lorg/qtproject/qt/android/QtWindow;->m_inputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    if-eqz v2, :cond_25

    .line 260
    invoke-interface {v2, v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onEditTextChanged(Lorg/qtproject/qt/android/QtEditText;)V

    .line 262
    :cond_25
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendTouchEvent(Landroid/view/MotionEvent;I)V

    .line 263
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_gestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_33

    .line 264
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_33
    return v1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 271
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtInputDelegate;->sendTrackballEvent(Landroid/view/MotionEvent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method registerSafeAreaMarginsListener()V
    .registers 4

    .line 92
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/qtproject/qt/android/QtActivityBase;

    if-nez v0, :cond_9

    return-void

    .line 95
    :cond_9
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 103
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 104
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 106
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getRootView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_firstSafeMarginsDelivered:Z

    goto :goto_35

    .line 110
    :cond_2d
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$2;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$2;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 123
    :cond_35
    :goto_35
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_firstSafeMarginsDelivered:Z

    if-nez v0, :cond_45

    .line 124
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$3;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    .line 142
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 145
    :cond_45
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtWindow;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method removeChildWindow(I)V
    .registers 3

    .line 357
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtWindow;I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeNativeView()V
    .registers 2

    .line 402
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda15;-><init>(Lorg/qtproject/qt/android/QtWindow;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method removeWindow()V
    .registers 3

    .line 299
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    if-eqz v0, :cond_b

    .line 300
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->removeChildWindow(I)V

    :cond_b
    return-void
.end method

.method setGeometry(IIII)V
    .registers 11

    .line 341
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;-><init>(Lorg/qtproject/qt/android/QtWindow;IIII)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method setNativeView(Landroid/view/View;)V
    .registers 3

    .line 366
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;-><init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/View;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method setParent(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 4

    .line 412
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    if-ne v0, p1, :cond_5

    goto :goto_15

    :cond_5
    if-eqz v0, :cond_e

    .line 416
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->removeChildWindow(I)V

    .line 418
    :cond_e
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow;->m_parentWindow:Lorg/qtproject/qt/android/QtWindow;

    if-eqz p1, :cond_15

    .line 420
    invoke-virtual {p1, p0}, Lorg/qtproject/qt/android/QtWindow;->addChildWindow(Lorg/qtproject/qt/android/QtWindow;)V

    :cond_15
    :goto_15
    return-void
.end method

.method setVisible(Z)V
    .registers 3

    .line 236
    new-instance v0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;-><init>(Lorg/qtproject/qt/android/QtWindow;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateFocusedEditText()V
    .registers 3

    .line 426
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow;->m_editText:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow;->m_inputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    if-eqz v1, :cond_b

    .line 427
    invoke-interface {v1, v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onEditTextChanged(Lorg/qtproject/qt/android/QtEditText;)V

    :cond_b
    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow.AnonymousClass1 (org.qtproject.qt.android.QtWindow$1)
.class Lorg/qtproject/qt/android/QtWindow$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "QtWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtWindow;-><init>(Landroid/content/Context;ZLorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$1;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$1;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtInputDelegate;->longPress(III)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow.AnonymousClass2 (org.qtproject.qt.android.QtWindow$2)
.class Lorg/qtproject/qt/android/QtWindow$2;
.super Ljava/lang/Object;
.source "QtWindow.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtWindow;->registerSafeAreaMarginsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$2;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 113
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow.AnonymousClass3 (org.qtproject.qt.android.QtWindow$3)
.class Lorg/qtproject/qt/android/QtWindow$3;
.super Ljava/lang/Object;
.source "QtWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtWindow;->registerSafeAreaMarginsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPreDraw$0$org-qtproject-qt-android-QtWindow$3(Landroid/view/WindowInsets;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v1

    invoke-static {v0, p1, v1}, Lorg/qtproject/qt/android/QtWindow;->access$000(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;I)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 5

    .line 127
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2e

    .line 128
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 130
    iget-object v2, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/QtWindow;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 131
    iget-object v2, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/QtWindow;->getRootView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtWindow$3;Landroid/view/WindowInsets;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->access$102(Lorg/qtproject/qt/android/QtWindow;Z)Z

    return v1

    .line 137
    :cond_2e
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3;->this$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->requestApplyInsets()V

    return v1
.end method

###### Class org.qtproject.qt.android.QtWindow$3$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtWindow$3$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow$3;

.field public final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow$3;Landroid/view/WindowInsets;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtWindow$3;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtWindow$3;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$3$$ExternalSyntheticLambda0;->f$1:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow$3;->lambda$onPreDraw$0$org-qtproject-qt-android-QtWindow$3(Landroid/view/WindowInsets;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$bringChildToBack$0$org-qtproject-qt-android-QtWindow(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$removeChildWindow$0$org-qtproject-qt-android-QtWindow(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda10 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda10)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtLayout$LayoutParams;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$1:Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda10;->f$1:Lorg/qtproject/qt/android/QtLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$new$0$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtLayout$LayoutParams;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda11 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda11)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda11;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$new$1$org-qtproject-qt-android-QtWindow(Landroid/content/Context;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda12 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda12)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda12;->f$1:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$registerSafeAreaMarginsListener$3$org-qtproject-qt-android-QtWindow(Landroid/view/WindowInsets;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda13 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda13)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Lorg/qtproject/qt/android/QtWindow;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;->f$1:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda13;->f$1:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$addChildWindow$0$org-qtproject-qt-android-QtWindow(Lorg/qtproject/qt/android/QtWindow;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda14 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda14)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda14;->f$0:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda14;->f$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->lambda$destroySurface$0$org-qtproject-qt-android-QtWindow()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda15 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda15)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda15;->f$0:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda15;->f$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtWindow;->lambda$removeNativeView$0$org-qtproject-qt-android-QtWindow()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;IZIZ)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$1:I

    iput-boolean p3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$2:Z

    iput p4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$3:I

    iput-boolean p5, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$1:I

    iget-boolean v2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$2:Z

    iget v3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$3:I

    iget-boolean v4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda2;->f$4:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtWindow;->lambda$createSurface$0$org-qtproject-qt-android-QtWindow(IZIZ)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0, p1, p2}, Lorg/qtproject/qt/android/QtWindow;->lambda$registerSafeAreaMarginsListener$0$org-qtproject-qt-android-QtWindow(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda4 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda4)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Landroid/view/WindowInsets;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/WindowInsets;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$1:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda4;->f$1:Landroid/view/WindowInsets;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$registerSafeAreaMarginsListener$1$org-qtproject-qt-android-QtWindow(Landroid/view/WindowInsets;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda5 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda5)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda5;->f$0:Lorg/qtproject/qt/android/QtWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtWindow;->lambda$registerSafeAreaMarginsListener$2$org-qtproject-qt-android-QtWindow(Landroid/view/View;IIIIIIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda6 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda6)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda6;->f$1:I

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$bringChildToFront$0$org-qtproject-qt-android-QtWindow(I)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda7 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda7)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;IIII)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$2:I

    iput p4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$3:I

    iput p5, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$2:I

    iget v3, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$3:I

    iget v4, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda7;->f$4:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/qtproject/qt/android/QtWindow;->lambda$setGeometry$0$org-qtproject-qt-android-QtWindow(IIII)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda8 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda8)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda8;->f$1:Z

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$setVisible$0$org-qtproject-qt-android-QtWindow(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda9 (org.qtproject.qt.android.QtWindow$$ExternalSyntheticLambda9)
.class public final synthetic Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtWindow;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;->f$0:Lorg/qtproject/qt/android/QtWindow;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtWindow$$ExternalSyntheticLambda9;->f$1:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtWindow;->lambda$setNativeView$0$org-qtproject-qt-android-QtWindow(Landroid/view/View;)V

    return-void
.end method
