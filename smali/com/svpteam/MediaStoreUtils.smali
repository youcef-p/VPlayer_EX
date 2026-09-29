###### Class com.svpteam.MediaStoreUtils (com.svpteam.MediaStoreUtils)
.class public Lcom/svpteam/MediaStoreUtils;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/svpteam/MediaStoreUtils$VideoInfo;
    }
.end annotation


# static fields
.field protected static svp:Lcom/svpteam/SVPActivityBase;


# direct methods
.method public constructor <init>(Lcom/svpteam/SVPActivityBase;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sput-object p1, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/String;)V
    .registers 6

    .line 38
    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {v1}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/svpteam/MediaStoreUtils$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/svpteam/MediaStoreUtils$1;-><init>(Lcom/svpteam/MediaStoreUtils;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v0, p1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13

    .line 53
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_13

    .line 54
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v4, -0x1

    goto :goto_52

    .line 58
    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1e

    .line 59
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_20

    .line 60
    :cond_1e
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_20
    move-object v5, v0

    .line 62
    sget-object v0, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {v0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v10, "_id"

    aput-object v10, v6, v0

    new-array v8, v2, [Ljava/lang/String;

    aput-object p1, v8, v0

    const/4 v9, 0x0

    const-string v7, "_data=? "

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7d

    .line 66
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 68
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    .line 69
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 70
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    move-wide v4, v6

    .line 77
    :goto_52
    :try_start_52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_68

    .line 78
    sget-object v0, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {v0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x100

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_68
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_72

    .line 81
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 82
    :cond_72
    sget-object p1, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {p1}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v5, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7c} :catch_7d

    return-object p1

    :catch_7d
    :cond_7d
    return-object v3
.end method

.method public isReadable(Ljava/lang/String;)Z
    .registers 9

    .line 94
    const-string v0, "external"

    if-eq p1, v0, :cond_9

    invoke-static {p1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_b

    :cond_9
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_b
    move-object v1, p1

    const/4 p1, 0x0

    const/4 v6, 0x1

    .line 96
    :try_start_e
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, p1

    .line 97
    sget-object v0, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {v0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_26} :catch_27

    :cond_26
    return v6

    :catch_27
    return p1
.end method

.method protected onDestroy()V
    .registers 1

    return-void
.end method

.method public readVideos(Ljava/lang/String;I)[Lcom/svpteam/MediaStoreUtils$VideoInfo;
    .registers 22

    move/from16 v0, p2

    .line 108
    const-string v1, "external"

    move-object/from16 v2, p1

    if-eq v2, v1, :cond_d

    invoke-static {v2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_f

    :cond_d
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_f
    move-object v3, v1

    const/4 v1, 0x6

    .line 109
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v1

    const/4 v2, 0x1

    const-string v9, "_display_name"

    aput-object v9, v4, v2

    const/4 v5, 0x2

    const-string v10, "duration"

    aput-object v10, v4, v5

    const/4 v5, 0x3

    const-string v11, "_size"

    aput-object v11, v4, v5

    const/4 v5, 0x4

    const-string v12, "date_modified"

    aput-object v12, v4, v5

    const/4 v5, 0x5

    const-string v13, "_data"

    aput-object v13, v4, v5

    if-lez v0, :cond_36

    .line 117
    const-string v5, "duration>=?"

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    if-lez v0, :cond_45

    .line 118
    new-array v2, v2, [Ljava/lang/String;

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    move-object v6, v2

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    .line 119
    :goto_46
    const-string v7, "LOWER(_display_name) ASC"

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    :try_start_4d
    sget-object v1, Lcom/svpteam/MediaStoreUtils;->svp:Lcom/svpteam/SVPActivityBase;

    invoke-virtual {v1}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 126
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 127
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 128
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 129
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 130
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 131
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 133
    :goto_71
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_ba

    .line 135
    new-instance v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_79} :catch_c2

    move-object/from16 v10, p0

    :try_start_7b
    invoke-direct {v9, v10}, Lcom/svpteam/MediaStoreUtils$VideoInfo;-><init>(Lcom/svpteam/MediaStoreUtils;)V

    .line 136
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 137
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->name:Ljava/lang/String;

    .line 138
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_8c} :catch_c4

    const-wide/16 v17, 0x3e8

    const/16 p1, 0x0

    :try_start_90
    div-long v14, v15, v17

    long-to-int v13, v14

    iput v13, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->duration:I

    .line 139
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    long-to-int v13, v13

    iput v13, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->size:I

    .line 140
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    long-to-int v13, v13

    iput v13, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->time:I

    .line 141
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->path:Ljava/lang/String;

    .line 142
    invoke-static {v3, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/svpteam/MediaStoreUtils$VideoInfo;->uri:Ljava/lang/String;

    .line 143
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_ba
    move-object/from16 v10, p0

    const/16 p1, 0x0

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_90 .. :try_end_c1} :catch_c6

    goto :goto_c6

    :catch_c2
    :cond_c2
    move-object/from16 v10, p0

    :catch_c4
    const/16 p1, 0x0

    .line 150
    :catch_c6
    :goto_c6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cd

    return-object p1

    .line 152
    :cond_cd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/svpteam/MediaStoreUtils$VideoInfo;

    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

###### Class com.svpteam.MediaStoreUtils.AnonymousClass1 (com.svpteam.MediaStoreUtils$1)
.class Lcom/svpteam/MediaStoreUtils$1;
.super Landroid/database/ContentObserver;
.source "MediaStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/MediaStoreUtils;->addListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/MediaStoreUtils;

.field final synthetic val$vol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/svpteam/MediaStoreUtils;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    .line 40
    iput-object p1, p0, Lcom/svpteam/MediaStoreUtils$1;->this$0:Lcom/svpteam/MediaStoreUtils;

    iput-object p3, p0, Lcom/svpteam/MediaStoreUtils$1;->val$vol:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 43
    iget-object p1, p0, Lcom/svpteam/MediaStoreUtils$1;->val$vol:Ljava/lang/String;

    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->mediaChanged(Ljava/lang/String;)V

    return-void
.end method

###### Class com.svpteam.MediaStoreUtils.VideoInfo (com.svpteam.MediaStoreUtils$VideoInfo)
.class public Lcom/svpteam/MediaStoreUtils$VideoInfo;
.super Ljava/lang/Object;
.source "MediaStoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/svpteam/MediaStoreUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoInfo"
.end annotation


# instance fields
.field public duration:I

.field public name:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:I

.field final synthetic this$0:Lcom/svpteam/MediaStoreUtils;

.field public time:I

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/svpteam/MediaStoreUtils;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/svpteam/MediaStoreUtils$VideoInfo;->this$0:Lcom/svpteam/MediaStoreUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
