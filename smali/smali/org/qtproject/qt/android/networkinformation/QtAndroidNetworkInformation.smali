###### Class org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation (org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation)
.class Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.super Ljava/lang/Object;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;,
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;,
        Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "QtAndroidNetworkInformation"

.field private static m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

.field private static final m_lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZZ)V
    .registers 2

    .line 15
    invoke-static {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->genericInfoChanged(ZZ)V

    return-void
.end method

.method static synthetic access$100(I)V
    .registers 1

    .line 15
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->networkConnectivityChanged(I)V

    return-void
.end method

.method static synthetic access$200(I)V
    .registers 1

    .line 15
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->transportMediumChanged(I)V

    return-void
.end method

.method private static native genericInfoChanged(ZZ)V
.end method

.method static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    .line 158
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private static native networkConnectivityChanged(I)V
.end method

.method static registerReceiver(Landroid/content/Context;)V
    .registers 5

    .line 127
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-nez v1, :cond_3c

    .line 129
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 130
    new-instance v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-direct {v1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    .line 131
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 132
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_21

    .line 133
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    :cond_21
    const/16 v2, 0xc

    .line 134
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x15

    .line 136
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x13

    .line 137
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 143
    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-virtual {p0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 145
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method static state()Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .registers 1

    .line 120
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    if-eqz v0, :cond_d

    .line 121
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    iget-object v0, v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0

    .line 122
    :cond_d
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0
.end method

.method private static native transportMediumChanged(I)V
.end method

.method static unregisterReceiver(Landroid/content/Context;)V
    .registers 3

    .line 149
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_lock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    if-eqz v1, :cond_13

    .line 151
    invoke-static {p0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p0, 0x0

    .line 152
    sput-object p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->m_callback:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;

    .line 154
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

###### Class org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation.AndroidConnectivity (org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation$AndroidConnectivity)
.class final enum Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
.super Ljava/lang/Enum;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AndroidConnectivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field public static final enum Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;


# direct methods
.method private static synthetic $values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .registers 3

    .line 26
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    filled-new-array {v0, v1, v2}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 27
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v1, "Connected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v1, "Unknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    const-string v1, "Disconnected"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 26
    invoke-static {}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->$values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 26
    const-class v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;
    .registers 1

    .line 26
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    return-object v0
.end method

###### Class org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation.QtNetworkInformationCallback (org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation$QtNetworkInformationCallback)
.class Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtNetworkInformationCallback"
.end annotation


# instance fields
.field previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

.field previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 44
    iput-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-void
.end method

.method private getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .registers 3

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_a
    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_14
    const/4 v0, 0x2

    .line 79
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 80
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_1e
    const/4 v0, 0x3

    .line 81
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 82
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_28
    const/4 v0, 0x5

    .line 83
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 85
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    :cond_32
    const/4 v0, 0x6

    .line 86
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 88
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1

    .line 93
    :cond_3c
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p1
.end method

.method private setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V
    .registers 3

    .line 97
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    if-eq v0, p1, :cond_d

    .line 98
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousState:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 99
    invoke-virtual {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->ordinal()I

    move-result p1

    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$100(I)V

    :cond_d
    return-void
.end method

.method private setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V
    .registers 3

    .line 104
    iget-object v0, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-eq v0, p1, :cond_d

    .line 105
    iput-object p1, p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->previousTransport:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 106
    invoke-virtual {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->ordinal()I

    move-result p1

    invoke-static {p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$200(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    const/16 p1, 0xc

    .line 52
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 53
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_18

    :cond_b
    const/16 p1, 0x10

    .line 54
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 55
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Connected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    goto :goto_18

    .line 57
    :cond_16
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 59
    :goto_18
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->getTransport(Landroid/net/NetworkCapabilities;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    .line 60
    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    if-ne v0, v1, :cond_22

    .line 61
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    .line 63
    :cond_22
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    .line 64
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setTransportMedium(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;)V

    const/16 p1, 0x11

    .line 67
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    const/16 v0, 0xb

    .line 69
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 70
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;->access$000(ZZ)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    .line 112
    sget-object p1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;->Disconnected:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$QtNetworkInformationCallback;->setState(Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$AndroidConnectivity;)V

    return-void
.end method

###### Class org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation.Transport (org.qtproject.qt.android.networkinformation.QtAndroidNetworkInformation$Transport)
.class final enum Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
.super Ljava/lang/Enum;
.source "QtAndroidNetworkInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Transport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

.field public static final enum WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;


# direct methods
.method private static synthetic $values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .registers 8

    .line 31
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v1, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v2, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v3, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v4, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v5, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v6, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    sget-object v7, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    filled-new-array/range {v0 .. v7}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 32
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Unknown:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 33
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Bluetooth"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Bluetooth:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 34
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Cellular"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Cellular:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 35
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Ethernet"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Ethernet:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 36
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "LoWPAN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->LoWPAN:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 37
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "Usb"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->Usb:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 38
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "WiFi"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFi:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 39
    new-instance v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    const-string v1, "WiFiAware"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->WiFiAware:Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    .line 31
    invoke-static {}, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    const-class v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;
    .registers 1

    .line 31
    sget-object v0, Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->$VALUES:[Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/networkinformation/QtAndroidNetworkInformation$Transport;

    return-object v0
.end method
