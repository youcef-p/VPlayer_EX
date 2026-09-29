###### Class kotlin.uuid.Uuid (kotlin.uuid.Uuid)
.class public final Lkotlin/uuid/Uuid;
.super Ljava/lang/Object;
.source "Uuid.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/uuid/Uuid$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 !2\u00060\u0001j\u0002`\u0002:\u0001!B\u0017\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\\\u0010\u0017\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u001826\u0010\u0019\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u0002H\u00180\u001aH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\\\u0010\u001f\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u001826\u0010\u0019\u001a2\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110 \u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u0005\u0012\u0004\u0012\u0002H\u00180\u001aH\u0087\u0008\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0001 \u0001\u00a2\u0006\u0002\u0010\u001dR\u001c\u0010\u0005\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0003\u001a\u00020\u00048\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\n\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Lkotlin/uuid/Uuid;",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "mostSignificantBits",
        "",
        "leastSignificantBits",
        "(JJ)V",
        "getLeastSignificantBits$annotations",
        "()V",
        "getLeastSignificantBits",
        "()J",
        "getMostSignificantBits$annotations",
        "getMostSignificantBits",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toByteArray",
        "",
        "toHexString",
        "",
        "toLongs",
        "T",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "toString",
        "toULongs",
        "Lkotlin/ULong;",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lkotlin/uuid/Uuid$Companion;

.field private static final LEXICAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lkotlin/uuid/Uuid;",
            ">;"
        }
    .end annotation
.end field

.field private static final NIL:Lkotlin/uuid/Uuid;

.field public static final SIZE_BITS:I = 0x80

.field public static final SIZE_BYTES:I = 0x10


# instance fields
.field private final leastSignificantBits:J

.field private final mostSignificantBits:J


# direct methods
.method public static synthetic $r8$lambda$hY_iFluWdHz7H_4hiindXk95oZw(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/uuid/Uuid;->LEXICAL_ORDER$lambda$2(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/uuid/Uuid$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/uuid/Uuid$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/uuid/Uuid;->Companion:Lkotlin/uuid/Uuid$Companion;

    .line 210
    new-instance v0, Lkotlin/uuid/Uuid;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    sput-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    .line 392
    new-instance v0, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lkotlin/uuid/Uuid;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    .line 42
    iput-wide p3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-void
.end method

.method private static final LEXICAL_ORDER$lambda$2(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I
    .registers 6

    .line 393
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_17

    .line 394
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p0, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0

    .line 396
    :cond_17
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    iget-wide p0, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    invoke-static {p0, p1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getLEXICAL_ORDER$cp()Ljava/util/Comparator;
    .registers 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->LEXICAL_ORDER:Ljava/util/Comparator;

    return-object v0
.end method

.method public static final synthetic access$getNIL$cp()Lkotlin/uuid/Uuid;
    .registers 1

    .line 38
    sget-object v0, Lkotlin/uuid/Uuid;->NIL:Lkotlin/uuid/Uuid;

    return-object v0
.end method

.method public static synthetic getLeastSignificantBits$annotations()V
    .registers 0

    return-void
.end method

.method public static synthetic getMostSignificantBits$annotations()V
    .registers 0

    return-void
.end method

.method private final toLongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final toULongs(Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/ULong;",
            "-",
            "Lkotlin/ULong;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getMostSignificantBits()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/uuid/Uuid;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/ULong;->box-impl(J)Lkotlin/ULong;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 193
    :cond_4
    instance-of v1, p1, Lkotlin/uuid/Uuid;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 194
    :cond_a
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    check-cast p1, Lkotlin/uuid/Uuid;

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1d

    .line 195
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    iget-wide v5, p1, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1d

    return v0

    :cond_1d
    return v2
.end method

.method public final getLeastSignificantBits()J
    .registers 3

    .line 42
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    return-wide v0
.end method

.method public final getMostSignificantBits()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .line 199
    iget-wide v0, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    iget-wide v2, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    xor-long/2addr v0, v2

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toByteArray()[B
    .registers 5

    const/16 v0, 0x10

    .line 176
    new-array v0, v0, [B

    .line 177
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/UuidKt__UuidKt;->access$toByteArray(J[BI)V

    .line 178
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lkotlin/uuid/UuidKt__UuidKt;->access$toByteArray(J[BI)V

    return-object v0
.end method

.method public final toHexString()Ljava/lang/String;
    .registers 6

    const/16 v0, 0x20

    .line 159
    new-array v0, v0, [B

    .line 160
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 161
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 162
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/16 v0, 0x24

    .line 130
    new-array v0, v0, [B

    .line 131
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v3, 0x18

    const/4 v4, 0x6

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x17

    const/16 v2, 0x2d

    .line 132
    aput-byte v2, v0, v1

    .line 133
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->leastSignificantBits:J

    const/16 v1, 0x30

    ushr-long/2addr v3, v1

    const/16 v1, 0x13

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x12

    .line 134
    aput-byte v2, v0, v1

    .line 135
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v1, 0xe

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0xd

    .line 136
    aput-byte v2, v0, v1

    .line 137
    iget-wide v3, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v1, 0x10

    ushr-long/2addr v3, v1

    const/16 v1, 0x9

    invoke-static {v3, v4, v0, v1, v5}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    const/16 v1, 0x8

    .line 138
    aput-byte v2, v0, v1

    .line 139
    iget-wide v1, p0, Lkotlin/uuid/Uuid;->mostSignificantBits:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v1, v2, v0, v3, v4}, Lkotlin/uuid/UuidKt__UuidKt;->access$formatBytesInto(J[BII)V

    .line 140
    invoke-static {v0}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.uuid.Uuid.Companion (kotlin.uuid.Uuid$Companion)
.class public final Lkotlin/uuid/Uuid$Companion;
.super Ljava/lang/Object;
.source "Uuid.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/uuid/Uuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUuid.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Uuid.kt\nkotlin/uuid/Uuid$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,447:1\n1#2:448\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011J\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014J\u001d\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u0005R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000c\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lkotlin/uuid/Uuid$Companion;",
        "",
        "()V",
        "LEXICAL_ORDER",
        "Ljava/util/Comparator;",
        "Lkotlin/uuid/Uuid;",
        "Lkotlin/Comparator;",
        "getLEXICAL_ORDER",
        "()Ljava/util/Comparator;",
        "NIL",
        "getNIL",
        "()Lkotlin/uuid/Uuid;",
        "SIZE_BITS",
        "",
        "SIZE_BYTES",
        "fromByteArray",
        "byteArray",
        "",
        "fromLongs",
        "mostSignificantBits",
        "",
        "leastSignificantBits",
        "fromULongs",
        "Lkotlin/ULong;",
        "fromULongs-eb3DHEI",
        "(JJ)Lkotlin/uuid/Uuid;",
        "parse",
        "uuidString",
        "",
        "parseHex",
        "hexString",
        "random",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lkotlin/uuid/Uuid$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromByteArray([B)Lkotlin/uuid/Uuid;
    .registers 6

    const-string v0, "byteArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x0

    .line 269
    invoke-static {p1, v0}, Lkotlin/uuid/UuidKt__UuidKt;->access$toLong([BI)J

    move-result-wide v0

    const/16 v2, 0x8

    invoke-static {p1, v2}, Lkotlin/uuid/UuidKt__UuidKt;->access$toLong([BI)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 267
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected exactly 16 bytes"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final fromLongs(JJ)Lkotlin/uuid/Uuid;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_f

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    .line 232
    invoke-virtual {p0}, Lkotlin/uuid/Uuid$Companion;->getNIL()Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 234
    :cond_f
    new-instance v0, Lkotlin/uuid/Uuid;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    return-object v0
.end method

.method public final fromULongs-eb3DHEI(JJ)Lkotlin/uuid/Uuid;
    .registers 5

    .line 250
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1
.end method

.method public final getLEXICAL_ORDER()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lkotlin/uuid/Uuid;",
            ">;"
        }
    .end annotation

    .line 392
    invoke-static {}, Lkotlin/uuid/Uuid;->access$getLEXICAL_ORDER$cp()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getNIL()Lkotlin/uuid/Uuid;
    .registers 2

    .line 210
    invoke-static {}, Lkotlin/uuid/Uuid;->access$getNIL$cp()Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 16

    const-string v0, "uuidString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_5f

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v2, p1

    .line 297
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v0

    const/16 p1, 0x8

    .line 298
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt__UuidKt;->access$checkHyphenAt(Ljava/lang/String;I)V

    const/16 v3, 0x9

    const/16 v4, 0xd

    .line 299
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v8

    const/16 p1, 0xd

    .line 300
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt__UuidKt;->access$checkHyphenAt(Ljava/lang/String;I)V

    const/16 v3, 0xe

    const/16 v4, 0x12

    .line 301
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v10

    const/16 p1, 0x12

    .line 302
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt__UuidKt;->access$checkHyphenAt(Ljava/lang/String;I)V

    const/16 v3, 0x13

    const/16 v4, 0x17

    .line 303
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v12

    const/16 p1, 0x17

    .line 304
    invoke-static {v2, p1}, Lkotlin/uuid/UuidKt__UuidKt;->access$checkHyphenAt(Ljava/lang/String;I)V

    const/16 v3, 0x18

    const/16 v4, 0x24

    .line 305
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v2

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/16 p1, 0x10

    shl-long v4, v8, p1

    or-long/2addr v0, v4

    or-long/2addr v0, v10

    const/16 p1, 0x30

    shl-long v4, v12, p1

    or-long/2addr v2, v4

    .line 309
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 295
    :cond_5f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a 36-char string in the standard uuid format."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final parseHex(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .registers 10

    const-string v0, "hexString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_25

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object v2, p1

    .line 332
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v0

    const/16 v3, 0x10

    const/16 v4, 0x20

    .line 333
    invoke-static/range {v2 .. v7}, Lkotlin/text/HexExtensionsKt;->hexToLong$default(Ljava/lang/String;IILkotlin/text/HexFormat;ILjava/lang/Object;)J

    move-result-wide v2

    .line 334
    invoke-virtual {p0, v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->fromLongs(JJ)Lkotlin/uuid/Uuid;

    move-result-object p1

    return-object p1

    .line 330
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected a 32-char hexadecimal string."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final random()Lkotlin/uuid/Uuid;
    .registers 2

    .line 372
    invoke-static {}, Lkotlin/uuid/UuidKt;->secureRandomUuid()Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0
.end method

###### Class kotlin.uuid.Uuid$$ExternalSyntheticLambda0 (kotlin.uuid.Uuid$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlin/uuid/Uuid$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lkotlin/uuid/Uuid;

    check-cast p2, Lkotlin/uuid/Uuid;

    invoke-static {p1, p2}, Lkotlin/uuid/Uuid;->$r8$lambda$hY_iFluWdHz7H_4hiindXk95oZw(Lkotlin/uuid/Uuid;Lkotlin/uuid/Uuid;)I

    move-result p1

    return p1
.end method
