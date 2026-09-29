###### Class org.qtproject.qt.android.extras.QtNative (org.qtproject.qt.android.extras.QtNative)
.class Lorg/qtproject/qt/android/extras/QtNative;
.super Ljava/lang/Object;
.source "QtNative.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native onServiceConnected(JLjava/lang/String;Landroid/os/IBinder;)V
.end method

.method static native onServiceDisconnected(JLjava/lang/String;)V
.end method

.method static native onTransact(JILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.end method
