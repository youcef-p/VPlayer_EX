###### Class org.qtproject.qt.android.QtEmbeddedViewInterfaceFactory (org.qtproject.qt.android.QtEmbeddedViewInterfaceFactory)
.class Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;
.super Ljava/lang/Object;
.source "QtEmbeddedViewInterfaceFactory.java"


# static fields
.field private static final m_interfaceLock:Ljava/lang/Object;

.field private static final m_interfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lorg/qtproject/qt/android/QtEmbeddedViewInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaces:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaceLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;)Lorg/qtproject/qt/android/QtEmbeddedViewInterface;
    .registers 5

    .line 17
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 19
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1b

    .line 20
    new-instance v2, Lorg/qtproject/qt/android/QtEmbeddedDelegate;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v2, v3}, Lorg/qtproject/qt/android/QtEmbeddedDelegate;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    .line 21
    :cond_1b
    instance-of v2, p0, Landroid/app/Service;

    if-eqz v2, :cond_2a

    .line 22
    new-instance v2, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;

    move-object v3, p0

    check-cast v3, Landroid/app/Service;

    invoke-direct {v2, v3}, Lorg/qtproject/qt/android/QtServiceEmbeddedDelegate;-><init>(Landroid/app/Service;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_2a
    :goto_2a
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/QtEmbeddedViewInterface;

    monitor-exit v0

    return-object p0

    :catchall_32
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method static remove(Landroid/content/Context;)V
    .registers 3

    .line 30
    sget-object v0, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtEmbeddedViewInterfaceFactory;->m_interfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method
