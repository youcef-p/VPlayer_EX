###### Class org.qtproject.qt.android.QtView (org.qtproject.qt.android.QtView)
.class abstract Lorg/qtproject/qt/android/QtView;
.super Landroid/view/ViewGroup;
.source "QtView.java"

# interfaces
.implements Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtView$QtWindowListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtView"


# instance fields
.field private m_parentWindowReference:J

.field private final m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

.field private m_window:Lorg/qtproject/qt/android/QtWindow;

.field private m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

.field private m_windowReference:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V

    .line 53
    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->create(Landroid/content/Context;)Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    .line 54
    new-instance p1, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtView;)V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 67
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_22

    .line 68
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtView;->setId(I)V

    :cond_22
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtView;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_f

    .line 79
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 83
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/QtView;->loadQtLibraries(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_f
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "QtView: argument \'appLibName\' may not be empty or null"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static native createRootWindow(Landroid/view/View;IIII)V
.end method

.method static native deleteWindow(J)V
.end method

.method private static native resizeWindow(JIIII)V
.end method

.method private static native setWindowVisible(JZ)V
.end method


# virtual methods
.method addQtWindow(Lorg/qtproject/qt/android/QtWindow;JJ)V
    .registers 6

    .line 215
    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/QtView;->setWindowReference(J)V

    .line 216
    iput-wide p4, p0, Lorg/qtproject/qt/android/QtView;->m_parentWindowReference:J

    .line 217
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    new-instance p3, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtView;Lorg/qtproject/qt/android/QtWindow;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract createWindow(J)V
.end method

.method destroyWindow()V
    .registers 6

    .line 233
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_parentWindowReference:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    .line 234
    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtView;->deleteWindow(J)V

    .line 235
    :cond_b
    iput-wide v2, p0, Lorg/qtproject/qt/android/QtView;->m_parentWindowReference:J

    .line 236
    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/QtView;->setWindowReference(J)V

    return-void
.end method

.method getParentWindowReference()J
    .registers 3

    .line 181
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_parentWindowReference:J

    return-wide v0
.end method

.method getQtWindow()Lorg/qtproject/qt/android/QtWindow;
    .registers 2

    .line 176
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    return-object v0
.end method

.method getViewInterface()Lorg/qtproject/qt/android/QtEmbeddedViewInterface;
    .registers 2

    .line 201
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    return-object v0
.end method

.method getWindowListener()Lorg/qtproject/qt/android/QtView$QtWindowListener;
    .registers 2

    .line 191
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    return-object v0
.end method

.method getWindowReference()J
    .registers 3

    .line 168
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    return-wide v0
.end method

.method synthetic lambda$addQtWindow$0$org-qtproject-qt-android-QtView(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 4

    .line 219
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    .line 220
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtWindow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/QtView;->addView(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtView;->setWindowVisible(Z)V

    .line 226
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    if-eqz p1, :cond_1c

    .line 227
    invoke-interface {p1}, Lorg/qtproject/qt/android/QtView$QtWindowListener;->onQtWindowLoaded()V

    :cond_1c
    return-void
.end method

.method synthetic lambda$new$0$org-qtproject-qt-android-QtView(Landroid/view/View;IIIIIIII)V
    .registers 13

    .line 0
    move v0, p4

    move p4, p3

    move p3, p2

    .line 56
    iget-wide p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1c

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    sub-int/2addr v0, p3

    sub-int/2addr p5, p4

    if-ne p8, v0, :cond_17

    if-ne p9, p5, :cond_17

    if-ne p3, p6, :cond_17

    if-eq p4, p7, :cond_1c

    :cond_17
    move p6, p5

    move p5, v0

    .line 63
    invoke-static/range {p1 .. p6}, Lorg/qtproject/qt/android/QtView;->resizeWindow(JIIII)V

    :cond_1c
    return-void
.end method

.method loadQtLibraries(Ljava/lang/String;)V
    .registers 4

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->getEmbeddedLoader(Landroid/content/Context;)Lorg/qtproject/qt/android/QtEmbeddedLoader;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_8} :catch_29

    .line 150
    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setMainLibraryName(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->loadQtLibraries()Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    move-result-object p1

    .line 152
    sget-object v1, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    if-ne p1, v1, :cond_1b

    .line 155
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->remove(Landroid/content/Context;)V

    return-void

    .line 158
    :cond_1b
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->getApplicationParameters()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->getMainLibraryPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {p1, v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedViewInterface;->startQtApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_29
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "QtView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->remove(Landroid/content/Context;)V

    return-void
.end method

.method public onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 2

    .line 241
    iget-boolean p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-nez p1, :cond_f

    .line 242
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_f

    .line 244
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 88
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    invoke-interface {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedViewInterface;->addView(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 94
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 95
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->destroyWindow()V

    .line 96
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView;->m_viewInterface:Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    invoke-interface {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedViewInterface;->removeView(Lorg/qtproject/qt/android/QtView;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    .line 101
    iget-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    if-eqz p1, :cond_a

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    .line 102
    invoke-virtual {p1, p2, p2, p4, p5}, Lorg/qtproject/qt/android/QtWindow;->layout(IIII)V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->measureChildren(II)V

    .line 110
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getChildCount()I

    move-result v0

    .line 116
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->measureChildren(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_d
    if-ge v1, v0, :cond_2e

    .line 120
    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2b

    .line 122
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 123
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 128
    :cond_2e
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 131
    invoke-static {v1, p1}, Lorg/qtproject/qt/android/QtView;->resolveSize(II)I

    move-result p1

    .line 132
    invoke-static {v0, p2}, Lorg/qtproject/qt/android/QtView;->resolveSize(II)I

    move-result p2

    .line 131
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtView;->setMeasuredDimension(II)V

    return-void
.end method

.method setParentWindowReference(J)V
    .registers 3

    .line 186
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtView;->m_parentWindowReference:J

    return-void
.end method

.method setQtWindow(Lorg/qtproject/qt/android/QtWindow;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_window:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method

.method setQtWindowListener(Lorg/qtproject/qt/android/QtView$QtWindowListener;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    return-void
.end method

.method setWindowListener(Lorg/qtproject/qt/android/QtView$QtWindowListener;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowListener:Lorg/qtproject/qt/android/QtView$QtWindowListener;

    return-void
.end method

.method setWindowReference(J)V
    .registers 3

    .line 164
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    return-void
.end method

.method setWindowVisible(Z)V
    .registers 6

    .line 207
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtView;->m_windowReference:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 208
    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtView;->setWindowVisible(JZ)V

    :cond_c
    return-void
.end method

###### Class org.qtproject.qt.android.QtView.QtWindowListener (org.qtproject.qt.android.QtView$QtWindowListener)
.class interface abstract Lorg/qtproject/qt/android/QtView$QtWindowListener;
.super Ljava/lang/Object;
.source "QtView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "QtWindowListener"
.end annotation


# virtual methods
.method public abstract onQtWindowLoaded()V
.end method

###### Class org.qtproject.qt.android.QtView$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtView$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtView;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtWindow;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtView;Lorg/qtproject/qt/android/QtWindow;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtView;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;->f$1:Lorg/qtproject/qt/android/QtWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtView;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda0;->f$1:Lorg/qtproject/qt/android/QtWindow;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtView;->lambda$addQtWindow$0$org-qtproject-qt-android-QtView(Lorg/qtproject/qt/android/QtWindow;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtView$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtView$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtView;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtView;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 20

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtView$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/qtproject/qt/android/QtView;->lambda$new$0$org-qtproject-qt-android-QtView(Landroid/view/View;IIIIIIII)V

    return-void
.end method
