###### Class org.qtproject.qt.android.QtAbstractListModel (org.qtproject.qt.android.QtAbstractListModel)
.class public abstract Lorg/qtproject/qt/android/QtAbstractListModel;
.super Lorg/qtproject/qt/android/QtAbstractItemModel;
.source "QtAbstractListModel.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final columnCount(Lorg/qtproject/qt/android/QtModelIndex;)I
    .registers 2

    .line 10
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtModelIndex;->isValid()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final hasChildren(Lorg/qtproject/qt/android/QtModelIndex;)Z
    .registers 2

    .line 21
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtModelIndex;->isValid()Z

    move-result p1

    if-nez p1, :cond_13

    new-instance p1, Lorg/qtproject/qt/android/QtModelIndex;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtModelIndex;-><init>()V

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/QtAbstractListModel;->rowCount(Lorg/qtproject/qt/android/QtModelIndex;)I

    move-result p1

    if-lez p1, :cond_13

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public index(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 6

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractListModel;->hasIndex(IILorg/qtproject/qt/android/QtModelIndex;)Z

    move-result p3

    if-eqz p3, :cond_d

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/qtproject/qt/android/QtAbstractListModel;->createIndex(IIJ)Lorg/qtproject/qt/android/QtModelIndex;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Lorg/qtproject/qt/android/QtModelIndex;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtModelIndex;-><init>()V

    return-object p1
.end method

.method public final parent(Lorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 2

    .line 17
    new-instance p1, Lorg/qtproject/qt/android/QtModelIndex;

    invoke-direct {p1}, Lorg/qtproject/qt/android/QtModelIndex;-><init>()V

    return-object p1
.end method

.method public sibling(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 4

    .line 26
    new-instance p3, Lorg/qtproject/qt/android/QtModelIndex;

    invoke-direct {p3}, Lorg/qtproject/qt/android/QtModelIndex;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractListModel;->index(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;

    move-result-object p1

    return-object p1
.end method
