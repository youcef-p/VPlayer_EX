###### Class com.google.android.gms.common.server.response.FastParser (com.google.android.gms.common.server.response.FastParser)
.class public Lcom/google/android/gms/common/server/response/FastParser;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastParser$ParseException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zaf:[C

.field private static final zag:[C

.field private static final zah:[C

.field private static final zai:[C

.field private static final zaj:[C

.field private static final zak:[C

.field private static final zam:Lcom/google/android/gms/common/server/response/zai;

.field private static final zan:Lcom/google/android/gms/common/server/response/zai;

.field private static final zao:Lcom/google/android/gms/common/server/response/zai;

.field private static final zap:Lcom/google/android/gms/common/server/response/zai;

.field private static final zaq:Lcom/google/android/gms/common/server/response/zai;

.field private static final zar:Lcom/google/android/gms/common/server/response/zai;

.field private static final zas:Lcom/google/android/gms/common/server/response/zai;

.field private static final zat:Lcom/google/android/gms/common/server/response/zai;


# instance fields
.field private final zaa:[C

.field private final zab:[C

.field private final zac:[C

.field private final zad:Ljava/lang/StringBuilder;

.field private final zae:Ljava/lang/StringBuilder;

.field private final zal:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v1, v0, [C

    fill-array-data v1, :array_6a

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_72

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zag:[C

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_7a

    sput-object v1, Lcom/google/android/gms/common/server/response/FastParser;->zah:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_82

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zai:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaj:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    new-instance v0, Lcom/google/android/gms/common/server/response/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zab;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zac;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zac;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zao:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zap:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zae;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zae;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zaq:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zaf;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zar:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zag;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zag;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zas:Lcom/google/android/gms/common/server/response/zai;

    new-instance v0, Lcom/google/android/gms/common/server/response/zah;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastParser;->zat:Lcom/google/android/gms/common/server/response/zai;

    return-void

    nop

    :array_6a
    .array-data 2
        0x75s
        0x6cs
        0x6cs
    .end array-data

    nop

    :array_72
    .array-data 2
        0x72s
        0x75s
        0x65s
    .end array-data

    nop

    :array_7a
    .array-data 2
        0x72s
        0x75s
        0x65s
        0x22s
    .end array-data

    :array_82
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data

    :array_8a
    .array-data 2
        0x61s
        0x6cs
        0x73s
        0x65s
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    const/16 v0, 0x20

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    const/16 v1, 0x400

    new-array v2, v1, [C

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    .line 3
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    return-void
.end method

.method private static final zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    array-length v1, p1

    .line 2
    invoke-virtual {p0, v1}, Ljava/io/BufferedReader;->mark(I)V

    move v1, v0

    move v2, v1

    .line 3
    :goto_a
    invoke-virtual {p0, p1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_60

    move v4, v0

    :goto_12
    if-ge v4, v3, :cond_58

    .line 4
    aget-char v5, p1, v4

    .line 5
    invoke-static {v5}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v6

    if-eqz v6, :cond_2b

    if-eqz p3, :cond_23

    .line 8
    aget-char v6, p3, v0

    if-ne v6, v5, :cond_23

    goto :goto_2b

    .line 5
    :cond_23
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected control character while reading string"

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x22

    if-ne v5, v7, :cond_4d

    if-nez v1, :cond_55

    .line 9
    invoke-virtual {p2, p1, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Ljava/io/BufferedReader;->reset()V

    int-to-long v0, v6

    .line 11
    invoke-virtual {p0, v0, v1}, Ljava/io/BufferedReader;->skip(J)J

    if-eqz v2, :cond_48

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/common/util/JsonUtils;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    const/16 v4, 0x5c

    if-ne v5, v4, :cond_55

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    goto :goto_56

    :cond_55
    move v1, v0

    :goto_56
    move v4, v6

    goto :goto_12

    .line 6
    :cond_58
    invoke-virtual {p2, p1, v0, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    array-length v3, p1

    .line 7
    invoke-virtual {p0, v3}, Ljava/io/BufferedReader;->mark(I)V

    goto :goto_a

    .line 12
    :cond_60
    new-instance p0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p1, "Unexpected EOF while parsing string"

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    const-string v3, "Error instantiating inner object"

    invoke-virtual {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v4

    .line 2
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 24
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_29f

    :goto_17
    if-eqz v5, :cond_29b

    .line 3
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    if-nez v5, :cond_26

    .line 4
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    goto :goto_17

    :cond_26
    iget-object v9, v1, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v10, 0x4

    .line 5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v11, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    const/16 v12, 0x7b

    const/16 v13, 0x2c

    const/16 v14, 0x7d

    const/16 v15, 0x6e

    const/4 v10, 0x0

    packed-switch v11, :pswitch_data_2a6

    .line 67
    iget v0, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid field type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :pswitch_61
    iget-boolean v11, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v11, :cond_96

    .line 36
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v11

    if-ne v11, v15, :cond_77

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 37
    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 38
    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1a7

    :cond_77
    const/4 v12, 0x5

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x5b

    if-ne v11, v9, :cond_8e

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 40
    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v11

    .line 41
    invoke-virtual {v2, v5, v9, v11}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1a7

    .line 63
    :cond_8e
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected array start"

    .line 65
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_96
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v11

    if-ne v11, v15, :cond_a8

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 43
    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    iget-object v9, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V

    goto/16 :goto_1a7

    .line 45
    :cond_a8
    invoke-virtual {v9, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v11, v12, :cond_c9

    .line 46
    :try_start_ad
    invoke-virtual {v5}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaf()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v9

    .line 47
    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    iget-object v11, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v5, v11, v9}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    :try_end_b9
    .catch Ljava/lang/InstantiationException; {:try_start_ad .. :try_end_b9} :catch_c2
    .catch Ljava/lang/IllegalAccessException; {:try_start_ad .. :try_end_b9} :catch_bb

    goto/16 :goto_1a7

    :catch_bb
    move-exception v0

    .line 59
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 67
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_c2
    move-exception v0

    .line 65
    new-instance v2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 68
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 45
    :cond_c9
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected start of object"

    .line 66
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :pswitch_d1
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v11

    if-ne v11, v15, :cond_de

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 23
    invoke-direct {v1, v0, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    move-object v9, v10

    goto :goto_124

    :cond_de
    if-ne v11, v12, :cond_17c

    .line 24
    invoke-virtual {v9, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/util/HashMap;

    .line 25
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 26
    :goto_e8
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v11

    if-eqz v11, :cond_174

    const/16 v12, 0x22

    if-eq v11, v12, :cond_f9

    if-eq v11, v14, :cond_f5

    goto :goto_e8

    .line 33
    :cond_f5
    invoke-direct {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto :goto_124

    .line 26
    :cond_f9
    iget-object v11, v1, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    iget-object v15, v1, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    .line 27
    invoke-static {v0, v11, v15, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    const/16 v14, 0x3a

    if-ne v7, v14, :cond_161

    .line 29
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v7

    if-ne v7, v12, :cond_14e

    .line 30
    invoke-static {v0, v11, v15, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v6

    if-eq v6, v13, :cond_14a

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_129

    const/4 v7, 0x1

    .line 34
    invoke-direct {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    .line 35
    :goto_124
    invoke-virtual {v2, v5, v9}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zar(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V

    goto/16 :goto_1a7

    .line 64
    :cond_129
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 63
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected character while parsing string map: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14a
    const/4 v7, 0x1

    const/16 v14, 0x7d

    goto :goto_e8

    .line 29
    :cond_14e
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 62
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Expected String value for key "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_161
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 61
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No map value found for key "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_174
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Unexpected EOF"

    .line 64
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_17c
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "Expected start of a map object"

    .line 60
    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :pswitch_184
    iget-object v6, v1, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    .line 49
    invoke-direct {v1, v0, v6, v7, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-static {v6}, Lcom/google/android/gms/common/util/Base64Utils;->decodeUrlSafe(Ljava/lang/String;)[B

    move-result-object v6

    .line 51
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    goto :goto_1a7

    .line 48
    :pswitch_196
    iget-object v6, v1, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    iget-object v7, v1, Lcom/google/android/gms/common/server/response/FastParser;->zae:Ljava/lang/StringBuilder;

    sget-object v9, Lcom/google/android/gms/common/server/response/FastParser;->zak:[C

    .line 52
    invoke-direct {v1, v0, v6, v7, v9}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v6

    .line 53
    invoke-static {v6}, Lcom/google/android/gms/common/util/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 54
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V

    :goto_1a7
    const/4 v5, 0x4

    goto/16 :goto_260

    .line 19
    :pswitch_1aa
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_1b8

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zar:Lcom/google/android/gms/common/server/response/zai;

    .line 20
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zap(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    .line 21
    :cond_1b8
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zao(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V

    goto :goto_1a7

    .line 17
    :pswitch_1c0
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_1ce

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zaq:Lcom/google/android/gms/common/server/response/zai;

    .line 18
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zan(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    :cond_1ce
    const/4 v6, 0x0

    .line 19
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result v7

    invoke-virtual {v2, v5, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zam(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V

    goto :goto_1a7

    .line 15
    :pswitch_1d7
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_1e5

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zat:Lcom/google/android/gms/common/server/response/zai;

    .line 16
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    .line 17
    :cond_1e5
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zak(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V

    goto :goto_1a7

    .line 13
    :pswitch_1ed
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_1fb

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zap:Lcom/google/android/gms/common/server/response/zai;

    .line 14
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaj(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    .line 15
    :cond_1fb
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zai(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V

    goto :goto_1a7

    .line 11
    :pswitch_203
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_211

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zao:Lcom/google/android/gms/common/server/response/zai;

    .line 12
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zah(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    .line 13
    :cond_211
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V

    goto :goto_1a7

    .line 9
    :pswitch_219
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_227

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zan:Lcom/google/android/gms/common/server/response/zai;

    .line 10
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto :goto_1a7

    .line 11
    :cond_227
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;)J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V

    goto/16 :goto_1a7

    .line 7
    :pswitch_230
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_23f

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zas:Lcom/google/android/gms/common/server/response/zai;

    .line 8
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zad(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1a7

    .line 9
    :cond_23f
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V

    goto/16 :goto_1a7

    .line 33
    :pswitch_248
    iget-boolean v6, v5, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v6, :cond_257

    sget-object v6, Lcom/google/android/gms/common/server/response/FastParser;->zam:Lcom/google/android/gms/common/server/response/zai;

    .line 6
    invoke-direct {v1, v0, v6}, Lcom/google/android/gms/common/server/response/FastParser;->zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V

    goto/16 :goto_1a7

    .line 7
    :cond_257
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V

    goto/16 :goto_1a7

    .line 55
    :goto_260
    invoke-direct {v1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 v5, 0x2

    .line 56
    invoke-direct {v1, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    .line 57
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v5

    if-eq v5, v13, :cond_294

    const/16 v7, 0x7d

    if-ne v5, v7, :cond_273

    move-object v5, v10

    goto :goto_298

    .line 70
    :cond_273
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 69
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x36

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected end of object or field separator, but found: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_294
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v5

    :goto_298
    const/4 v7, 0x1

    goto/16 :goto_17

    .line 59
    :cond_29b
    invoke-direct {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return v7

    .line 71
    :cond_29f
    invoke-direct {v1, v7}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/16 v16, 0x0

    return v16

    nop

    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_248
        :pswitch_230
        :pswitch_219
        :pswitch_203
        :pswitch_1ed
        :pswitch_1d7
        :pswitch_1c0
        :pswitch_1aa
        :pswitch_196
        :pswitch_184
        :pswitch_d1
        :pswitch_61
    .end packed-switch
.end method

.method private final zaj(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4c

    const/16 p1, 0x5d

    if-eq v2, p1, :cond_40

    const/16 p1, 0x7d

    if-ne v2, p1, :cond_1f

    .line 3
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return-object v4

    .line 11
    :cond_1f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x12

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected token: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_40
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 p1, 0x5

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return-object v4

    :cond_4c
    const/4 v1, 0x3

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    .line 8
    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result p1

    const/16 v1, 0x3a

    if-ne p1, v1, :cond_68

    return-object v0

    :cond_68
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Expected key/value separator"

    .line 11
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zak(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 1
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x5c

    const/16 v2, 0x7d

    const/16 v3, 0x2c

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "Unexpected token "

    const/16 v7, 0x22

    if-eq v0, v7, :cond_dc

    if-eq v0, v3, :cond_d4

    const/16 v8, 0x20

    const/16 v9, 0x5b

    if-eq v0, v9, :cond_76

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_2d

    .line 29
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    goto/16 :goto_f1

    .line 34
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    .line 3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1, v8}, Ljava/io/BufferedReader;->mark(I)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    if-ne v0, v2, :cond_44

    .line 6
    invoke-direct {p0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_f1

    :cond_44
    if-ne v0, v7, :cond_57

    .line 7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    .line 9
    :cond_4c
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zak(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 10
    invoke-direct {p0, v5}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_f1

    .line 35
    :cond_57
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v10, 0x5

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, v8}, Ljava/io/BufferedReader;->mark(I)V

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v8, 0x5d

    if-ne v0, v8, :cond_90

    .line 15
    invoke-direct {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto/16 :goto_f1

    .line 16
    :cond_90
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    move v0, v4

    move v11, v0

    :goto_95
    if-lez v5, :cond_d0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v12

    if-eqz v12, :cond_c8

    .line 18
    invoke-static {v12}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v13

    if-nez v13, :cond_c0

    if-ne v12, v7, :cond_aa

    if-nez v11, :cond_a9

    xor-int/lit8 v0, v0, 0x1

    :cond_a9
    move v12, v7

    :cond_aa
    if-ne v12, v9, :cond_b1

    if-nez v0, :cond_b0

    add-int/lit8 v5, v5, 0x1

    :cond_b0
    move v12, v9

    :cond_b1
    if-ne v12, v8, :cond_b7

    if-nez v0, :cond_b7

    add-int/lit8 v5, v5, -0x1

    :cond_b7
    if-ne v12, v1, :cond_be

    if-eqz v0, :cond_be

    xor-int/lit8 v11, v11, 0x1

    goto :goto_95

    :cond_be
    move v11, v4

    goto :goto_95

    :cond_c0
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading array"

    .line 20
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_c8
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected EOF while parsing array"

    .line 19
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_d0
    invoke-direct {p0, v10}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    goto :goto_f1

    .line 28
    :cond_d4
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Missing value"

    .line 22
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_dc
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    .line 23
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v8

    const-string v9, "Unexpected EOF while parsing string"

    const/4 v10, -0x1

    if-eq v8, v10, :cond_14a

    .line 24
    aget-char v8, v0, v4

    move v11, v4

    :goto_ea
    if-ne v8, v7, :cond_126

    if-eqz v11, :cond_f1

    move v11, v5

    move v8, v7

    goto :goto_126

    .line 31
    :cond_f1
    :goto_f1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v3, :cond_11e

    if-ne v0, v2, :cond_ff

    .line 32
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 p1, 0x0

    return-object p1

    .line 22
    :cond_ff
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_11e
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaj(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_126
    :goto_126
    if-ne v8, v1, :cond_12c

    xor-int/lit8 v8, v11, 0x1

    move v11, v8

    goto :goto_12d

    :cond_12c
    move v11, v4

    .line 25
    :goto_12d
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v8

    if-eq v8, v10, :cond_144

    .line 27
    aget-char v8, v0, v4

    .line 26
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v12

    if-nez v12, :cond_13c

    goto :goto_ea

    :cond_13c
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "Unexpected control character while reading string"

    .line 28
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_144
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 27
    invoke-direct {p1, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_14a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 24
    invoke-direct {p1, v9}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zal(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zad:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zam(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/zai;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_f

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 p1, 0x0

    return-object p1

    :cond_f
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4c

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v1, 0x5

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_22
    :goto_22
    const/16 v2, 0x400

    .line 6
    invoke-virtual {p1, v2}, Ljava/io/BufferedReader;->mark(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v2

    if-eqz v2, :cond_44

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_22

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_40

    .line 8
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 9
    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/common/server/response/zai;->zaa(Lcom/google/android/gms/common/server/response/FastParser;Ljava/io/BufferedReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 10
    :cond_40
    invoke-direct {p0, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return-object v0

    .line 9
    :cond_44
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    .line 11
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_4c
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of array"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zan(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1b

    const/16 p2, 0x6e

    if-ne v0, p2, :cond_13

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    const/4 p1, 0x0

    return-object p1

    :cond_13
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected string"

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1b
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/server/response/FastParser;->zaA(Ljava/io/BufferedReader;[CLjava/lang/StringBuilder;[C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zao(Ljava/io/BufferedReader;)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_a

    return v1

    :cond_a
    if-lez p1, :cond_75

    aget-char v2, v0, v1

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_15

    const/high16 v4, -0x80000000

    goto :goto_18

    :cond_15
    const v4, -0x7fffffff

    :goto_18
    const/4 v5, 0x1

    if-ne v2, v3, :cond_1d

    move v2, v5

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    const-string v3, "Unexpected non-digit character"

    const/16 v6, 0xa

    if-ge v2, p1, :cond_36

    add-int/lit8 v1, v2, 0x1

    aget-char v7, v0, v2

    .line 2
    invoke-static {v7, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    if-ltz v7, :cond_30

    neg-int v7, v7

    goto :goto_38

    :cond_30
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_36
    move v7, v1

    move v1, v2

    :goto_38
    if-ge v1, p1, :cond_66

    add-int/lit8 v8, v1, 0x1

    .line 4
    aget-char v1, v0, v1

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_60

    const v9, -0xccccccc

    .line 5
    const-string v10, "Number too large"

    if-lt v7, v9, :cond_5a

    mul-int/lit8 v7, v7, 0xa

    add-int v9, v4, v1

    if-lt v7, v9, :cond_54

    sub-int/2addr v7, v1

    move v1, v8

    goto :goto_38

    .line 6
    :cond_54
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 7
    invoke-direct {p1, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_5a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 6
    invoke-direct {p1, v10}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_60
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 5
    invoke-direct {p1, v3}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    if-eqz v2, :cond_73

    if-le v1, v5, :cond_6b

    return v7

    .line 7
    :cond_6b
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No digits to parse"

    .line 8
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    neg-int p1, v7

    return p1

    :cond_75
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v0, "No number to parse"

    .line 9
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zap(Ljava/io/BufferedReader;)J
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_f

    return-wide v3

    :cond_f
    if-lez v2, :cond_88

    const/4 v5, 0x0

    aget-char v6, v1, v5

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_1b

    const-wide/high16 v8, -0x8000000000000000L

    goto :goto_20

    :cond_1b
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    :goto_20
    const/4 v10, 0x1

    if-ne v6, v7, :cond_24

    move v5, v10

    :cond_24
    const-string v6, "Unexpected non-digit character"

    const/16 v7, 0xa

    if-ge v5, v2, :cond_3d

    add-int/lit8 v3, v5, 0x1

    aget-char v4, v1, v5

    .line 2
    invoke-static {v4, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_37

    neg-int v4, v4

    int-to-long v11, v4

    goto :goto_3f

    :cond_37
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 3
    invoke-direct {v1, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    move-wide v11, v3

    move v3, v5

    :goto_3f
    if-ge v3, v2, :cond_79

    add-int/lit8 v4, v3, 0x1

    .line 4
    aget-char v3, v1, v3

    invoke-static {v3, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-ltz v3, :cond_73

    const-wide v13, -0xcccccccccccccccL

    cmp-long v13, v11, v13

    .line 5
    const-string v14, "Number too large"

    if-ltz v13, :cond_6d

    const-wide/16 v15, 0xa

    mul-long/2addr v11, v15

    move-wide v15, v8

    int-to-long v7, v3

    add-long v17, v15, v7

    cmp-long v3, v11, v17

    if-ltz v3, :cond_67

    sub-long/2addr v11, v7

    move v3, v4

    move-wide v8, v15

    const/16 v7, 0xa

    goto :goto_3f

    .line 6
    :cond_67
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 7
    invoke-direct {v1, v14}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_6d
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 6
    invoke-direct {v1, v14}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_73
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 5
    invoke-direct {v1, v6}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_79
    if-eqz v5, :cond_86

    if-le v3, v10, :cond_7e

    return-wide v11

    .line 7
    :cond_7e
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "No digits to parse"

    .line 8
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_86
    neg-long v1, v11

    return-wide v1

    :cond_88
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string v2, "No number to parse"

    .line 9
    invoke-direct {v1, v2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v1, Ljava/math/BigInteger;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2
    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private final zar(Ljava/io/BufferedReader;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-eq v0, v1, :cond_53

    const/16 v1, 0x66

    const/4 v3, 0x0

    if-eq v0, v1, :cond_48

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_42

    const/16 v1, 0x74

    if-ne v0, v1, :cond_21

    if-eqz p2, :cond_1b

    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zah:[C

    goto :goto_1d

    .line 2
    :cond_1b
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zag:[C

    :goto_1d
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    return v2

    .line 4
    :cond_21
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x12

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unexpected token: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_42
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    return v3

    :cond_48
    if-eqz p2, :cond_4d

    .line 6
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaj:[C

    goto :goto_4f

    .line 7
    :cond_4d
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zai:[C

    .line 4
    :goto_4f
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    return v3

    :cond_53
    if-nez p2, :cond_5a

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result p1

    return p1

    .line 3
    :cond_5a
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No boolean value found in string"

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zas(Ljava/io/BufferedReader;)F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private final zat(Ljava/io/BufferedReader;)D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method private final zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zac:[C

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastParser;->zax(Ljava/io/BufferedReader;[C)I

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2
    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private final zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "Error instantiating inner object"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v2

    const/4 v3, 0x5

    const/16 v4, 0x5d

    if-eq v2, v4, :cond_ac

    const/16 v5, 0x6e

    if-eq v2, v5, :cond_a2

    const/16 v5, 0x7b

    const-string v6, "Unexpected token: "

    if-ne v2, v5, :cond_83

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v7, 0x1

    .line 3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_24
    :try_start_24
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaf()Lcom/google/android/gms/common/server/response/FastJsonResponse;

    move-result-object v8

    .line 5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    move-result v9

    if-eqz v9, :cond_74

    .line 6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/InstantiationException; {:try_start_24 .. :try_end_31} :catch_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_31} :catch_75

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_5e

    if-ne v8, v4, :cond_3f

    .line 12
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return-object v1

    .line 16
    :cond_3f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 14
    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5e
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v8

    if-ne v8, v5, :cond_6c

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 8
    :cond_6c
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Expected start of next object in array"

    .line 13
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    return-object v1

    :catch_75
    move-exception p1

    .line 11
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 10
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_7c
    move-exception p1

    .line 18
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 11
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 14
    :cond_83
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 18
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_a2
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    .line 16
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_ac
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V

    return-object v1
.end method

.method private final zaw(Ljava/io/BufferedReader;)C
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zaa:[C

    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1c

    :cond_a
    aget-char v1, v0, v2

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    if-ne v1, v3, :cond_a

    goto :goto_1c

    :cond_19
    aget-char p1, v0, v2

    return p1

    :cond_1c
    :goto_1c
    return v2
.end method

.method private final zax(Ljava/io/BufferedReader;[C)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v0

    const-string v1, "Unexpected EOF"

    if-eqz v0, :cond_9d

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_95

    const/16 v3, 0x6e

    const/4 v4, 0x0

    if-ne v0, v3, :cond_17

    .line 3
    sget-object p2, Lcom/google/android/gms/common/server/response/FastParser;->zaf:[C

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zay(Ljava/io/BufferedReader;[C)V

    return v4

    :cond_17
    const/16 v3, 0x400

    .line 5
    invoke-virtual {p1, v3}, Ljava/io/BufferedReader;->mark(I)V

    const/16 v5, 0x22

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v0, v5, :cond_56

    move v0, v4

    move v2, v0

    :goto_24
    if-ge v0, v3, :cond_85

    .line 6
    invoke-virtual {p1, p2, v0, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v8

    if-eq v8, v6, :cond_85

    .line 7
    aget-char v8, p2, v0

    .line 8
    invoke-static {v8}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v9

    if-nez v9, :cond_4e

    add-int/lit8 v9, v0, 0x1

    if-ne v8, v5, :cond_43

    if-eqz v2, :cond_3b

    goto :goto_4b

    .line 10
    :cond_3b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    int-to-long v1, v9

    .line 11
    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    return v0

    :cond_43
    const/16 v0, 0x5c

    if-ne v8, v0, :cond_4b

    xor-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4c

    :cond_4b
    :goto_4b
    move v2, v4

    :goto_4c
    move v0, v9

    goto :goto_24

    .line 8
    :cond_4e
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected control character while reading string"

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_56
    aput-char v0, p2, v4

    move v0, v7

    :goto_59
    if-ge v0, v3, :cond_85

    .line 12
    invoke-virtual {p1, p2, v0, v7}, Ljava/io/BufferedReader;->read([CII)I

    move-result v5

    if-eq v5, v6, :cond_85

    .line 13
    aget-char v5, p2, v0

    const/16 v8, 0x7d

    if-eq v5, v8, :cond_79

    if-eq v5, v2, :cond_79

    .line 14
    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_79

    aget-char v5, p2, v0

    const/16 v8, 0x5d

    if-ne v5, v8, :cond_76

    goto :goto_79

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 15
    :cond_79
    :goto_79
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    add-int/lit8 v1, v0, -0x1

    int-to-long v1, v1

    .line 16
    invoke-virtual {p1, v1, v2}, Ljava/io/BufferedReader;->skip(J)J

    .line 17
    aput-char v4, p2, v0

    return v0

    :cond_85
    if-ne v0, v3, :cond_8f

    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Absurdly long value"

    .line 18
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 19
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_95
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Missing value"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_9d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 2
    invoke-direct {p1, v1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zay(Ljava/io/BufferedReader;[C)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/common/server/response/FastParser;->zab:[C

    sub-int/2addr v2, v1

    invoke-virtual {p1, v3, v0, v2}, Ljava/io/BufferedReader;->read([CII)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    move v4, v0

    :goto_10
    if-ge v4, v2, :cond_25

    add-int v5, v4, v1

    .line 2
    aget-char v5, p2, v5

    aget-char v6, v3, v4

    if-ne v5, v6, :cond_1d

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1d
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected character"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_25
    add-int/2addr v1, v2

    goto :goto_2

    :cond_27
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Unexpected EOF"

    .line 4
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2f
    return-void
.end method

.method private final zaz(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const-string v2, "Expected state "

    if-nez v1, :cond_47

    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_17

    return-void

    :cond_17
    new-instance v1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x18

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_47
    new-instance v0, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x23

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but had empty stack"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/server/response/FastParser$ParseException;
        }
    .end annotation

    .line 1
    const-string v0, "Failed to close reader while parsing."

    const-string v1, "FastParser"

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x400

    invoke-direct {v2, v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_10
    iget-object p1, p0, Lcom/google/android/gms/common/server/response/FastParser;->zal:Ljava/util/Stack;

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Unexpected token: "

    .line 3
    invoke-direct {p0, v2}, Lcom/google/android/gms/common/server/response/FastParser;->zaw(Ljava/io/BufferedReader;)C

    move-result v5

    if-eqz v5, :cond_97

    const/16 v6, 0x5b

    const/4 v7, 0x1

    if-eq v5, v6, :cond_55

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_36

    .line 11
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-direct {p0, v2, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zai(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse;)Z

    goto :goto_84

    .line 16
    :cond_36
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 17
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_55
    const/4 v4, 0x5

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v7, :cond_8f

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    .line 9
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zav(Ljava/io/BufferedReader;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    .line 10
    invoke-virtual {p2, p1, v5, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13
    :goto_84
    invoke-direct {p0, v3}, Lcom/google/android/gms/common/server/response/FastParser;->zaz(I)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_87} :catch_a1
    .catchall {:try_start_10 .. :try_end_87} :catchall_9f

    .line 14
    :try_start_87
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    return-void

    .line 15
    :catch_8b
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_8f
    :try_start_8f
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "Object array response class must have a single Field"

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_97
    new-instance p1, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    const-string p2, "No data to parse"

    .line 16
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9f} :catch_a1
    .catchall {:try_start_8f .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception p1

    goto :goto_a8

    :catch_a1
    move-exception p1

    .line 12
    :try_start_a2
    new-instance p2, Lcom/google/android/gms/common/server/response/FastParser$ParseException;

    .line 18
    invoke-direct {p2, p1}, Lcom/google/android/gms/common/server/response/FastParser$ParseException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_9f

    .line 14
    :goto_a8
    :try_start_a8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    goto :goto_af

    .line 15
    :catch_ac
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :goto_af
    throw p1
.end method

.method final synthetic zaa(Ljava/io/BufferedReader;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zal(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zab(Ljava/io/BufferedReader;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zao(Ljava/io/BufferedReader;)I

    move-result p1

    return p1
.end method

.method final synthetic zac(Ljava/io/BufferedReader;)J
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zap(Ljava/io/BufferedReader;)J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zad(Ljava/io/BufferedReader;)Ljava/math/BigInteger;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zaq(Ljava/io/BufferedReader;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zae(Ljava/io/BufferedReader;Z)Z
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastParser;->zar(Ljava/io/BufferedReader;Z)Z

    move-result p1

    return p1
.end method

.method final synthetic zaf(Ljava/io/BufferedReader;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zas(Ljava/io/BufferedReader;)F

    move-result p1

    return p1
.end method

.method final synthetic zag(Ljava/io/BufferedReader;)D
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zat(Ljava/io/BufferedReader;)D

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zah(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/server/response/FastParser;->zau(Ljava/io/BufferedReader;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.common.server.response.FastParser.ParseException (com.google.android.gms.common.server.response.FastParser$ParseException)
.class public Lcom/google/android/gms/common/server/response/FastParser$ParseException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-base@@18.10.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
