###### Class org.qtproject.qt.android.network.QtNetwork (org.qtproject.qt.android.network.QtNetwork)
.class Lorg/qtproject/qt/android/network/QtNetwork;
.super Ljava/lang/Object;
.source "QtNetwork.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtNetwork"

.field private static final m_lock:Ljava/lang/Object;

.field private static m_proxyInfo:Landroid/net/ProxyInfo;

.field private static m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .registers 1

    .line 14
    sput-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    .line 55
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static getProxyInfo(Landroid/content/Context;)Landroid/net/ProxyInfo;
    .registers 2

    .line 60
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    if-nez v0, :cond_e

    .line 61
    invoke-static {p0}, Lorg/qtproject/qt/android/network/QtNetwork;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    sput-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    .line 62
    :cond_e
    sget-object p0, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyInfo:Landroid/net/ProxyInfo;

    return-object p0
.end method

.method static registerReceiver(Landroid/content/Context;)V
    .registers 4

    .line 34
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    if-nez v1, :cond_1b

    .line 36
    new-instance v1, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;-><init>(Lorg/qtproject/qt/android/network/QtNetwork$1;)V

    sput-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    .line 37
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    sget-object v2, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method static unregisterReceiver(Landroid/content/Context;)V
    .registers 3

    .line 45
    sget-object v0, Lorg/qtproject/qt/android/network/QtNetwork;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/network/QtNetwork;->m_proxyReceiver:Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;

    if-nez v1, :cond_9

    .line 47
    monitor-exit v0

    return-void

    .line 49
    :cond_9
    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 50
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

###### Class org.qtproject.qt.android.network.QtNetwork.AnonymousClass1 (org.qtproject.qt.android.network.QtNetwork$1)
.class synthetic Lorg/qtproject/qt/android/network/QtNetwork$1;
.super Ljava/lang/Object;
.source "QtNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/network/QtNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class org.qtproject.qt.android.network.QtNetwork.ProxyReceiver (org.qtproject.qt.android.network.QtNetwork$ProxyReceiver)
.class Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QtNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/network/QtNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/qtproject/qt/android/network/QtNetwork$1;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lorg/qtproject/qt/android/network/QtNetwork$ProxyReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const/4 p1, 0x0

    .line 26
    invoke-static {p1}, Lorg/qtproject/qt/android/network/QtNetwork;->access$002(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    return-void
.end method
