###### Class org.qtproject.qt.android.extras.QtAndroidBinder (org.qtproject.qt.android.extras.QtAndroidBinder)
.class Lorg/qtproject/qt/android/extras/QtAndroidBinder;
.super Landroid/os/Binder;
.source "QtAndroidBinder.java"


# instance fields
.field private m_id:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11

    .line 29
    monitor-enter p0

    .line 31
    :try_start_1
    iget-wide v0, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/qtproject/qt/android/extras/QtNative;->onTransact(JILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_d
    move-exception v0

    move-object p1, v0

    .line 32
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_d

    throw p1
.end method

.method setId(J)V
    .registers 3

    .line 21
    monitor-enter p0

    .line 23
    :try_start_1
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidBinder;->m_id:J

    .line 24
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
