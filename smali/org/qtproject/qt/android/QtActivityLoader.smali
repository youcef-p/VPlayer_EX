###### Class org.qtproject.qt.android.QtActivityLoader (org.qtproject.qt.android.QtActivityLoader)
.class Lorg/qtproject/qt/android/QtActivityLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtActivityLoader.java"


# instance fields
.field private final m_activity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 26
    iput-object p1, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    .line 28
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityLoader;->extractContextMetaData(Landroid/content/Context;)V

    return-void
.end method

.method static getActivityLoader(Landroid/app/Activity;)Lorg/qtproject/qt/android/QtActivityLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    sget-object v0, Lorg/qtproject/qt/android/QtActivityLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lorg/qtproject/qt/android/QtActivityLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtActivityLoader;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lorg/qtproject/qt/android/QtActivityLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    .line 34
    :cond_b
    sget-object p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    check-cast p0, Lorg/qtproject/qt/android/QtActivityLoader;

    return-object p0
.end method

.method private getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 40
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private setupStyleExtraction()V
    .registers 5

    .line 62
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 63
    const-string v1, "QT_ANDROID_THEME_DISPLAY_DPI"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "android.app.extract_android_style"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/QtActivityLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    .line 67
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "QT_USE_ANDROID_NATIVE_STYLE"

    invoke-virtual {p0, v3, v2}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2d
    iget-object v2, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-static {v2, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "ANDROID_STYLE_PATH"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected extractContextMetaData(Landroid/content/Context;)V
    .registers 6

    .line 76
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->extractContextMetaData(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QT_USE_ANDROID_NATIVE_DIALOGS"

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->getAppIconSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QT_ANDROID_APP_ICON_SIZE"

    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtActivityLoader;->setupStyleExtraction()V

    .line 83
    iget-object p1, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 84
    const-string v0, "QtLoader"

    if-nez p1, :cond_2d

    .line 85
    const-string p1, "Null Intent from the current Activity."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_2d
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_39

    .line 91
    const-string p1, "Null extras from the Activity\'s intent."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_39
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_98

    .line 99
    const-string v0, "extraenvvars"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariables(Ljava/lang/String;)V

    .line 104
    :cond_58
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_60
    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    const-string v2, "extraenvvars_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 106
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/qtproject/qt/android/QtActivityLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 111
    :cond_84
    const-string v0, "extraappparams"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 112
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtActivityLoader;->getDecodedUtfString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtActivityLoader;->appendApplicationParameters(Ljava/lang/String;)V

    :cond_97
    return-void

    .line 116
    :cond_98
    const-string p1, "Qt JAVA"

    const-string v0, "Not in debug mode! It is not allowed to use extra arguments in non-debug mode."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAppIconSize()I
    .registers 5

    .line 45
    iget-object v0, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/16 v1, 0x200

    const/16 v2, 0x24

    if-lt v0, v2, :cond_16

    if-le v0, v1, :cond_15

    goto :goto_16

    :cond_15
    return v0

    .line 47
    :cond_16
    :goto_16
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    iget-object v3, p0, Lorg/qtproject/qt/android/QtActivityLoader;->m_activity:Landroid/app/Activity;

    invoke-static {v3}, Lorg/qtproject/qt/android/QtDisplayManager;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x3

    if-ge v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    if-le v2, v1, :cond_31

    return v1

    :cond_31
    return v2
.end method
