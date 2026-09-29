###### Class org.qtproject.qt.android.QtEmbeddedLoader (org.qtproject.qt.android.QtEmbeddedLoader)
.class Lorg/qtproject/qt/android/QtEmbeddedLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtEmbeddedLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtEmbeddedLoader"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 13
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 16
    const-string v1, "QT_ANDROID_THEME_DISPLAY_DPI"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "minimal"

    invoke-static {p1, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 18
    const-string v1, "ANDROID_STYLE_PATH"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QT_ANDROID_NO_EXIT_CALL"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtEmbeddedLoader;->extractContextMetaData(Landroid/content/Context;)V

    return-void
.end method

.method static getEmbeddedLoader(Landroid/content/Context;)Lorg/qtproject/qt/android/QtEmbeddedLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 25
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lorg/qtproject/qt/android/QtEmbeddedLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtEmbeddedLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    .line 27
    :cond_b
    sget-object p0, Lorg/qtproject/qt/android/QtEmbeddedLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    check-cast p0, Lorg/qtproject/qt/android/QtEmbeddedLoader;

    return-object p0
.end method
