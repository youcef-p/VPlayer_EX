###### Class org.qtproject.qt.android.QtAndroidItemModelProxy (org.qtproject.qt.android.QtAndroidItemModelProxy)
.class Lorg/qtproject/qt/android/QtAndroidItemModelProxy;
.super Lorg/qtproject/qt/android/QtAbstractItemModel;
.source "QtAbstractItemModelProxy.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;-><init>()V

    return-void
.end method

.method private native jni_columnCount(Lorg/qtproject/qt/android/QtModelIndex;)I
.end method

.method private native jni_data(Lorg/qtproject/qt/android/QtModelIndex;I)Ljava/lang/Object;
.end method

.method private native jni_index(IILorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;
.end method

.method private native jni_parent(Lorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;
.end method

.method private native jni_rowCount(Lorg/qtproject/qt/android/QtModelIndex;)I
.end method


# virtual methods
.method public columnCount(Lorg/qtproject/qt/android/QtModelIndex;)I
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAndroidItemModelProxy;->jni_columnCount(Lorg/qtproject/qt/android/QtModelIndex;)I

    move-result p1

    return p1
.end method

.method public data(Lorg/qtproject/qt/android/QtModelIndex;I)Ljava/lang/Object;
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/QtAndroidItemModelProxy;->jni_data(Lorg/qtproject/qt/android/QtModelIndex;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public index(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAndroidItemModelProxy;->jni_index(IILorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtModelIndex;

    return-object p1
.end method

.method public parent(Lorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAndroidItemModelProxy;->jni_parent(Lorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtModelIndex;

    return-object p1
.end method

.method public rowCount(Lorg/qtproject/qt/android/QtModelIndex;)I
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtAndroidItemModelProxy;->jni_rowCount(Lorg/qtproject/qt/android/QtModelIndex;)I

    move-result p1

    return p1
.end method
