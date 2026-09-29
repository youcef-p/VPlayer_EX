###### Class org.qtproject.qt.android.QtServiceLoader (org.qtproject.qt.android.QtServiceLoader)
.class Lorg/qtproject/qt/android/QtServiceLoader;
.super Lorg/qtproject/qt/android/QtLoader;
.source "QtServiceLoader.java"


# direct methods
.method constructor <init>(Landroid/app/Service;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 14
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtLoader;-><init>(Landroid/content/ContextWrapper;)V

    .line 15
    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtServiceLoader;->extractContextMetaData(Landroid/content/Context;)V

    return-void
.end method

.method static getServiceLoader(Landroid/app/Service;)Lorg/qtproject/qt/android/QtServiceLoader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 19
    sget-object v0, Lorg/qtproject/qt/android/QtServiceLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    if-nez v0, :cond_b

    .line 20
    new-instance v0, Lorg/qtproject/qt/android/QtServiceLoader;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtServiceLoader;-><init>(Landroid/app/Service;)V

    sput-object v0, Lorg/qtproject/qt/android/QtServiceLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    .line 21
    :cond_b
    sget-object p0, Lorg/qtproject/qt/android/QtServiceLoader;->m_instance:Lorg/qtproject/qt/android/QtLoader;

    check-cast p0, Lorg/qtproject/qt/android/QtServiceLoader;

    return-object p0
.end method
