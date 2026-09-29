###### Class org.qtproject.qt.android.QtNative (org.qtproject.qt.android.QtNative)
.class public Lorg/qtproject/qt/android/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;,
        Lorg/qtproject/qt/android/QtNative$ApplicationState;,
        Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;
    }
.end annotation


# static fields
.field static final QtTAG:Ljava/lang/String; = "Qt JAVA"

.field private static m_activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_appStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_appStateListenersLock:Ljava/lang/Object;

.field private static final m_backgroundActionsTracker:Lorg/qtproject/qt/android/BackgroundActionsTracker;

.field private static m_classLoader:Ljava/lang/ClassLoader;

.field private static final m_mainActivityMutex:Ljava/lang/Object;

.field private static m_qtThread:Lorg/qtproject/qt/android/QtThread;

.field private static final m_qtThreadLock:Ljava/lang/Object;

.field private static m_service:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

.field private static final runPendingCppRunnablesRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    .line 43
    new-instance v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    .line 48
    new-instance v0, Lorg/qtproject/qt/android/BackgroundActionsTracker;

    invoke-direct {v0}, Lorg/qtproject/qt/android/BackgroundActionsTracker;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_backgroundActionsTracker:Lorg/qtproject/qt/android/BackgroundActionsTracker;

    const/4 v0, 0x0

    .line 49
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThreadLock:Ljava/lang/Object;

    .line 51
    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    .line 53
    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activity()Landroid/app/Activity;
    .registers 2

    .line 93
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static checkSelfPermission(Ljava/lang/String;)I
    .registers 4

    .line 374
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 377
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_15
    move-exception p0

    .line 378
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method static classLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 60
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static native fillContextMenu(Landroid/view/Menu;)V
.end method

.method static getContext()Landroid/content/Context;
    .registers 1

    .line 118
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 120
    :cond_f
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->service()Landroid/app/Service;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentMethodNameLog()Ljava/lang/String;
    .registers 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getQtThread()Lorg/qtproject/qt/android/QtThread;
    .registers 2

    .line 207
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 208
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    return-object v0

    .line 210
    :cond_d
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_qtThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_10
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lorg/qtproject/qt/android/QtThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_21

    .line 212
    :cond_1a
    new-instance v1, Lorg/qtproject/qt/android/QtThread;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtThread;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    .line 214
    :cond_21
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_qtThread:Lorg/qtproject/qt/android/QtThread;

    monitor-exit v0

    return-object v1

    :catchall_25
    move-exception v1

    .line 215
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_25

    throw v1
.end method

.method private static getSSLCertificates()[[B
    .registers 9

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    :try_start_5
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 388
    move-object v3, v2

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 390
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_44

    aget-object v5, v1, v4

    .line 391
    instance-of v6, v5, Ljavax/net/ssl/X509TrustManager;

    if-eqz v6, :cond_39

    .line 392
    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 394
    invoke-interface {v5}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_2b
    if-ge v7, v6, :cond_39

    aget-object v8, v5, v7

    .line 395
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    .line 396
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_3c

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :catch_3c
    move-exception v1

    .line 401
    const-string v2, "Qt JAVA"

    const-string v3, "Failed to get certificates"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    :cond_44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    .line 405
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    return-object v0
.end method

.method static getStateDetails()Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
    .registers 1

    .line 239
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    return-object v0
.end method

.method static getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 126
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 8

    .line 139
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_79

    .line 146
    :try_start_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 149
    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5c

    .line 152
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 155
    :goto_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 156
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriPermission;

    invoke-virtual {v2}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 157
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v3

    .line 159
    const-string v4, "r"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 160
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    invoke-virtual {v3}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v3

    .line 162
    :cond_4c
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_54} :catch_5d

    if-eqz v4, :cond_59

    if-eqz v3, :cond_59

    return-object v2

    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_5c
    :goto_5c
    return-object p1

    :catch_5d
    move-exception p0

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Qt JAVA"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :catch_79
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static native initAndroidQpaPlugin()Z
.end method

.method static isActivityValid()Z
    .registers 1

    .line 100
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static isServiceValid()Z
    .registers 1

    .line 113
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$setViewVisibility$0(Landroid/view/View;Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    :cond_4
    const/16 p1, 0x8

    .line 356
    :goto_6
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$startApplication$0()V
    .registers 0

    .line 364
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->initAndroidQpaPlugin()Z

    return-void
.end method

.method static synthetic lambda$startApplication$1(Ljava/lang/String;)V
    .registers 1

    .line 366
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->startQtNativeApplication(Ljava/lang/String;)V

    return-void
.end method

.method private static listAssetContent(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 414
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 416
    array-length v3, v2

    move v4, v1

    :goto_e
    if-ge v4, v3, :cond_5a

    aget-object v5, v2, v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_56

    .line 418
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_4f

    const-string v7, "/"

    if-nez v6, :cond_30

    :try_start_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_31

    :cond_30
    move-object v6, v5

    :goto_31
    invoke-virtual {p0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4b

    .line 419
    array-length v6, v6

    if-lez v6, :cond_4b

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 421
    :cond_4b
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v5

    .line 423
    :try_start_50
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_56

    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :catch_56
    move-exception p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 430
    :cond_5a
    new-array p0, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method static notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 4

    .line 299
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;

    .line 301
    invoke-interface {v2, p0}, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;->onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    goto :goto_9

    .line 302
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method static notifyNativePluginIntegrationReady(Z)V
    .registers 2

    .line 251
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput-boolean p0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    .line 252
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->notifyNativePluginIntegrationReadyChanged(Z)V

    .line 253
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    .line 256
    const-string p0, "QT_ANDROID_BACKGROUND_ACTIONS_QUEUE_SIZE"

    invoke-static {p0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 259
    :try_start_12
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 260
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_backgroundActionsTracker:Lorg/qtproject/qt/android/BackgroundActionsTracker;

    invoke-virtual {v0, p0}, Lorg/qtproject/qt/android/BackgroundActionsTracker;->setMaxAllowedActions(I)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1b} :catch_1c

    return-void

    .line 262
    :catch_1c
    const-string p0, "Qt JAVA"

    const-string v0, "Parsing failed, QT_ANDROID_BACKGROUND_ACTIONS_QUEUE_SIZE value is not an integer"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-void
.end method

.method static notifyNativePluginIntegrationReadyChanged(Z)V
    .registers 4

    .line 292
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;

    .line 294
    invoke-interface {v2, p0}, Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;->onNativePluginIntegrationReadyChanged(Z)V

    goto :goto_9

    .line 295
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method static native onActivityResult(IILandroid/content/Intent;)V
.end method

.method static native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method static native onContextItemSelected(IZ)Z
.end method

.method static native onContextMenuClosed(Landroid/view/Menu;)V
.end method

.method static native onCreateContextMenu(Landroid/view/ContextMenu;)V
.end method

.method public static native onNewIntent(Landroid/content/Intent;)V
.end method

.method static native onOptionsItemSelected(IZ)Z
.end method

.method static native onOptionsMenuClosed(Landroid/view/Menu;)V
.end method

.method static native onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method static openURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 179
    const-string v0, "r"

    invoke-static {p0, p1, v0}, Lorg/qtproject/qt/android/QtNative;->getUriWithValidPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 p1, 0x0

    .line 180
    const-string v0, "Qt JAVA"

    if-nez p0, :cond_26

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "received invalid/null Uri"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 186
    :cond_26
    :try_start_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 189
    invoke-virtual {v1, p0, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :cond_3a
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_46

    .line 193
    const-string p0, "openURL(): The activity reference is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 197
    :cond_46
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_49} :catch_4a

    return v2

    :catch_4a
    move-exception p0

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getCurrentMethodNameLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method static registerAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V
    .registers 4

    .line 279
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 281
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_e
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method static runAction(Ljava/lang/Runnable;)V
    .registers 2

    const/4 v0, 0x1

    .line 309
    invoke-static {p0, v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static runAction(Ljava/lang/Runnable;Z)V
    .registers 5

    .line 314
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 316
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    if-eqz p1, :cond_35

    .line 319
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget v1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    if-eqz v1, :cond_1a

    iget p1, p1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 322
    :goto_1b
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result p1

    if-eqz p1, :cond_23

    if-nez v1, :cond_29

    :cond_23
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isServiceValid()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 323
    :cond_29
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_38

    .line 324
    :cond_2f
    sget-object p1, Lorg/qtproject/qt/android/QtNative;->m_backgroundActionsTracker:Lorg/qtproject/qt/android/BackgroundActionsTracker;

    invoke-virtual {p1, p0}, Lorg/qtproject/qt/android/BackgroundActionsTracker;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_38

    .line 326
    :cond_35
    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    :cond_38
    :goto_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method static native runPendingCppRunnables()V
.end method

.method private static runPendingCppRunnablesOnAndroidThread()V
    .registers 4

    .line 334
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_3
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->isActivityValid()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 336
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget v1, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1e

    .line 337
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_46

    .line 339
    :cond_1e
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    goto :goto_46

    .line 341
    :cond_24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 344
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_46

    .line 346
    :cond_3c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 347
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnablesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    :goto_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method static native sendRequestPermissionsResult(I[I)V
.end method

.method static service()Landroid/app/Service;
    .registers 2

    .line 106
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Service;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return-object v1

    :catchall_11
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method static setActivity(Landroid/app/Activity;)V
    .registers 3

    .line 70
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_activity:Ljava/lang/ref/WeakReference;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 73
    :try_start_a
    sget-object p0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget-boolean p0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz p0, :cond_13

    .line 74
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->updateNativeActivity()Z
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_13} :catch_13
    .catchall {:try_start_a .. :try_end_13} :catchall_15

    .line 80
    :catch_13
    :cond_13
    :try_start_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_15

    throw p0
.end method

.method static setApplicationState(I)V
    .registers 4

    .line 269
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput p0, v1, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    const/4 v2, 0x4

    if-ne p0, v2, :cond_f

    .line 272
    sget-object v2, Lorg/qtproject/qt/android/QtNative;->m_backgroundActionsTracker:Lorg/qtproject/qt/android/BackgroundActionsTracker;

    invoke-virtual {v2}, Lorg/qtproject/qt/android/BackgroundActionsTracker;->processActions()V

    .line 273
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    .line 274
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->updateApplicationState(I)V

    .line 275
    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    return-void

    :catchall_17
    move-exception p0

    .line 273
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method static setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 1

    .line 65
    sput-object p0, Lorg/qtproject/qt/android/QtNative;->m_classLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static setService(Landroid/app/Service;)V
    .registers 3

    .line 85
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_mainActivityMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/qtproject/qt/android/QtNative;->m_service:Ljava/lang/ref/WeakReference;

    .line 87
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method static setStarted(Z)V
    .registers 2

    .line 244
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iput-boolean p0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    .line 245
    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->notifyAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V

    return-void
.end method

.method private static setViewVisibility(Landroid/view/View;Z)V
    .registers 3

    .line 356
    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Z)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method static startApplication(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 361
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_stateDetails:Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;

    iget-boolean v0, v0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    if-eqz v0, :cond_7

    return-void

    .line 364
    :cond_7
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Lorg/qtproject/qt/android/QtThread;->run(Ljava/lang/Runnable;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getQtThread()Lorg/qtproject/qt/android/QtThread;

    move-result-object p1

    new-instance v0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/QtThread;->post(Ljava/lang/Runnable;)V

    .line 367
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->waitForServiceSetup()V

    const/4 p0, 0x1

    .line 368
    invoke-static {p0}, Lorg/qtproject/qt/android/QtNative;->setStarted(Z)V

    return-void
.end method

.method static native startQtNativeApplication(Ljava/lang/String;)V
.end method

.method static native terminateQtNativeApplication()V
.end method

.method static unregisterAppStateListener(Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;)V
    .registers 3

    .line 286
    sget-object v0, Lorg/qtproject/qt/android/QtNative;->m_appStateListenersLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtNative;->m_appStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method static native updateApplicationState(I)V
.end method

.method static native updateLocale()V
.end method

.method static native updateNativeActivity()Z
.end method

.method static native waitForServiceSetup()V
.end method

###### Class org.qtproject.qt.android.QtNative.AppStateDetailsListener (org.qtproject.qt.android.QtNative$AppStateDetailsListener)
.class interface abstract Lorg/qtproject/qt/android/QtNative$AppStateDetailsListener;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AppStateDetailsListener"
.end annotation


# virtual methods
.method public onAppStateDetailsChanged(Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;)V
    .registers 2

    return-void
.end method

.method public onNativePluginIntegrationReadyChanged(Z)V
    .registers 2

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative.ApplicationState (org.qtproject.qt.android.QtNative$ApplicationState)
.class Lorg/qtproject/qt/android/QtNative$ApplicationState;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationState"
.end annotation


# static fields
.field static final ApplicationActive:I = 0x4

.field static final ApplicationHidden:I = 0x1

.field static final ApplicationInactive:I = 0x2

.field static final ApplicationSuspended:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative.ApplicationStateDetails (org.qtproject.qt.android.QtNative$ApplicationStateDetails)
.class Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;
.super Ljava/lang/Object;
.source "QtNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationStateDetails"
.end annotation


# instance fields
.field isStarted:Z

.field nativePluginIntegrationReady:Z

.field state:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->state:I

    .line 233
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->nativePluginIntegrationReady:Z

    .line 234
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtNative$ApplicationStateDetails;->isStarted:Z

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->runPendingCppRunnables()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget-boolean v1, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda1;->f$1:Z

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtNative;->lambda$setViewVisibility$0(Landroid/view/View;Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->lambda$startApplication$0()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtNative$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtNative$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->lambda$startApplication$1(Ljava/lang/String;)V

    return-void
.end method
