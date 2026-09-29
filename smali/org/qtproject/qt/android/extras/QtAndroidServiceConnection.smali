###### Class org.qtproject.qt.android.extras.QtAndroidServiceConnection (org.qtproject.qt.android.extras.QtAndroidServiceConnection)
.class Lorg/qtproject/qt/android/extras/QtAndroidServiceConnection;
.super Ljava/lang/Object;
.source "QtAndroidServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private m_id:J


# direct methods
.method constructor <init>(J)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidServiceConnection;->m_id:J

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 31
    monitor-enter p0

    .line 32
    :try_start_1
    iget-wide v0, p0, Lorg/qtproject/qt/android/extras/QtAndroidServiceConnection;->m_id:J

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1, p2}, Lorg/qtproject/qt/android/extras/QtNative;->onServiceConnected(JLjava/lang/String;Landroid/os/IBinder;)V

    .line 33
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 39
    monitor-enter p0

    .line 40
    :try_start_1
    iget-wide v0, p0, Lorg/qtproject/qt/android/extras/QtAndroidServiceConnection;->m_id:J

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/extras/QtNative;->onServiceDisconnected(JLjava/lang/String;)V

    .line 41
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method setId(J)V
    .registers 3

    .line 22
    monitor-enter p0

    .line 24
    :try_start_1
    iput-wide p1, p0, Lorg/qtproject/qt/android/extras/QtAndroidServiceConnection;->m_id:J

    .line 25
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw p1
.end method
