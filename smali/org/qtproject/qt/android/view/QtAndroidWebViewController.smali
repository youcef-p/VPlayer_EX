###### Class org.qtproject.qt.android.view.QtAndroidWebViewController (org.qtproject.qt.android.view.QtAndroidWebViewController)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;,
        Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QtAndroidWebViewController"


# instance fields
.field private final BLOCKING_TIMEOUT:J

.field private final FINISHED_STATE:I

.field private final INIT_STATE:I

.field private final LOADING_STATE:I

.field private final STARTED_STATE:I

.field private final m_activity:Landroid/app/Activity;

.field private m_errorCode:Ljava/util/OptionalInt;

.field private m_errorString:Ljava/lang/StringBuffer;

.field private volatile m_frameCount:I

.field private m_hasLocationPermission:Z

.field private final m_id:J

.field private volatile m_loadingState:I

.field private volatile m_progress:I

.field private m_webSettingsSetDisplayZoomControls:Ljava/lang/reflect/Method;

.field private m_webView:Landroid/webkit/WebView;

.field private m_webViewEvaluateJavascript:Ljava/lang/reflect/Method;

.field private m_webViewOnPause:Ljava/lang/reflect/Method;

.field private m_webViewOnResume:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .registers 8

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webView:Landroid/webkit/WebView;

    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_errorString:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->INIT_STATE:I

    const/4 v2, 0x1

    .line 44
    iput v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->STARTED_STATE:I

    const/4 v2, 0x2

    .line 45
    iput v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->LOADING_STATE:I

    const/4 v2, 0x3

    .line 46
    iput v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->FINISHED_STATE:I

    .line 48
    iput v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_loadingState:I

    .line 49
    iput v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    .line 50
    iput v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_frameCount:I

    .line 53
    iput-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnResume:Ljava/lang/reflect/Method;

    .line 54
    iput-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnPause:Ljava/lang/reflect/Method;

    .line 55
    iput-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webSettingsSetDisplayZoomControls:Ljava/lang/reflect/Method;

    .line 58
    iput-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewEvaluateJavascript:Ljava/lang/reflect/Method;

    const-wide/16 v2, 0xfa

    .line 75
    iput-wide v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->BLOCKING_TIMEOUT:J

    .line 203
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    .line 204
    iput-wide p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_id:J

    .line 205
    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 206
    new-instance p3, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;

    invoke-direct {p3, p0, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    :try_start_3c
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic access$002(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I
    .registers 2

    .line 34
    iput p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_frameCount:I

    return p1
.end method

.method static synthetic access$004(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)I
    .registers 2

    .line 34
    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_frameCount:I

    return v0
.end method

.method static synthetic access$1000(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLandroid/graphics/Bitmap;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onReceivedIcon(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$102(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I
    .registers 2

    .line 34
    iput p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_loadingState:I

    return p1
.end method

.method static synthetic access$1100(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onReceivedTitle(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_hasLocationPermission:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_hasLocationPermission:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/app/Activity;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/view/View;)Z
    .registers 1

    .line 34
    invoke-static {p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->hasLocationPermission(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnResume:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1602(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnResume:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnPause:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnPause:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webSettingsSetDisplayZoomControls:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webSettingsSetDisplayZoomControls:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewEvaluateJavascript:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewEvaluateJavascript:Ljava/lang/reflect/Method;

    return-object p1
.end method

.method static synthetic access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_errorString:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JJLjava/lang/String;)V
    .registers 6

    .line 34
    invoke-direct/range {p0 .. p5}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onRunJavaScriptResult(JJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(JZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onCookieAdded(JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 34
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->hasValidCookie(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(JZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 34
    invoke-static {p0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onCookieRemoved(JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/util/OptionalInt;
    .registers 1

    .line 34
    iget-object p0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_errorCode:Ljava/util/OptionalInt;

    return-object p0
.end method

.method static synthetic access$302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_errorCode:Ljava/util/OptionalInt;

    return-object p1
.end method

.method static synthetic access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 34
    invoke-direct/range {p0 .. p5}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onReceivedError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onPageFinished(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onPageStarted(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$802(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I
    .registers 2

    .line 34
    iput p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    return p1
.end method

.method static synthetic access$900(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JI)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->c_onProgressChanged(JI)V

    return-void
.end method

.method private static native c_onCookieAdded(JZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native c_onCookieRemoved(JZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native c_onPageFinished(JLjava/lang/String;)V
.end method

.method private native c_onPageStarted(JLjava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method private native c_onProgressChanged(JI)V
.end method

.method private native c_onReceivedError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native c_onReceivedIcon(JLandroid/graphics/Bitmap;)V
.end method

.method private native c_onReceivedTitle(JLjava/lang/String;)V
.end method

.method private native c_onRunJavaScriptResult(JJLjava/lang/String;)V
.end method

.method private static getExpireString()Ljava/lang/String;
    .registers 1

    .line 703
    const-string v0, "expires=\"Thu, 1 Jan 1970 00:00:00 GMT\""

    return-object v0
.end method

.method private static hasLocationPermission(Landroid/view/View;)Z
    .registers 3

    .line 637
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 639
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static hasValidCookie(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 680
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 683
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 687
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 688
    array-length v1, p0

    move v2, v0

    :goto_13
    if-ge v2, v1, :cond_29

    aget-object v3, p0, v2

    .line 689
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 692
    const-string p0, "="

    invoke-virtual {v3, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_29
    return v0
.end method

.method static removeCookie(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 710
    invoke-static {p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->hasValidCookie(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->getExpireString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 714
    new-instance v0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;

    move-wide v4, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;-><init>(ZLjava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2, v6, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setCookieImp(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2c
    return-void
.end method

.method static removeCookies()V
    .registers 2

    .line 731
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private resetLoadingState(I)V
    .registers 3

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    .line 80
    iput v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_frameCount:I

    .line 81
    iput p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_loadingState:I

    return-void
.end method

.method static setCookie(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 666
    new-instance v0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setCookieImp(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static setCookieImp(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 654
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 655
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 658
    :try_start_8
    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 660
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method canGoBack()Z
    .registers 7

    const/4 v0, 0x1

    .line 496
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 497
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 498
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;

    invoke-direct {v4, p0, v0, v2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 504
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v2

    .line 506
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    :goto_21
    aget-boolean v0, v0, v1

    return v0
.end method

.method canGoForward()Z
    .registers 7

    const/4 v0, 0x1

    .line 522
    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 523
    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 524
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;

    invoke-direct {v4, p0, v0, v2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v2

    .line 532
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    :goto_21
    aget-boolean v0, v0, v1

    return v0
.end method

.method destroy()V
    .registers 3

    .line 644
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$26;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$26;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method getProgress()I
    .registers 2

    .line 574
    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    .line 556
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 557
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 558
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;

    invoke-direct {v4, p0, v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    :try_start_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 566
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    :goto_23
    aget-object v0, v0, v2

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    .line 425
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 426
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 427
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;

    invoke-direct {v4, p0, v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 437
    :try_start_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    :goto_23
    aget-object v0, v0, v2

    return-object v0
.end method

.method getUserAgent()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x1

    .line 386
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 387
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 388
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;

    invoke-direct {v4, p0, v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 397
    :try_start_17
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    :goto_23
    aget-object v0, v0, v2

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 610
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method goBack()V
    .registers 3

    .line 488
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$16;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$16;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method goForward()V
    .registers 3

    .line 514
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$18;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$18;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method isAllowFileAccessEnabled()Z
    .registers 7

    const/4 v0, 0x1

    .line 364
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 365
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 366
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;

    invoke-direct {v4, p0, v1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    :goto_21
    aget-boolean v0, v1, v2

    return v0
.end method

.method isAllowFileAccessFromFileURLsEnabled()Z
    .registers 7

    const/4 v0, 0x1

    .line 331
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 332
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 333
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;

    invoke-direct {v4, p0, v1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 343
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    :goto_21
    aget-boolean v0, v1, v2

    return v0
.end method

.method isJavaScriptEnabled()Z
    .registers 7

    const/4 v0, 0x1

    .line 298
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 299
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 300
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;

    invoke-direct {v4, p0, v1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    :goto_21
    aget-boolean v0, v1, v2

    return v0
.end method

.method isLoading()Z
    .registers 4

    .line 579
    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_loadingState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_loadingState:I

    if-eq v0, v2, :cond_17

    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    if-lez v0, :cond_15

    iget v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_progress:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    return v2
.end method

.method isLocalStorageEnabled()Z
    .registers 7

    const/4 v0, 0x1

    .line 265
    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 266
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 267
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v4, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;

    invoke-direct {v4, p0, v1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    :try_start_15
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 282
    :goto_21
    aget-boolean v0, v1, v2

    return v0
.end method

.method loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 463
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->resetLoadingState(I)V

    .line 464
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 479
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->resetLoadingState(I)V

    .line 480
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 451
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->resetLoadingState(I)V

    .line 452
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPause()V
    .registers 3

    .line 615
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnPause:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    return-void

    .line 618
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onResume()V
    .registers 3

    .line 626
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewOnResume:Ljava/lang/reflect/Method;

    if-nez v0, :cond_5

    return-void

    .line 629
    :cond_5
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method reload()V
    .registers 3

    .line 548
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$21;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$21;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method runJavaScript(Ljava/lang/String;J)V
    .registers 6

    if-nez p1, :cond_3

    goto :goto_7

    .line 587
    :cond_3
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_webViewEvaluateJavascript:Ljava/lang/reflect/Method;

    if-nez v0, :cond_8

    :goto_7
    return-void

    .line 590
    :cond_8
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setAllowFileAccess(Z)V
    .registers 4

    .line 353
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setAllowFileAccessFromFileURLs(Z)V
    .registers 4

    .line 320
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setJavaScriptEnabled(Z)V
    .registers 4

    .line 287
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setLocalStorageEnabled(Z)V
    .registers 4

    .line 254
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;

    invoke-direct {v1, p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setUserAgent(Ljava/lang/String;)V
    .registers 5

    .line 407
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 408
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v2, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;

    invoke-direct {v2, p0, p1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 417
    :try_start_10
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method stopLoading()V
    .registers 3

    .line 540
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$20;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$20;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass1 (org.qtproject.qt.android.view.QtAndroidWebViewController$1)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;-><init>(Landroid/app/Activity;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/concurrent/Semaphore;)V
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

    .line 206
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 209
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 210
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1500(Landroid/view/View;)Z

    move-result v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1202(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)Z

    .line 211
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 219
    :try_start_2c
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "onResume"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1602(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 220
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "onPause"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1702(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 221
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setDisplayZoomControls"

    new-array v6, v1, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1802(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    .line 223
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "evaluateJavascript"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Landroid/webkit/ValueCallback;

    aput-object v7, v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1902(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception v3

    .line 227
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    :goto_8e
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 234
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1800(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_b8

    .line 235
    :try_start_a2
    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1800(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b3} :catch_b4

    goto :goto_b8

    :catch_b4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_b8
    :goto_b8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 238
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 239
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 240
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$1;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass10 (org.qtproject.qt.android.view.QtAndroidWebViewController$10)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->getUserAgent()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;

.field final synthetic val$ua:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->val$ua:[Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 391
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->val$ua:[Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 392
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$10;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass11 (org.qtproject.qt.android.view.QtAndroidWebViewController$11)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setUserAgent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;

.field final synthetic val$uaString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->val$uaString:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 411
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->val$uaString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$11;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass12 (org.qtproject.qt.android.view.QtAndroidWebViewController$12)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->getUrl()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;

.field final synthetic val$url:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 427
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->val$url:[Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 430
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 431
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->val$url:[Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 432
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$12;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass13 (org.qtproject.qt.android.view.QtAndroidWebViewController$13)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;)V
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

    .line 452
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 454
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$13;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass14 (org.qtproject.qt.android.view.QtAndroidWebViewController$14)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 464
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$encoding:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 466
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$data:Ljava/lang/String;

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$mimeType:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$14;->val$encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass15 (org.qtproject.qt.android.view.QtAndroidWebViewController$15)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$historyUrl:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 480
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$data:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$mimeType:Ljava/lang/String;

    iput-object p5, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$encoding:Ljava/lang/String;

    iput-object p6, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$historyUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 482
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$data:Ljava/lang/String;

    iget-object v4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$mimeType:Ljava/lang/String;

    iget-object v5, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$encoding:Ljava/lang/String;

    iget-object v6, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$15;->val$historyUrl:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass16 (org.qtproject.qt.android.view.QtAndroidWebViewController$16)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$16;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->goBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$16;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 490
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$16;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass17 (org.qtproject.qt.android.view.QtAndroidWebViewController$17)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->canGoBack()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$back:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 498
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->val$back:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 500
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->val$back:[Z

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$17;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass18 (org.qtproject.qt.android.view.QtAndroidWebViewController$18)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$18;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->goForward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$18;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 516
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$18;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass19 (org.qtproject.qt.android.view.QtAndroidWebViewController$19)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->canGoForward()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$forward:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->val$forward:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 526
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->val$forward:[Z

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$19;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass2 (org.qtproject.qt.android.view.QtAndroidWebViewController$2)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setLocalStorageEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V
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

    .line 254
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 257
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 258
    iget-boolean v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass20 (org.qtproject.qt.android.view.QtAndroidWebViewController$20)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$20;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->stopLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 540
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$20;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 542
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$20;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass21 (org.qtproject.qt.android.view.QtAndroidWebViewController$21)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$21;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->reload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 548
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$21;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 550
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$21;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass22 (org.qtproject.qt.android.view.QtAndroidWebViewController$22)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->getTitle()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;

.field final synthetic val$title:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[Ljava/lang/String;Ljava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 558
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->val$title:[Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 560
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->val$title:[Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$22;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass23 (org.qtproject.qt.android.view.QtAndroidWebViewController$23)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->runJavaScript(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$callbackId:J

.field final synthetic val$script:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->val$script:Ljava/lang/String;

    iput-wide p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->val$callbackId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 594
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1900(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->val$script:Ljava/lang/String;

    iget-wide v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->val$callbackId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    const/4 v3, 0x0

    goto :goto_1d

    .line 595
    :cond_18
    new-instance v3, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;

    invoke-direct {v3, p0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;-><init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;)V

    :goto_1d
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 594
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass23.AnonymousClass1 (org.qtproject.qt.android.view.QtAndroidWebViewController$23$1)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;->this$1:Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 595
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .registers 9

    .line 598
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;->this$1:Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;

    iget-object v1, v0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;->this$1:Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;

    iget-object v0, v0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23$1;->this$1:Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;

    iget-wide v4, v0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$23;->val$callbackId:J

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$2000(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JJLjava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass24 (org.qtproject.qt.android.view.QtAndroidWebViewController$24)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 618
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 620
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1700(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$24;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass25 (org.qtproject.qt.android.view.QtAndroidWebViewController$25)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 629
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 631
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1600(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$25;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass26 (org.qtproject.qt.android.view.QtAndroidWebViewController$26)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$26;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$26;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 647
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$26;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass27 (org.qtproject.qt.android.view.QtAndroidWebViewController$27)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setCookie(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cookieString:Ljava/lang/String;

.field final synthetic val$id:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 666
    iput-wide p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$id:J

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$cookieString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .registers 7

    .line 670
    :try_start_0
    iget-wide v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$id:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->val$cookieString:Ljava/lang/String;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v0, v1, p1, v2, v3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$2100(JZLjava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p1

    .line 672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 666
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$27;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass28 (org.qtproject.qt.android.view.QtAndroidWebViewController$28)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->removeCookie(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cookieString:Ljava/lang/String;

.field final synthetic val$hadCookie:Z

.field final synthetic val$id:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 714
    iput-boolean p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$hadCookie:Z

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$cookieString:Ljava/lang/String;

    iput-wide p4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .registers 8

    .line 719
    :try_start_0
    iget-boolean p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$hadCookie:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$cookieString:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$2200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    move p1, v0

    .line 720
    :goto_12
    iget-wide v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$id:J

    iget-object v3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->val$cookieString:Ljava/lang/String;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v0

    invoke-static {v1, v2, p1, v3, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$2300(JZLjava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception p1

    .line 722
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 714
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$28;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass3 (org.qtproject.qt.android.view.QtAndroidWebViewController$3)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->isLocalStorageEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->val$enabled:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 270
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->val$enabled:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getDomStorageEnabled()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 272
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$3;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass4 (org.qtproject.qt.android.view.QtAndroidWebViewController$4)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setJavaScriptEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V
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

    .line 287
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 290
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 291
    iget-boolean v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass5 (org.qtproject.qt.android.view.QtAndroidWebViewController$5)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->isJavaScriptEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->val$enabled:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 303
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->val$enabled:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 305
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$5;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass6 (org.qtproject.qt.android.view.QtAndroidWebViewController$6)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setAllowFileAccessFromFileURLs(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V
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

    .line 320
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 323
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 324
    iget-boolean v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$6;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass7 (org.qtproject.qt.android.view.QtAndroidWebViewController$7)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->isAllowFileAccessFromFileURLsEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 333
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->val$enabled:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 336
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->val$enabled:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccessFromFileURLs()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 338
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$7;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass8 (org.qtproject.qt.android.view.QtAndroidWebViewController$8)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->setAllowFileAccess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Z)V
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

    .line 353
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-boolean p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 356
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 357
    iget-boolean v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$8;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.AnonymousClass9 (org.qtproject.qt.android.view.QtAndroidWebViewController$9)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;
.super Ljava/lang/Object;
.source "QtAndroidWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->isAllowFileAccessEnabled()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

.field final synthetic val$enabled:[Z

.field final synthetic val$sem:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;[ZLjava/util/concurrent/Semaphore;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    iput-object p2, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->val$enabled:[Z

    iput-object p3, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 369
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->val$enabled:[Z

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 371
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$9;->val$sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.QtAndroidWebChromeClient (org.qtproject.qt.android.view.QtAndroidWebViewController$QtAndroidWebChromeClient)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "QtAndroidWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QtAndroidWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .line 197
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .line 175
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 176
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$802(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I

    .line 177
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$900(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JI)V

    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 183
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 184
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1000(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 190
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebChromeClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$1100(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;)V

    return-void
.end method

###### Class org.qtproject.qt.android.view.QtAndroidWebViewController.QtAndroidWebViewClient (org.qtproject.qt.android.view.QtAndroidWebViewController$QtAndroidWebViewClient)
.class Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "QtAndroidWebViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/view/QtAndroidWebViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QtAndroidWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 110
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10

    .line 116
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$002(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I

    .line 118
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$102(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I

    .line 119
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-eqz p1, :cond_58

    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/util/OptionalInt;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_58

    .line 121
    iget-object v1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v2

    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$300(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/util/OptionalInt;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v4

    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$500(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JILjava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 123
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    return-void

    :cond_58
    move-object v6, p2

    .line 125
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, v6}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$600(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 133
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$004(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 134
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$102(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;I)I

    .line 135
    iget-object p1, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {p1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$400(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2, p3}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$700(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;JLjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    .line 144
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 146
    :cond_7
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 147
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 6

    .line 160
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 162
    :cond_7
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 163
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-static {v0}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$200(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    iget-object v0, p0, Lorg/qtproject/qt/android/view/QtAndroidWebViewController$QtAndroidWebViewClient;->this$0:Lorg/qtproject/qt/android/view/QtAndroidWebViewController;

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/util/OptionalInt;->of(I)Ljava/util/OptionalInt;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/view/QtAndroidWebViewController;->access$302(Lorg/qtproject/qt/android/view/QtAndroidWebViewController;Ljava/util/OptionalInt;)Ljava/util/OptionalInt;

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 6

    .line 92
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 97
    :cond_10
    :try_start_10
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_22} :catch_24

    const/4 p1, 0x1

    return p1

    :catch_24
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
