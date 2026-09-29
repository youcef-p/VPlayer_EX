###### Class org.qtproject.qt.android.QtLoader (org.qtproject.qt.android.QtLoader)
.class abstract Lorg/qtproject/qt/android/QtLoader;
.super Ljava/lang/Object;
.source "QtLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtLoader$LoadingResult;
    }
.end annotation


# static fields
.field protected static final QtTAG:Ljava/lang/String; = "QtLoader"

.field protected static m_instance:Lorg/qtproject/qt/android/QtLoader;


# instance fields
.field protected m_applicationParameters:Ljava/lang/String;

.field private m_classLoader:Ljava/lang/ClassLoader;

.field protected m_contextInfo:Landroid/content/pm/ComponentInfo;

.field protected final m_environmentVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_extractedNativeLibsDir:Ljava/lang/String;

.field protected m_librariesLoaded:Z

.field protected m_mainLibName:Ljava/lang/String;

.field protected m_mainLibPath:Ljava/lang/String;

.field private final m_packageName:Ljava/lang/String;

.field private final m_preferredAbi:Ljava/lang/String;

.field private final m_resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/ContextWrapper;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_environmentVariables:Ljava/util/HashMap;

    .line 70
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .line 73
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_32

    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_2a

    goto :goto_32

    .line 74
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "QtLoader: Context is not an instance of Activity or Service"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_32
    :goto_32
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->initClassLoader(Landroid/content/Context;)V

    .line 80
    :try_start_35
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->initContextInfo(Landroid/content/Context;)V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_35 .. :try_end_38} :catch_3f

    .line 85
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->resolvePreferredAbi()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    return-void

    :catch_3f
    move-exception p1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "QtLoader: No ComponentInfo found for given Context"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getApkNativeLibrariesDir()Ljava/lang/String;
    .registers 3

    .line 451
    invoke-static {}, Lorg/qtproject/qt/android/QtApkFileEngine;->getAppApkFilePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 454
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 344
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 345
    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 348
    :cond_9
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_19

    .line 352
    :cond_14
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    :goto_19
    return-object v1
.end method

.method private getBundledLibs()[Ljava/lang/String;
    .registers 5

    .line 424
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "bundled_libs"

    const-string v2, "array"

    iget-object v3, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 425
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    const/4 v0, 0x0

    .line 427
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 575
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    invoke-static {}, Lorg/qtproject/qt/android/QtLoader;->isUncompressedNativeLibs()Z

    move-result v2

    const-string v3, ".so"

    if-eqz v2, :cond_35

    .line 580
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 581
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 582
    :cond_31
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 584
    :cond_35
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lib"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 586
    :cond_4e
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_6e
    return-object v0
.end method

.method private getLocalLibrariesList()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    :try_start_5
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v2, "load_local_libs"

    const-string v3, "array"

    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 414
    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_34
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_34} :catch_35

    goto :goto_1f

    :catch_35
    :cond_35
    return-object v0
.end method

.method private getQtLibrariesList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "qt_libs"

    const-string v2, "array"

    iget-object v3, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 373
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_16
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 375
    :catch_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getSystemLibsPrefix()Ljava/lang/String;
    .registers 5

    .line 402
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v1, "system_libs_prefix"

    const-string v2, "string"

    iget-object v3, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 403
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 405
    :catch_13
    const-string v0, ""

    return-object v0
.end method

.method private initClassLoader(Landroid/content/Context;)V
    .registers 6

    .line 204
    const-string v0, "outdex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 206
    new-instance v2, Ldalvik/system/DexClassLoader;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-direct {v2, v1, v0, v3, p1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_classLoader:Ljava/lang/ClassLoader;

    .line 207
    invoke-static {v2}, Lorg/qtproject/qt/android/QtNative;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method private isBackgroundRunningBlocked()Ljava/lang/String;
    .registers 3

    .line 130
    const-string v0, "android.app.background_running"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 132
    const-string v0, "0"

    return-object v0

    .line 133
    :cond_11
    const-string v0, "1"

    return-object v0
.end method

.method private isBundleQtLibs()Z
    .registers 6

    const/4 v0, 0x0

    .line 392
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v2, "bundle_local_qt_libs"

    const-string v3, "string"

    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 393
    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_17} :catch_1b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    return v2

    :catch_1b
    :cond_1b
    return v0
.end method

.method private static isUncompressedNativeLibs()Z
    .registers 3

    .line 436
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 438
    const-string v0, "QtLoader"

    const-string v2, "isUncompressedNativeLibs() called before a valid context was set."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 441
    :cond_f
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    return v1
.end method

.method private loadLibraries(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 624
    :cond_4
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 626
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq p1, v2, :cond_1a

    .line 627
    const-string p1, "QtLoader"

    const-string v1, "Failed to get full paths of libraries."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1a
    const/4 p1, 0x1

    .line 631
    new-array v2, p1, [Z

    aput-boolean p1, v2, v0

    .line 632
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object p1

    new-instance v3, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtLoader;Ljava/util/ArrayList;[Z)V

    invoke-virtual {p1, v3}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 642
    aget-boolean p1, v2, v0

    return p1
.end method

.method private loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 546
    const-string v0, "\'"

    const-string v1, "QtLoader"

    .line 0
    const-string v2, "Can\'t find \'"

    const/4 v3, 0x0

    .line 548
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 550
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 551
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-object p1

    .line 554
    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 557
    :cond_33
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_39
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_7 .. :try_end_36} :catch_37

    return-object p1

    :catch_37
    move-exception v2

    goto :goto_3a

    :catch_39
    move-exception v2

    .line 561
    :goto_3a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Can\'t load \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private loadMainLibrary(Ljava/lang/String;)Z
    .registers 5

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getLibrariesFullPaths(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 604
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v1

    new-instance v2, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtLoader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 610
    iget-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    return p1

    :cond_26
    return v0
.end method

.method private parseNativeLibrariesDir()V
    .registers 8

    .line 292
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    if-nez v0, :cond_6

    goto/16 :goto_cc

    .line 294
    :cond_6
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->isBundleQtLibs()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_42

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 298
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 299
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_ad

    if-eqz v3, :cond_ad

    array-length v2, v3

    if-lez v2, :cond_ad

    .line 300
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    goto :goto_ad

    .line 305
    :cond_42
    const-string v0, "android.app.system_libs_prefix"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getApplicationMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 309
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getSystemLibsPrefix()Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_52
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "QtLoader"

    if-eqz v2, :cond_61

    .line 314
    const-string v0, "Using /system/lib/ as default libraries path. It looks like the app is deployed using Unbundled deployment. It may be necessary to specify the path to the directory where Qt libraries are installed using either android.app.system_libs_prefix metadata variable in your AndroidManifest.xml or QT_ANDROID_SYSTEM_LIBS_PATH in your CMakeLists.txt"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/system/lib/"

    .line 323
    :cond_61
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "System library directory "

    if-eqz v5, :cond_97

    .line 326
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_80

    if-eqz v4, :cond_80

    array-length v2, v4

    if-lez v2, :cond_80

    .line 327
    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    goto :goto_ad

    .line 329
    :cond_80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 331
    :cond_97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_ad
    :goto_ad
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    if-eqz v0, :cond_cc

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cc

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    :cond_cc
    :goto_cc
    return-void
.end method

.method private preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_35

    aget-object v4, p1, v3

    .line 140
    const-string v5, ";"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 142
    array-length v5, v4

    if-ge v5, v6, :cond_19

    goto :goto_32

    .line 146
    :cond_19
    aget-object v5, v4, v2

    iget-object v6, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2d

    goto :goto_32

    .line 149
    :cond_2d
    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_35
    return-object v0
.end method

.method private resolvePreferredAbi()Ljava/lang/String;
    .registers 13

    .line 159
    const-string v0, "]"

    const-string v1, ", "

    const-string v2, "["

    const/4 v3, 0x0

    :try_start_7
    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v5, "qt_libs"

    const-string v6, "array"

    iget-object v7, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 160
    iget-object v5, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 161
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 163
    array-length v6, v4

    move v7, v3

    :goto_20
    if-ge v7, v6, :cond_3b

    aget-object v8, v4, v7

    .line 164
    const-string v9, ";"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 166
    array-length v9, v8

    if-ge v9, v10, :cond_2f

    goto :goto_38

    .line 169
    :cond_2f
    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 173
    :cond_3b
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v4

    .line 174
    sget-object v6, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v3

    :goto_44
    if-ge v9, v7, :cond_5e

    aget-object v10, v6, v9

    .line 175
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4f

    goto :goto_5b

    .line 178
    :cond_4f
    const-string v11, "64"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-ne v11, v4, :cond_58

    return-object v10

    :cond_58
    if-nez v8, :cond_5b

    move-object v8, v10

    :cond_5b
    :goto_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_5e
    if-eqz v8, :cond_61

    return-object v8

    .line 188
    :cond_61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "QtLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No packaged library ABIs "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " match the device ABIs "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", falling back to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_cb} :catch_cb

    .line 194
    :catch_cb
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v3

    return-object v0
.end method

.method private useLocalQtLibs()Z
    .registers 6

    const/4 v0, 0x0

    .line 382
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    const-string v2, "use_local_qt_libs"

    const-string v3, "string"

    iget-object v4, p0, Lorg/qtproject/qt/android/QtLoader;->m_packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 383
    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_17} :catch_1b

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    return v2

    :catch_1b
    :cond_1b
    return v0
.end method


# virtual methods
.method public appendApplicationParameters(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_3d

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3d

    .line 247
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    .line 249
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    :cond_3d
    :goto_3d
    return-void
.end method

.method protected extractContextMetaData(Landroid/content/Context;)V
    .registers 4

    .line 110
    const-string v0, "QT_ANDROID_FONTS"

    const-string v1, "Roboto;Droid Sans;Droid Sans Fallback"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "Droid Sans Mono;Droid Sans;Droid Sans Fallback"

    .line 112
    const-string v1, "QT_ANDROID_FONTS_MONOSPACE"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "QT_ANDROID_FONTS_SERIF"

    const-string v1, "Droid Serif"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMPDIR"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "QT_BLOCK_EVENT_LOOPS_WHEN_SUSPENDED"

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->isBackgroundRunningBlocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "android.app.trace_location"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QTRACE_LOCATION"

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "android.app.arguments"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->appendApplicationParameters(Ljava/lang/String;)V

    .line 120
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_76

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    .line 123
    :goto_5d
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz v0, :cond_76

    if-eqz p1, :cond_76

    .line 124
    const-string v0, "applicationArguments"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->appendApplicationParameters(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method public getApplicationParameters()Ljava/lang/String;
    .registers 2

    .line 235
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_applicationParameters:Ljava/lang/String;

    return-object v0
.end method

.method public getMainLibraryPath()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 359
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 362
    :cond_7
    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1b

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_1b

    .line 366
    :cond_12
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    :goto_1b
    return-object v1
.end method

.method protected initContextInfo(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 94
    instance-of v0, p1, Landroid/app/Activity;

    const/16 v1, 0x80

    if-eqz v0, :cond_17

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 95
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    return-void

    .line 97
    :cond_17
    instance-of v0, p1, Landroid/app/Service;

    if-eqz v0, :cond_2e

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/ComponentName;

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_contextInfo:Landroid/content/pm/ComponentInfo;

    :cond_2e
    return-void
.end method

.method synthetic lambda$loadLibraries$0$org-qtproject-qt-android-QtLoader(Ljava/util/ArrayList;[Z)V
    .registers 6

    .line 0
    const/4 v0, 0x0

    move v1, v0

    .line 633
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 634
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 635
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/QtLoader;->loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 636
    aput-boolean v0, p2, v0

    return-void

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method synthetic lambda$loadMainLibrary$0$org-qtproject-qt-android-QtLoader(Ljava/lang/String;)V
    .registers 3

    .line 605
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtLoader;->loadLibraryHelper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    if-eqz p1, :cond_33

    .line 606
    invoke-static {}, Lorg/qtproject/qt/android/QtLoader;->isUncompressedNativeLibs()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getApkNativeLibrariesDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "lib"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".so"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibPath:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method public loadQtLibraries()Lorg/qtproject/qt/android/QtLoader$LoadingResult;
    .registers 6

    .line 463
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_librariesLoaded:Z

    if-eqz v0, :cond_7

    .line 464
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->AlreadyLoaded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 466
    :cond_7
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->useLocalQtLibs()Z

    move-result v0

    const-string v1, "QtLoader"

    if-nez v0, :cond_17

    .line 467
    const-string v0, "Use local Qt libs is false"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 471
    :cond_17
    invoke-static {}, Lorg/qtproject/qt/android/QtLoader;->isUncompressedNativeLibs()Z

    move-result v0

    const-string v2, "QML_PLUGIN_PATH"

    const-string v3, "QT_PLUGIN_PATH"

    if-eqz v0, :cond_36

    .line 472
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getApkNativeLibrariesDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 474
    const-string v0, "Failed to resolve the APK native libraries directory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 477
    :cond_2f
    invoke-virtual {p0, v3, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0, v2, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 480
    :cond_36
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->parseNativeLibrariesDir()V

    .line 481
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    if-eqz v0, :cond_10b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_45

    goto/16 :goto_10b

    .line 485
    :cond_45
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_extractedNativeLibsDir:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_4f
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getQtLibrariesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getLocalLibrariesList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 493
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v2

    if-eqz v2, :cond_94

    .line 496
    const-string v2, "QT_ANDROID_DEBUGGER_MAIN_THREAD_SLEEP_MS"

    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 498
    :try_start_68
    invoke-static {v2}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_73

    :catch_71
    :cond_71
    const/16 v2, 0xbb8

    :goto_73
    if-lez v2, :cond_94

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sleeping for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms, helping the native debugger to settle. Use the env QT_ANDROID_DEBUGGER_MAIN_THREAD_SLEEP_MS variable to change this value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/qtproject/qt/android/QtThread;->sleep(I)V

    .line 512
    :cond_94
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadLibraries(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 513
    const-string v0, "Loading Qt native libraries failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 518
    :cond_a2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtLoader;->getBundledLibs()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/QtLoader;->preferredAbiLibs([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 519
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadLibraries(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 520
    const-string v0, "Loading Qt bundled libraries failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 524
    :cond_bd
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    if-nez v0, :cond_c9

    .line 525
    const-string v0, "android.app.lib_name"

    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    .line 527
    :cond_c9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    if-eqz v0, :cond_103

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_103

    .line 533
    :cond_d4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader;->m_preferredAbi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;->loadMainLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 534
    const-string v0, "Loading main library failed"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    :cond_fd
    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_librariesLoaded:Z

    .line 538
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 528
    :cond_103
    :goto_103
    const-string v0, "The main library name is null or empty."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0

    .line 482
    :cond_10b
    :goto_10b
    const-string v0, "The native libraries directory is null or empty"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0
.end method

.method public setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    .line 258
    :try_start_1
    invoke-static {p1, p2, v0}, Landroid/system/Os;->setenv(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 259
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader;->m_environmentVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not set environment variable:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QtLoader"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setEnvironmentVariables(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_34

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 275
    :cond_9
    const-string v0, "\t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_34

    aget-object v3, p1, v2

    .line 276
    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 277
    array-length v4, v3

    if-lt v4, v5, :cond_31

    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_29

    goto :goto_31

    .line 280
    :cond_29
    aget-object v4, v3, v1

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {p0, v4, v3}, Lorg/qtproject/qt/android/QtLoader;->setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_34
    :goto_34
    return-void
.end method

.method public setMainLibraryName(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader;->m_mainLibName:Ljava/lang/String;

    return-void
.end method

###### Class org.qtproject.qt.android.QtLoader.LoadingResult (org.qtproject.qt.android.QtLoader$LoadingResult)
.class final enum Lorg/qtproject/qt/android/QtLoader$LoadingResult;
.super Ljava/lang/Enum;
.source "QtLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LoadingResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/QtLoader$LoadingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/QtLoader$LoadingResult;

.field public static final enum AlreadyLoaded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

.field public static final enum Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

.field public static final enum Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;


# direct methods
.method private static synthetic $values()[Lorg/qtproject/qt/android/QtLoader$LoadingResult;
    .registers 3

    .line 59
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    sget-object v1, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->AlreadyLoaded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    sget-object v2, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    filled-new-array {v0, v1, v2}, [Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 59
    new-instance v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    const-string v1, "Succeeded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/QtLoader$LoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Succeeded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    new-instance v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    const-string v1, "AlreadyLoaded"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/QtLoader$LoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->AlreadyLoaded:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    new-instance v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    const-string v1, "Failed"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/QtLoader$LoadingResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->Failed:Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    invoke-static {}, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->$values()[Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->$VALUES:[Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/QtLoader$LoadingResult;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 59
    const-class v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/QtLoader$LoadingResult;
    .registers 1

    .line 59
    sget-object v0, Lorg/qtproject/qt/android/QtLoader$LoadingResult;->$VALUES:[Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/QtLoader$LoadingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/QtLoader$LoadingResult;

    return-object v0
.end method

###### Class org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtLoader;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtLoader;Ljava/util/ArrayList;[Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda0;->f$2:[Z

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtLoader;->lambda$loadLibraries$0$org-qtproject-qt-android-QtLoader(Ljava/util/ArrayList;[Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtLoader$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtLoader;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtLoader;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtLoader;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtLoader$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtLoader;->lambda$loadMainLibrary$0$org-qtproject-qt-android-QtLoader(Ljava/lang/String;)V

    return-void
.end method
