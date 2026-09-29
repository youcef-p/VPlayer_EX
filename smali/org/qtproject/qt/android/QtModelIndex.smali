###### Class org.qtproject.qt.android.QtModelIndex (org.qtproject.qt.android.QtModelIndex)
.class public Lorg/qtproject/qt/android/QtModelIndex;
.super Ljava/lang/Object;
.source "QtModelIndex.java"


# instance fields
.field private m_parent:Lorg/qtproject/qt/android/QtModelIndex;

.field private final m_privateData:[J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [J

    fill-array-data v0, :array_10

    iput-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_parent:Lorg/qtproject/qt/android/QtModelIndex;

    return-void

    nop

    :array_10
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(IIJJ)V
    .registers 11

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [J

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v1, 0x0

    int-to-long v2, p1

    .line 60
    aput-wide v2, v0, v1

    const/4 p1, 0x1

    int-to-long v1, p2

    .line 61
    aput-wide v1, v0, p1

    const/4 p1, 0x2

    .line 62
    aput-wide p3, v0, p1

    const/4 p1, 0x3

    .line 63
    aput-wide p5, v0, p1

    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_parent:Lorg/qtproject/qt/android/QtModelIndex;

    return-void

    nop

    :array_1e
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>(IILorg/qtproject/qt/android/QtModelIndex;J)V
    .registers 10

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 55
    new-array v0, v0, [J

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v1, 0x0

    int-to-long v2, p1

    .line 68
    aput-wide v2, v0, v1

    const/4 p1, 0x1

    int-to-long v1, p2

    .line 69
    aput-wide v1, v0, p1

    const/4 p1, 0x2

    const-wide/16 v1, 0x0

    .line 70
    aput-wide v1, v0, p1

    const/4 p1, 0x3

    .line 71
    aput-wide p4, v0, p1

    .line 72
    iput-object p3, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_parent:Lorg/qtproject/qt/android/QtModelIndex;

    return-void

    :array_1e
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private detachFromNative()V
    .registers 5

    .line 76
    iget-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 77
    aput-wide v2, v0, v1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    .line 78
    aput-wide v2, v0, v1

    const/4 v1, 0x3

    .line 79
    aput-wide v2, v0, v1

    return-void
.end method


# virtual methods
.method public column()I
    .registers 3

    .line 22
    iget-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    long-to-int v0, v0

    return v0
.end method

.method public native data(I)Ljava/lang/Object;
.end method

.method public native internalId()J
.end method

.method public native isValid()Z
.end method

.method public native parent()Lorg/qtproject/qt/android/QtModelIndex;
.end method

.method public row()I
    .registers 3

    .line 53
    iget-object v0, p0, Lorg/qtproject/qt/android/QtModelIndex;->m_privateData:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    long-to-int v0, v0

    return v0
.end method
