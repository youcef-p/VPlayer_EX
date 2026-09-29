###### Class com.google.android.gms.common.data.DataHolder (com.google.android.gms.common.data.DataHolder)
.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final zak:Lcom/google/android/gms/common/data/DataHolder$Builder;


# instance fields
.field final zaa:I

.field zab:Landroid/os/Bundle;

.field zac:[I

.field zad:I

.field zae:I

.field private final zaf:[Ljava/lang/String;

.field private final zag:[Landroid/database/CursorWindow;

.field private final zah:I

.field private final zai:Landroid/os/Bundle;

.field private zaj:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/zad;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/zab;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/zab;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .registers 11

    .line 2
    new-instance v0, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :try_start_e
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getCount()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_2e

    .line 7
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v6

    if-nez v6, :cond_2e

    .line 8
    invoke-virtual {v3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 9
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    .line 10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    goto :goto_2f

    :cond_2e
    move v3, v5

    :goto_2f
    if-ge v3, v2, :cond_63

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 14
    invoke-virtual {v6}, Landroid/database/CursorWindow;->acquireReference()V

    .line 15
    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    goto :goto_4f

    .line 21
    :cond_44
    new-instance v6, Landroid/database/CursorWindow;

    .line 16
    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 17
    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 18
    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 19
    :goto_4f
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    if-nez v3, :cond_56

    goto :goto_63

    .line 20
    :cond_56
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v6
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_76

    add-int/2addr v3, v6

    goto :goto_2f

    .line 22
    :cond_63
    :goto_63
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    .line 3
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    :catchall_76
    move-exception p1

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    .line 23
    throw p1
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .registers 5

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object p3

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I[B)V
    .registers 6

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object p4

    const/4 p5, -0x1

    invoke-static {p1, p5}, Lcom/google/android/gms/common/data/DataHolder;->zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object p1

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;[B)V
    .registers 5

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/database/CursorWindow;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zaa()V

    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->zak:Lcom/google/android/gms/common/data/DataHolder$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static zae(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .registers 23

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const-string v1, " - allocating new window."

    const-string v2, "Couldn\'t populate window data for row "

    const-string v3, ": "

    const-string v4, "Unsupported object for column "

    const-string v5, ")"

    const-string v6, "Allocating additional cursor window for large data set (row "

    const/4 v7, 0x0

    if-nez v0, :cond_17

    new-array v0, v7, [Landroid/database/CursorWindow;

    return-object v0

    .line 2
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac()Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Landroid/database/CursorWindow;

    .line 4
    invoke-direct {v9, v7}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v10, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    invoke-virtual {v9, v11}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v11, v7

    move v12, v11

    :goto_36
    if-ge v11, v8, :cond_1e5

    .line 8
    :try_start_38
    invoke-virtual {v9}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13
    :try_end_3c
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_3c} :catch_1cf

    const-string v14, "DataHolder"

    if-nez v13, :cond_8d

    .line 9
    :try_start_40
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3d

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/database/CursorWindow;

    .line 10
    invoke-direct {v9, v7}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 11
    invoke-virtual {v9, v11}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    invoke-virtual {v9, v13}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 13
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v9}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v13

    if-nez v13, :cond_8d

    const-string v0, "Unable to allocate row to hold data."

    .line 42
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0

    .line 15
    :cond_8d
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_93} :catch_1cf

    const/16 v16, 0x1

    .line 16
    :goto_95
    :try_start_95
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v7, v15, :cond_16c

    if-eqz v16, :cond_165

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v7

    move-object/from16 v18, v0

    .line 18
    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b8

    .line 19
    invoke-virtual {v9, v11, v7}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v0

    move/from16 v16, v0

    move-object/from16 v19, v5

    :goto_b4
    move-object/from16 v20, v6

    goto/16 :goto_12d

    :cond_b8
    move-object/from16 v19, v5

    .line 20
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_c7

    .line 21
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0, v11, v7}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_b4

    .line 22
    :cond_c7
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_da

    .line 23
    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    :goto_d7
    move/from16 v16, v0

    goto :goto_12d

    :cond_da
    move-object/from16 v20, v6

    .line 24
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_ec

    .line 25
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_d7

    .line 26
    :cond_ec
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_103

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x1

    if-eq v5, v0, :cond_fc

    const-wide/16 v5, 0x0

    goto :goto_fe

    :cond_fc
    const-wide/16 v5, 0x1

    .line 28
    :goto_fe
    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v0

    goto :goto_d7

    .line 29
    :cond_103
    instance-of v5, v0, [B

    if-eqz v5, :cond_10e

    .line 30
    check-cast v0, [B

    invoke-virtual {v9, v0, v11, v7}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v0

    goto :goto_d7

    .line 31
    :cond_10e
    instance-of v5, v0, Ljava/lang/Double;

    if-eqz v5, :cond_11d

    .line 32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_d7

    .line 33
    :cond_11d
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_137

    .line 34
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v5, v0

    invoke-virtual {v9, v5, v6, v11, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v0

    goto :goto_d7

    :goto_12d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_95

    .line 48
    :cond_137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_165
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    goto :goto_179

    :cond_16c
    move-object/from16 v18, v0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    if-eqz v16, :cond_179

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_176
    const/16 v17, 0x1

    goto :goto_1b6

    :cond_179
    :goto_179
    if-nez v12, :cond_1c1

    .line 35
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {v9}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v0, Landroid/database/CursorWindow;
    :try_end_19f
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_19f} :catch_1cc

    const/4 v5, 0x0

    .line 37
    :try_start_1a0
    invoke-direct {v0, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 38
    invoke-virtual {v0, v11}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v0, v6}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 40
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, -0x1

    move-object v9, v0

    const/4 v12, 0x1

    goto :goto_176

    :goto_1b6
    add-int/lit8 v11, v11, 0x1

    move v7, v5

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_36

    :cond_1c1
    const/4 v5, 0x0

    .line 34
    const-string v0, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    new-instance v1, Lcom/google/android/gms/common/data/zac;

    .line 45
    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/zac;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1ca
    .catch Ljava/lang/RuntimeException; {:try_start_1a0 .. :try_end_1ca} :catch_1ca

    :catch_1ca
    move-exception v0

    goto :goto_1d1

    :catch_1cc
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1d1

    :catch_1cf
    move-exception v0

    move v5, v7

    .line 47
    :goto_1d1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v5

    :goto_1d6
    if-ge v7, v1, :cond_1e4

    .line 48
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d6

    .line 49
    :cond_1e4
    throw v0

    .line 41
    :cond_1e5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    return-object v0
.end method

.method private final zaf(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    if-eqz v0, :cond_27

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1f

    if-ltz p2, :cond_17

    .line 4
    iget p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p2, p1, :cond_17

    return-void

    .line 5
    :cond_17
    new-instance p1, Landroid/database/CursorIndexOutOfBoundsException;

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    invoke-direct {p1, p2, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw p1

    .line 3
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer is closed."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_27
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "No such column: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public acquireReference()V
    .registers 3

    .line 2
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    .line 1
    monitor-exit p0

    return-void

    .line 2
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to acquire reference to an already-closed DataHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_13
    move-exception v0

    .line 1
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public close()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    return-void
.end method

.method public copy()Lcom/google/android/gms/common/data/DataHolder;
    .registers 6

    .line 1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_42

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 3
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_4a

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_12
    :try_start_12
    array-length v3, v0

    if-ge v2, v3, :cond_1d

    .line 5
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/database/CursorWindow;->acquireReference()V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_2a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_4a

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1d
    :try_start_1d
    new-instance v1, Lcom/google/android/gms/common/data/DataHolder;

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    .line 6
    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    monitor-exit p0

    return-object v1

    :catch_2a
    move-exception v3

    :goto_2b
    if-ge v1, v2, :cond_35

    .line 7
    aget-object v4, v0, v1

    invoke-virtual {v4}, Landroid/database/CursorWindow;->releaseReference()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 8
    :cond_35
    instance-of v0, v3, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_41

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed CursorWindow encountered during DataHolder copy"

    .line 9
    invoke-direct {v0, v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 10
    :cond_41
    throw v3

    .line 1
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot copy a closed DataHolder"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4a
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1d .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method protected final finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, ")"

    const-string v1, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Z

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-lez v2, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v2

    if-nez v2, :cond_48

    monitor-enter p0
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_4c

    :try_start_14
    iget v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1b

    iput v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    .line 2
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    .line 3
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_45

    :try_start_1f
    const-string v2, "DataBuffer"

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0xb2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_4c

    goto :goto_48

    :catchall_45
    move-exception v0

    .line 3
    :try_start_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    throw v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_4c

    .line 6
    :cond_48
    :goto_48
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_4c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long p1, p1, v0

    if-nez p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return v0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;II)J
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public getMetadata()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:I

    return v0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWindowIndex(I)I
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_9

    .line 1
    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 3
    aget v1, v1, v0

    if-ge p1, v1, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    :goto_1c
    if-ne v0, v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    :cond_20
    return v0
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result p1

    return p1
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    .line 2
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public releaseReference()V
    .registers 5

    .line 1
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:I

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 3
    invoke-static {p1, v0, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v4

    .line 4
    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v4

    .line 5
    invoke-static {p1, v0, v4, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x3e8

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    .line 6
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_32

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->releaseReference()V

    :cond_32
    return-void
.end method

.method public final zaa()V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaf:[Ljava/lang/String;

    .line 2
    array-length v3, v2

    if-ge v1, v3, :cond_18

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    .line 3
    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 4
    array-length v2, v1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    move v2, v0

    .line 5
    :goto_20
    array-length v3, v1

    if-ge v0, v3, :cond_3a

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    .line 6
    aput v2, v3, v0

    .line 7
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v3

    sub-int v3, v2, v3

    .line 8
    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_3a
    iput v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return-void
.end method

.method public final zab(Ljava/lang/String;II)F
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result p1

    return p1
.end method

.method public final zac(Ljava/lang/String;II)D
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zad(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .registers 6

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Landroid/database/CursorWindow;

    .line 2
    aget-object p3, v0, p3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p2, p1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

###### Class com.google.android.gms.common.data.DataHolder.Builder (com.google.android.gms.common.data.DataHolder$Builder)
.class public Lcom/google/android/gms/common/data/DataHolder$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zaa:[Ljava/lang/String;

.field private final zab:Ljava/util/ArrayList;

.field private final zac:Ljava/util/HashMap;


# direct methods
.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zaa:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    .line 3
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public build(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;[B)V

    return-object v0
.end method

.method public build(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 9

    .line 2
    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;I[B)V

    return-object v0
.end method

.method public withRow(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .registers 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 6
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zaa(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;

    move-result-object p1

    return-object p1
.end method

.method public zaa(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .registers 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method final synthetic zab()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zaa:[Ljava/lang/String;

    return-object v0
.end method

.method final synthetic zac()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab:Ljava/util/ArrayList;

    return-object v0
.end method
