###### Class org.qtproject.qt.android.QtWindowInsetsController (org.qtproject.qt.android.QtWindowInsetsController)
.class Lorg/qtproject/qt/android/QtWindowInsetsController;
.super Ljava/lang/Object;
.source "QtWindowInsetsController.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decorFitsSystemWindows(Landroid/app/Activity;)Z
    .registers 2

    .line 258
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isExpandedClientArea(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method static enableSystemBarsBackgroundDrawing(Landroid/view/Window;)V
    .registers 2

    const/high16 v0, -0x80000000

    .line 363
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/high16 v0, 0xc000000

    .line 367
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method static getThemeDefaultNavigationBarColor(Landroid/app/Activity;)I
    .registers 2

    .line 355
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const v0, 0x1010452

    .line 357
    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->resolveColorAttribute(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method static getThemeDefaultStatusBarColor(Landroid/app/Activity;)I
    .registers 2

    .line 347
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const v0, 0x1010451

    .line 349
    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->resolveColorAttribute(Landroid/app/Activity;I)I

    move-result p0

    return p0
.end method

.method private static isEdgeToEdgeEnforced(Landroid/content/Context;)Z
    .registers 5

    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x23

    if-ge v0, v2, :cond_8

    return v1

    .line 205
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_11

    return v1

    :cond_11
    const/4 v3, 0x1

    if-le v0, v2, :cond_15

    return v3

    :cond_15
    const v0, 0x101069a

    .line 212
    filled-new-array {v0}, [I

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 215
    :try_start_24
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2d

    xor-int/2addr v0, v3

    .line 217
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_2d
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 218
    throw v0
.end method

.method static isExpandedClientArea(Landroid/app/Activity;)Z
    .registers 3

    .line 245
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 249
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x18

    const/16 v0, 0xff

    if-eq p0, v0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method static isFullScreen(Landroid/app/Activity;)Z
    .registers 6

    .line 223
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 227
    :cond_8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 228
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2c

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 231
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    xor-int/2addr p0, v4

    return p0

    :cond_2b
    return v1

    .line 234
    :cond_2c
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    const/16 v0, 0x1000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_36

    return v4

    :cond_36
    return v1
.end method

.method static synthetic lambda$showExpanded$0(Landroid/view/View;)V
    .registers 1

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method static synthetic lambda$showFullScreen$0(Landroid/view/View;)V
    .registers 1

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method static synthetic lambda$showNormal$0(Landroid/view/View;)V
    .registers 1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    return-void
.end method

.method private static resolveColorAttribute(Landroid/app/Activity;I)I
    .registers 5

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 332
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    .line 334
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 335
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_1f

    .line 336
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0

    .line 337
    :cond_1f
    iget p0, v1, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_2e

    iget p0, v1, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_2e

    .line 338
    iget p0, v1, Landroid/util/TypedValue;->data:I

    return p0

    :cond_2e
    const/4 p0, -0x1

    return p0
.end method

.method static restoreFullScreenVisibility(Landroid/app/Activity;)V
    .registers 2

    .line 263
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isFullScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 264
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->showFullScreen(Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method private static setDecorFitsSystemWindows(Landroid/view/Window;Z)V
    .registers 4

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    goto :goto_11

    .line 32
    :cond_7
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    .line 34
    :cond_12
    invoke-virtual {p0, p1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    return-void
.end method

.method static setNavigationBarColor(Landroid/view/Window;I)V
    .registers 3

    .line 381
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 383
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method static setNavigationBarColorHint(Landroid/app/Activity;Z)V
    .registers 5

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/16 v2, 0x10

    if-lt v0, v1, :cond_1b

    .line 310
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 314
    :goto_17
    invoke-interface {p0, p1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1a
    return-void

    .line 318
    :cond_1b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_28

    or-int/lit8 p1, v0, 0x10

    goto :goto_2a

    :cond_28
    and-int/lit8 p1, v0, -0x11

    .line 324
    :goto_2a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method static setStatusBarColor(Landroid/view/Window;I)V
    .registers 3

    .line 373
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 375
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method static setStatusBarColorHint(Landroid/app/Activity;Z)V
    .registers 4

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1b

    .line 284
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/16 v0, 0x8

    if-eqz p1, :cond_16

    move p1, v0

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 288
    :goto_17
    invoke-interface {p0, p1, v0}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    :cond_1a
    return-void

    .line 292
    :cond_1b
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_28

    or-int/lit16 p1, v0, 0x2000

    goto :goto_2a

    :cond_28
    and-int/lit16 p1, v0, -0x2001

    .line 298
    :goto_2a
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setSystemUiVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private static setSystemUiVisibility(Landroid/view/View;I)V
    .registers 2

    .line 273
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private static setTransparentSystemBars(Landroid/app/Activity;Z)V
    .registers 4

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_d

    .line 102
    :cond_7
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->isEdgeToEdgeEnforced(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_d
    return-void

    :cond_e
    const/high16 v1, 0xc000000

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v1, -0x80000000

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-eqz p1, :cond_3f

    .line 111
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1d

    if-lt p0, p1, :cond_28

    const/4 p0, 0x0

    .line 112
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 113
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    .line 118
    :cond_28
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result p0

    const p1, 0xffffff

    and-int/2addr p0, p1

    .line 120
    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 122
    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p0

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    .line 128
    :cond_3f
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->getThemeDefaultStatusBarColor(Landroid/app/Activity;)I

    move-result p1

    .line 129
    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 131
    invoke-static {p0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->getThemeDefaultNavigationBarColor(Landroid/app/Activity;)I

    move-result p0

    .line 132
    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method

.method static showExpanded(Landroid/app/Activity;)V
    .registers 6

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 143
    :cond_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 144
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-lt v2, v3, :cond_27

    const/4 v2, 0x0

    .line 145
    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 148
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/WindowInsetsController;->show(I)V

    .line 149
    invoke-interface {v2, v4}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_2c

    :cond_27
    const/16 v2, 0x700

    .line 156
    invoke-static {v1, v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setSystemUiVisibility(Landroid/view/View;I)V

    .line 159
    :cond_2c
    :goto_2c
    invoke-static {p0, v4}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setTransparentSystemBars(Landroid/app/Activity;Z)V

    .line 160
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtWindowInsetsController;->useCutoutShortEdges(Landroid/view/Window;Z)V

    .line 162
    new-instance p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda2;

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showFullScreen(Landroid/app/Activity;)V
    .registers 4

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 172
    :cond_7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 173
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_27

    const/4 v1, 0x0

    .line 174
    invoke-static {p0, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 175
    invoke-virtual {p0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 177
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v2, 0x2

    .line 178
    invoke-interface {v1, v2}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_2c

    :cond_27
    const/16 v1, 0x1706

    .line 189
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setSystemUiVisibility(Landroid/view/View;I)V

    :cond_2c
    :goto_2c
    const/4 v1, 0x1

    .line 192
    invoke-static {p0, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->useCutoutShortEdges(Landroid/view/Window;Z)V

    .line 194
    new-instance p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static showNormal(Landroid/app/Activity;)V
    .registers 7

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 72
    :cond_7
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 73
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-lt v2, v3, :cond_27

    const/4 v2, 0x1

    .line 74
    invoke-static {v0, v2}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    .line 75
    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 77
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v5

    invoke-interface {v3, v5}, Landroid/view/WindowInsetsController;->show(I)V

    .line 78
    invoke-interface {v3, v2}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_2a

    .line 83
    :cond_27
    invoke-static {v1, v4}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setSystemUiVisibility(Landroid/view/View;I)V

    .line 86
    :cond_2a
    :goto_2a
    invoke-static {p0, v4}, Lorg/qtproject/qt/android/QtWindowInsetsController;->setTransparentSystemBars(Landroid/app/Activity;Z)V

    .line 87
    invoke-static {v0, v4}, Lorg/qtproject/qt/android/QtWindowInsetsController;->useCutoutShortEdges(Landroid/view/Window;Z)V

    .line 89
    new-instance p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda1;

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static themeCutoutMode(Landroid/content/Context;)I
    .registers 2

    const v0, 0x1010586

    .line 42
    filled-new-array {v0}, [I

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 45
    :try_start_10
    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 47
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0

    :catchall_18
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    throw v0
.end method

.method private static useCutoutShortEdges(Landroid/view/Window;Z)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_13

    .line 60
    :cond_b
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/QtWindowInsetsController;->themeCutoutMode(Landroid/content/Context;)I

    move-result p1

    :goto_13
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->lambda$showFullScreen$0(Landroid/view/View;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->lambda$showNormal$0(Landroid/view/View;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtWindowInsetsController$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtWindowInsetsController$$ExternalSyntheticLambda2;->f$0:Landroid/view/View;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtWindowInsetsController;->lambda$showExpanded$0(Landroid/view/View;)V

    return-void
.end method
