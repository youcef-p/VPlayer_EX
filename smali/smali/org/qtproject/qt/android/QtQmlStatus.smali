###### Class org.qtproject.qt.android.QtQmlStatus (org.qtproject.qt.android.QtQmlStatus)
.class public final enum Lorg/qtproject/qt/android/QtQmlStatus;
.super Ljava/lang/Enum;
.source "QtQmlStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/qtproject/qt/android/QtQmlStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/qtproject/qt/android/QtQmlStatus;

.field public static final enum ERROR:Lorg/qtproject/qt/android/QtQmlStatus;

.field public static final enum LOADING:Lorg/qtproject/qt/android/QtQmlStatus;

.field public static final enum NULL:Lorg/qtproject/qt/android/QtQmlStatus;

.field public static final enum READY:Lorg/qtproject/qt/android/QtQmlStatus;


# instance fields
.field private final m_value:I


# direct methods
.method private static synthetic $values()[Lorg/qtproject/qt/android/QtQmlStatus;
    .registers 4

    .line 11
    sget-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    sget-object v1, Lorg/qtproject/qt/android/QtQmlStatus;->READY:Lorg/qtproject/qt/android/QtQmlStatus;

    sget-object v2, Lorg/qtproject/qt/android/QtQmlStatus;->LOADING:Lorg/qtproject/qt/android/QtQmlStatus;

    sget-object v3, Lorg/qtproject/qt/android/QtQmlStatus;->ERROR:Lorg/qtproject/qt/android/QtQmlStatus;

    filled-new-array {v0, v1, v2, v3}, [Lorg/qtproject/qt/android/QtQmlStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Lorg/qtproject/qt/android/QtQmlStatus;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/qtproject/qt/android/QtQmlStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->NULL:Lorg/qtproject/qt/android/QtQmlStatus;

    .line 22
    new-instance v0, Lorg/qtproject/qt/android/QtQmlStatus;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/qtproject/qt/android/QtQmlStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->READY:Lorg/qtproject/qt/android/QtQmlStatus;

    .line 27
    new-instance v0, Lorg/qtproject/qt/android/QtQmlStatus;

    const-string v1, "LOADING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/qtproject/qt/android/QtQmlStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->LOADING:Lorg/qtproject/qt/android/QtQmlStatus;

    .line 32
    new-instance v0, Lorg/qtproject/qt/android/QtQmlStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/qtproject/qt/android/QtQmlStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->ERROR:Lorg/qtproject/qt/android/QtQmlStatus;

    .line 11
    invoke-static {}, Lorg/qtproject/qt/android/QtQmlStatus;->$values()[Lorg/qtproject/qt/android/QtQmlStatus;

    move-result-object v0

    sput-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->$VALUES:[Lorg/qtproject/qt/android/QtQmlStatus;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtQmlStatus;->ordinal()I

    move-result p1

    iput p1, p0, Lorg/qtproject/qt/android/QtQmlStatus;->m_value:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/qtproject/qt/android/QtQmlStatus;->m_value:I

    return-void
.end method

.method static fromInt(I)Lorg/qtproject/qt/android/QtQmlStatus;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lorg/qtproject/qt/android/QtQmlStatus;->values()[Lorg/qtproject/qt/android/QtQmlStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 43
    iget v4, v3, Lorg/qtproject/qt/android/QtQmlStatus;->m_value:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 47
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No QtQmlStatus enum with value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/qtproject/qt/android/QtQmlStatus;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Lorg/qtproject/qt/android/QtQmlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/qtproject/qt/android/QtQmlStatus;

    return-object p0
.end method

.method public static values()[Lorg/qtproject/qt/android/QtQmlStatus;
    .registers 1

    .line 11
    sget-object v0, Lorg/qtproject/qt/android/QtQmlStatus;->$VALUES:[Lorg/qtproject/qt/android/QtQmlStatus;

    invoke-virtual {v0}, [Lorg/qtproject/qt/android/QtQmlStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/qtproject/qt/android/QtQmlStatus;

    return-object v0
.end method
