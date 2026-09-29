###### Class org.qtproject.qt.android.QtDisplayManager (org.qtproject.qt.android.QtDisplayManager)
.class Lorg/qtproject/qt/android/QtDisplayManager;
.super Ljava/lang/Object;
.source "QtDisplayManager.java"


# static fields
.field private static QtTAG:Ljava/lang/String; = "QtDisplayManager"

.field private static m_previousRotation:I = -0x1


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private final m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    .line 48
    new-instance p1, Lorg/qtproject/qt/android/QtDisplayManager$1;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtDisplayManager$1;-><init>(Lorg/qtproject/qt/android/QtDisplayManager;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;
    .registers 1

    .line 26
    iget-object p0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static getAvailableDisplays(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation

    .line 153
    const-string v0, "display"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_13

    .line 156
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    .line 157
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 159
    :cond_13
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 3

    .line 128
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 130
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge p0, v1, :cond_14

    .line 131
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 132
    :cond_14
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    .line 135
    :cond_19
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method static getDisplay(Landroid/content/Context;I)Landroid/view/Display;
    .registers 3

    .line 142
    const-string v0, "display"

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_f

    .line 145
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method static getDisplaySize(Landroid/content/Context;Landroid/view/Display;)Landroid/util/Size;
    .registers 6

    const-string v0, "getDisplaySize(): WindowManager null, display ID"

    const/4 v1, 0x0

    if-eqz p1, :cond_76

    if-nez p0, :cond_8

    goto :goto_76

    .line 169
    :cond_8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_20

    .line 170
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    new-instance p1, Landroid/util/Size;

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 175
    :cond_20
    :try_start_20
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    .line 176
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_44

    .line 178
    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 180
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 182
    :cond_44
    sget-object p0, Lorg/qtproject/qt/android/QtDisplayManager;->QtTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5a} :catch_5b

    goto :goto_70

    :catch_5b
    move-exception p0

    .line 185
    sget-object p1, Lorg/qtproject/qt/android/QtDisplayManager;->QtTAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to retrieve display metrics with "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_70
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 167
    :cond_76
    :goto_76
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private static getNativeOrientation(Landroid/app/Activity;I)I
    .registers 5

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v2, 0x3

    if-ne p1, v2, :cond_12

    goto :goto_14

    :cond_12
    move p1, v0

    goto :goto_15

    :cond_14
    :goto_14
    move p1, v1

    :goto_15
    const/4 v2, 0x2

    if-ne p0, v2, :cond_19

    move v0, v1

    :cond_19
    if-eqz v0, :cond_1d

    if-eqz p1, :cond_21

    :cond_1d
    if-nez v0, :cond_22

    if-eqz p1, :cond_22

    :cond_21
    return v2

    :cond_22
    return v1
.end method

.method static getXDpi(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 193
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    return v1

    .line 195
    :cond_9
    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    return p0
.end method

.method static getYDpi(Landroid/util/DisplayMetrics;)F
    .registers 3

    .line 200
    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    return v1

    .line 202
    :cond_9
    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return p0
.end method

.method static native handleLayoutSizeChanged(II)V
.end method

.method static handleOrientationChange(Landroid/app/Activity;)V
    .registers 3

    .line 77
    invoke-static {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 78
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 79
    :goto_c
    sget v1, Lorg/qtproject/qt/android/QtDisplayManager;->m_previousRotation:I

    if-ne v1, v0, :cond_11

    return-void

    .line 81
    :cond_11
    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtDisplayManager;->getNativeOrientation(Landroid/app/Activity;I)I

    move-result p0

    .line 82
    invoke-static {v0, p0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChanged(II)V

    .line 83
    sput v0, Lorg/qtproject/qt/android/QtDisplayManager;->m_previousRotation:I

    return-void
.end method

.method static native handleOrientationChanged(II)V
.end method

.method static native handleRefreshRateChanged(F)V
.end method

.method static native handleScreenAdded(I)V
.end method

.method static native handleScreenChanged(I)V
.end method

.method static native handleScreenDensityChanged(D)V
.end method

.method static native handleScreenRemoved(I)V
.end method

.method static native handleUiDarkModeChanged(I)V
.end method

.method static updateRefreshRate(Landroid/content/Context;)V
    .registers 1

    .line 70
    invoke-static {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 71
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    goto :goto_d

    :cond_b
    const/high16 p0, 0x42700000    # 60.0f

    .line 72
    :goto_d
    invoke-static {p0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleRefreshRateChanged(F)V

    return-void
.end method

.method static updateScreenDensity(Landroid/app/Activity;)V
    .registers 3

    if-nez p0, :cond_7

    .line 88
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 89
    :goto_b
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    .line 90
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenDensityChanged(D)V

    return-void
.end method


# virtual methods
.method initDisplayProperties()V
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->handleOrientationChange(Landroid/app/Activity;)V

    .line 107
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateRefreshRate(Landroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateScreenDensity(Landroid/app/Activity;)V

    return-void
.end method

.method registerDisplayListener()V
    .registers 4

    .line 113
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    const-string v1, "display"

    .line 114
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 115
    iget-object v1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method unregisterDisplayListener()V
    .registers 3

    .line 120
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_activity:Landroid/app/Activity;

    const-string v1, "display"

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 122
    iget-object v1, p0, Lorg/qtproject/qt/android/QtDisplayManager;->m_displayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtDisplayManager.AnonymousClass1 (org.qtproject.qt.android.QtDisplayManager$1)
.class Lorg/qtproject/qt/android/QtDisplayManager$1;
.super Ljava/lang/Object;
.source "QtDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/QtDisplayManager;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/QtDisplayManager;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtDisplayManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 51
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenAdded(I)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 56
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateRefreshRate(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDisplayManager$1;->this$0:Lorg/qtproject/qt/android/QtDisplayManager;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->access$000(Lorg/qtproject/qt/android/QtDisplayManager;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtDisplayManager;->updateScreenDensity(Landroid/app/Activity;)V

    .line 58
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenChanged(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 63
    invoke-static {p1}, Lorg/qtproject/qt/android/QtDisplayManager;->handleScreenRemoved(I)V

    return-void
.end method
