###### Class org.qtproject.qt.android.QtAbstractItemModel (org.qtproject.qt.android.QtAbstractItemModel)
.class public abstract Lorg/qtproject/qt/android/QtAbstractItemModel;
.super Ljava/lang/Object;
.source "QtAbstractItemModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;
    }
.end annotation


# instance fields
.field private m_OnDataChangedListener:Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;

.field private m_nativeReference:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 560
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_nativeReference:J

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_nativeReference:J

    return-void
.end method

.method private detachFromNative()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 563
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_nativeReference:J

    return-void
.end method

.method private handleDataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
    .registers 5

    .line 528
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_OnDataChangedListener:Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;

    if-eqz v0, :cond_c

    .line 529
    new-instance v0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtAbstractItemModel;Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method private static instanceOf(Ljava/lang/Object;)Z
    .registers 1

    .line 567
    instance-of p0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;

    return p0
.end method

.method private native jni_beginInsertColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V
.end method

.method private native jni_beginInsertRows(Lorg/qtproject/qt/android/QtModelIndex;II)V
.end method

.method private native jni_beginMoveColumns(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z
.end method

.method private native jni_beginMoveRows(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z
.end method

.method private native jni_beginRemoveColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V
.end method

.method private native jni_beginRemoveRows(Lorg/qtproject/qt/android/QtModelIndex;II)V
.end method

.method private native jni_beginResetModel()V
.end method

.method private native jni_createIndex(IIJ)Ljava/lang/Object;
.end method

.method private native jni_dataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
.end method

.method private native jni_endInsertColumns()V
.end method

.method private native jni_endInsertRows()V
.end method

.method private native jni_endMoveColumns()V
.end method

.method private native jni_endMoveRows()V
.end method

.method private native jni_endRemoveColumns()V
.end method

.method private native jni_endRemoveRows()V
.end method

.method private native jni_endResetModel()V
.end method

.method private native jni_roleNames()Ljava/lang/Object;
.end method

.method private native jni_setData(Lorg/qtproject/qt/android/QtModelIndex;Ljava/lang/Object;I)Z
.end method

.method private native jni_sibling(IILorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;
.end method

.method private nativeReference()J
    .registers 3

    .line 565
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_nativeReference:J

    return-wide v0
.end method

.method private setNativeReference(J)V
    .registers 3

    .line 566
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_nativeReference:J

    return-void
.end method


# virtual methods
.method protected final beginInsertColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V
    .registers 4

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginInsertColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V

    return-void
.end method

.method protected final beginInsertRows(Lorg/qtproject/qt/android/QtModelIndex;II)V
    .registers 4

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginInsertRows(Lorg/qtproject/qt/android/QtModelIndex;II)V

    return-void
.end method

.method protected final beginMoveColumns(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z
    .registers 6

    .line 348
    invoke-direct/range {p0 .. p5}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginMoveColumns(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z

    move-result p1

    return p1
.end method

.method protected final beginMoveRows(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z
    .registers 6

    .line 388
    invoke-direct/range {p0 .. p5}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginMoveRows(Lorg/qtproject/qt/android/QtModelIndex;IILorg/qtproject/qt/android/QtModelIndex;I)Z

    move-result p1

    return p1
.end method

.method protected final beginRemoveColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V
    .registers 4

    .line 406
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginRemoveColumns(Lorg/qtproject/qt/android/QtModelIndex;II)V

    return-void
.end method

.method protected final beginRemoveRows(Lorg/qtproject/qt/android/QtModelIndex;II)V
    .registers 4

    .line 422
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginRemoveRows(Lorg/qtproject/qt/android/QtModelIndex;II)V

    return-void
.end method

.method protected final beginResetModel()V
    .registers 1

    .line 446
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_beginResetModel()V

    return-void
.end method

.method public native canFetchMore(Lorg/qtproject/qt/android/QtModelIndex;)Z
.end method

.method public abstract columnCount(Lorg/qtproject/qt/android/QtModelIndex;)I
.end method

.method protected final createIndex(IIJ)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 5

    .line 457
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_createIndex(IIJ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtModelIndex;

    return-object p1
.end method

.method public abstract data(Lorg/qtproject/qt/android/QtModelIndex;I)Ljava/lang/Object;
.end method

.method public dataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
    .registers 4

    .line 264
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_dataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V

    return-void
.end method

.method protected final endInsertColumns()V
    .registers 1

    .line 468
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endInsertColumns()V

    return-void
.end method

.method protected final endInsertRows()V
    .registers 1

    .line 477
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endInsertRows()V

    return-void
.end method

.method protected final endMoveColumns()V
    .registers 1

    .line 487
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endMoveColumns()V

    return-void
.end method

.method protected final endMoveRows()V
    .registers 1

    .line 497
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endMoveRows()V

    return-void
.end method

.method protected final endRemoveColumns()V
    .registers 1

    .line 506
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endRemoveColumns()V

    return-void
.end method

.method protected final endRemoveRows()V
    .registers 1

    .line 516
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endRemoveRows()V

    return-void
.end method

.method protected final endResetModel()V
    .registers 1

    .line 524
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_endResetModel()V

    return-void
.end method

.method public native fetchMore(Lorg/qtproject/qt/android/QtModelIndex;)V
.end method

.method public native hasChildren(Lorg/qtproject/qt/android/QtModelIndex;)Z
.end method

.method public native hasIndex(IILorg/qtproject/qt/android/QtModelIndex;)Z
.end method

.method public abstract index(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
.end method

.method synthetic lambda$handleDataChanged$0$org-qtproject-qt-android-QtAbstractItemModel(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
    .registers 5

    .line 530
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_OnDataChangedListener:Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;

    if-eqz v0, :cond_7

    .line 531
    invoke-interface {v0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;->onDataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V

    :cond_7
    return-void
.end method

.method public abstract parent(Lorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
.end method

.method public roleNames()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_roleNames()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract rowCount(Lorg/qtproject/qt/android/QtModelIndex;)I
.end method

.method public setData(Lorg/qtproject/qt/android/QtModelIndex;Ljava/lang/Object;I)Z
    .registers 4

    .line 241
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_setData(Lorg/qtproject/qt/android/QtModelIndex;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public setOnDataChangedListener(Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lorg/qtproject/qt/android/QtAbstractItemModel;->m_OnDataChangedListener:Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;

    return-void
.end method

.method public sibling(IILorg/qtproject/qt/android/QtModelIndex;)Lorg/qtproject/qt/android/QtModelIndex;
    .registers 4

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->jni_sibling(IILorg/qtproject/qt/android/QtModelIndex;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/qtproject/qt/android/QtModelIndex;

    return-object p1
.end method

###### Class org.qtproject.qt.android.QtAbstractItemModel.OnDataChangedListener (org.qtproject.qt.android.QtAbstractItemModel$OnDataChangedListener)
.class public interface abstract Lorg/qtproject/qt/android/QtAbstractItemModel$OnDataChangedListener;
.super Ljava/lang/Object;
.source "QtAbstractItemModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtAbstractItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataChangedListener"
.end annotation


# virtual methods
.method public abstract onDataChanged(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
.end method

###### Class org.qtproject.qt.android.QtAbstractItemModel$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtAbstractItemModel$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtAbstractItemModel;

.field public final synthetic f$1:Lorg/qtproject/qt/android/QtModelIndex;

.field public final synthetic f$2:Lorg/qtproject/qt/android/QtModelIndex;

.field public final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtAbstractItemModel;Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtAbstractItemModel;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$1:Lorg/qtproject/qt/android/QtModelIndex;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$2:Lorg/qtproject/qt/android/QtModelIndex;

    iput-object p4, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$3:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtAbstractItemModel;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$1:Lorg/qtproject/qt/android/QtModelIndex;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$2:Lorg/qtproject/qt/android/QtModelIndex;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtAbstractItemModel$$ExternalSyntheticLambda0;->f$3:[I

    invoke-virtual {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtAbstractItemModel;->lambda$handleDataChanged$0$org-qtproject-qt-android-QtAbstractItemModel(Lorg/qtproject/qt/android/QtModelIndex;Lorg/qtproject/qt/android/QtModelIndex;[I)V

    return-void
.end method
