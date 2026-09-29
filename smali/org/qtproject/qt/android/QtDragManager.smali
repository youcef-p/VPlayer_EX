###### Class org.qtproject.qt.android.QtDragManager (org.qtproject.qt.android.QtDragManager)
.class Lorg/qtproject/qt/android/QtDragManager;
.super Ljava/lang/Object;
.source "QtDragManager.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_MIME_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final TAG:Ljava/lang/String; = "QtDragManager"

.field private static m_instance:Lorg/qtproject/qt/android/QtDragManager;


# instance fields
.field private m_dragPermissions:Landroid/view/DragAndDropPermissions;

.field private volatile m_nativePointer:J

.field private volatile m_sourceView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_dragPermissions:Landroid/view/DragAndDropPermissions;

    return-void
.end method

.method static declared-synchronized clearNativePointer(J)V
    .registers 6

    const-class v0, Lorg/qtproject/qt/android/QtDragManager;

    monitor-enter v0

    .line 52
    :try_start_3
    invoke-static {}, Lorg/qtproject/qt/android/QtDragManager;->getInstance()Lorg/qtproject/qt/android/QtDragManager;

    move-result-object v1

    .line 53
    iget-wide v2, v1, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_14

    const-wide/16 p0, 0x0

    .line 54
    iput-wide p0, v1, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    const/4 p0, 0x0

    .line 58
    iput-object p0, v1, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 60
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method

.method static declared-synchronized getInstance()Lorg/qtproject/qt/android/QtDragManager;
    .registers 2

    const-class v0, Lorg/qtproject/qt/android/QtDragManager;

    monitor-enter v0

    .line 38
    :try_start_3
    sget-object v1, Lorg/qtproject/qt/android/QtDragManager;->m_instance:Lorg/qtproject/qt/android/QtDragManager;

    if-nez v1, :cond_e

    .line 39
    new-instance v1, Lorg/qtproject/qt/android/QtDragManager;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtDragManager;-><init>()V

    sput-object v1, Lorg/qtproject/qt/android/QtDragManager;->m_instance:Lorg/qtproject/qt/android/QtDragManager;

    .line 40
    :cond_e
    sget-object v1, Lorg/qtproject/qt/android/QtDragManager;->m_instance:Lorg/qtproject/qt/android/QtDragManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method static native onDragEvent(JIIFF[Ljava/lang/String;[Ljava/lang/String;Z)Z
.end method

.method private releaseDragPermissions()V
    .registers 2

    .line 150
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_dragPermissions:Landroid/view/DragAndDropPermissions;

    if-eqz v0, :cond_a

    .line 151
    invoke-virtual {v0}, Landroid/view/DragAndDropPermissions;->release()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_dragPermissions:Landroid/view/DragAndDropPermissions;

    :cond_a
    return-void
.end method

.method static declared-synchronized setNativePointer(J)V
    .registers 4

    const-class v0, Lorg/qtproject/qt/android/QtDragManager;

    monitor-enter v0

    .line 46
    :try_start_3
    invoke-static {}, Lorg/qtproject/qt/android/QtDragManager;->getInstance()Lorg/qtproject/qt/android/QtDragManager;

    move-result-object v1

    iput-wide p0, v1, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 47
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p0
.end method


# virtual methods
.method cancelDrag()V
    .registers 2

    .line 142
    new-instance v0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtDragManager;)V

    invoke-static {v0}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$cancelDrag$0$org-qtproject-qt-android-QtDragManager()V
    .registers 2

    .line 143
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelDragAndDrop()V

    :cond_9
    return-void
.end method

.method synthetic lambda$startDrag$0$org-qtproject-qt-android-QtDragManager([Ljava/lang/String;[Ljava/lang/String;Lorg/qtproject/qt/android/QtWindow;Landroid/graphics/Bitmap;II)V
    .registers 23

    .line 0
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v10, v5

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    .line 78
    :goto_e
    :try_start_e
    array-length v11, v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_c3

    const-string v12, "content"

    const-string v13, "[\\r\\n]+"

    if-ge v5, v11, :cond_5c

    .line 79
    :try_start_15
    aget-object v11, p2, v5

    .line 80
    aget-object v14, v0, v5

    .line 81
    const-string v15, "text/html"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23

    move-object v7, v11

    goto :goto_59

    .line 83
    :cond_23
    const-string v15, "text/plain"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2d

    move-object v6, v11

    goto :goto_59

    .line 85
    :cond_2d
    const-string v15, "text/uri-list"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_59

    .line 86
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_59

    const/4 v14, 0x2

    .line 87
    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v3

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 88
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_59

    .line 90
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 91
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    move-object v9, v11

    :cond_59
    :goto_59
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 96
    :cond_5c
    array-length v5, v0

    const/4 v11, 0x1

    if-lez v5, :cond_62

    move v5, v11

    goto :goto_63

    :cond_62
    move v5, v3

    :goto_63
    if-eqz v5, :cond_66

    goto :goto_6c

    .line 97
    :cond_66
    new-array v0, v11, [Ljava/lang/String;

    const-string v5, "application/octet-stream"

    aput-object v5, v0, v3

    .line 98
    :goto_6c
    new-instance v5, Landroid/content/ClipData$Item;

    invoke-direct {v5, v6, v7, v4, v8}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 99
    new-instance v6, Landroid/content/ClipData;

    new-instance v7, Landroid/content/ClipDescription;

    const-string v8, "DragClip"

    invoke-direct {v7, v8, v0}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v6, v7, v5}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    if-eqz v9, :cond_aa

    .line 102
    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 103
    :goto_83
    array-length v5, v0

    if-ge v11, v5, :cond_aa

    .line 104
    aget-object v5, v0, v11

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a7

    .line 106
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 107
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v10, v7

    .line 108
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v6, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    :cond_a7
    add-int/lit8 v11, v11, 0x1

    goto :goto_83

    .line 112
    :cond_aa
    new-instance v0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;

    move-object/from16 v5, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct {v0, v2, v5, v7, v8}, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;II)V

    .line 114
    iput-object v2, v1, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    if-eqz v10, :cond_bc

    const/16 v5, 0x101

    goto :goto_be

    :cond_bc
    const/16 v5, 0x100

    .line 121
    :goto_be
    invoke-virtual {v2, v6, v0, v1, v5}, Lorg/qtproject/qt/android/QtWindow;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_c2} :catch_c3

    goto :goto_dd

    :catch_c3
    move-exception v0

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "startDragAndDrop() failed on window id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "QtDragManager"

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v3

    :goto_dd
    if-nez v0, :cond_f7

    .line 128
    iput-object v4, v1, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    .line 129
    iget-wide v5, v1, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_f7

    .line 131
    new-array v11, v3, [Ljava/lang/String;

    .line 132
    invoke-virtual {v2}, Lorg/qtproject/qt/android/QtWindow;->getId()I

    move-result v7

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v12, v11

    invoke-static/range {v5 .. v13}, Lorg/qtproject/qt/android/QtDragManager;->onDragEvent(JIIFF[Ljava/lang/String;[Ljava/lang/String;Z)Z

    :cond_f7
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 16

    .line 171
    const-string v1, "QtDragManager"

    const-string v0, ""

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    const/4 v2, 0x4

    if-ne v5, v2, :cond_11

    const/4 v2, 0x0

    .line 174
    iput-object v2, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtDragManager;->releaseDragPermissions()V

    .line 178
    :cond_11
    iget-wide v2, p0, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    const/4 v6, 0x0

    if-nez v4, :cond_1b

    return v6

    :cond_1b
    const/4 v4, 0x1

    if-ne v5, v4, :cond_1f

    return v4

    .line 185
    :cond_1f
    new-array v4, v6, [Ljava/lang/String;

    .line 186
    new-array v7, v6, [Ljava/lang/String;

    .line 187
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v8

    if-eqz v8, :cond_3d

    .line 189
    invoke-virtual {v8}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    .line 190
    new-array v9, v4, [Ljava/lang/String;

    move v10, v6

    :goto_30
    if-ge v10, v4, :cond_3b

    .line 192
    invoke-virtual {v8, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_30

    :cond_3b
    move-object v8, v9

    goto :goto_3e

    :cond_3d
    move-object v8, v4

    :goto_3e
    const/4 v4, 0x3

    if-ne v5, v4, :cond_112

    .line 198
    :try_start_41
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_112

    .line 199
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_112

    .line 200
    array-length v9, v8

    new-array v7, v9, [Ljava/lang/String;

    .line 201
    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v10, v6

    .line 204
    :goto_59
    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-ge v10, v11, :cond_7e

    .line 205
    invoke-virtual {v4, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_7b

    .line 207
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_74

    const/16 v12, 0xa

    .line 208
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    :cond_74
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 212
    :cond_7e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9a

    .line 213
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtDragManager;->releaseDragPermissions()V

    .line 214
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->activity()Landroid/app/Activity;

    move-result-object v10

    if-eqz v10, :cond_9a

    .line 216
    invoke-virtual {v10, p2}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v10

    iput-object v10, p0, Lorg/qtproject/qt/android/QtDragManager;->m_dragPermissions:Landroid/view/DragAndDropPermissions;

    if-nez v10, :cond_9a

    .line 218
    const-string v10, "Drag and drop reading permissions denied."

    invoke-static {v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_9a
    invoke-virtual {v4, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 224
    :goto_9e
    array-length v10, v8

    if-ge v6, v10, :cond_112

    .line 225
    const-string v10, "text/html"

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b6

    .line 226
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b2

    goto :goto_b3

    :cond_b2
    move-object v10, v0

    .line 227
    :goto_b3
    aput-object v10, v7, v6

    goto :goto_109

    .line 228
    :cond_b6
    const-string v10, "text/uri-list"

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c7

    .line 229
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_109

    .line 230
    :cond_c7
    const-string v10, "text/plain"

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 232
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    if-nez v10, :cond_df

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_df
    if-eqz v10, :cond_e6

    .line 235
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_e7

    :cond_e6
    move-object v10, v0

    :goto_e7
    aput-object v10, v7, v6

    goto :goto_109

    .line 237
    :cond_ea
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v10

    if-eqz v10, :cond_f7

    .line 239
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_109

    .line 241
    :cond_f7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_106

    .line 242
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_107

    :cond_106
    move-object v10, v0

    :goto_107
    aput-object v10, v7, v6
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_109} :catch_10c

    :goto_109
    add-int/lit8 v6, v6, 0x1

    goto :goto_9e

    :catch_10c
    move-exception v0

    .line 248
    const-string v4, "Failed to read dropped clip data"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_112
    move-object v9, v7

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v7

    .line 253
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v10

    .line 252
    invoke-static/range {v2 .. v10}, Lorg/qtproject/qt/android/QtDragManager;->onDragEvent(JIIFF[Ljava/lang/String;[Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method onSourceWindowDetached(Landroid/view/View;)V
    .registers 12

    .line 158
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    if-eq v0, p1, :cond_5

    goto :goto_1f

    :cond_5
    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Lorg/qtproject/qt/android/QtDragManager;->m_sourceView:Landroid/view/View;

    .line 161
    iget-wide v1, p0, Lorg/qtproject/qt/android/QtDragManager;->m_nativePointer:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 163
    new-array v7, v0, [Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v8, v7

    invoke-static/range {v1 .. v9}, Lorg/qtproject/qt/android/QtDragManager;->onDragEvent(JIIFF[Ljava/lang/String;[Ljava/lang/String;Z)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method startDrag(Lorg/qtproject/qt/android/QtWindow;[Ljava/lang/String;[Ljava/lang/String;Landroid/graphics/Bitmap;II)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    .line 70
    :cond_3
    new-instance v0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtDragManager;[Ljava/lang/String;[Ljava/lang/String;Lorg/qtproject/qt/android/QtWindow;Landroid/graphics/Bitmap;II)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;Z)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtDragManager.QtDragShadowBuilder (org.qtproject.qt.android.QtDragManager$QtDragShadowBuilder)
.class Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "QtDragManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtDragManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QtDragShadowBuilder"
.end annotation


# instance fields
.field private final m_bitmap:Landroid/graphics/Bitmap;

.field private final m_hotSpotX:I

.field private final m_hotSpotY:I


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Bitmap;II)V
    .registers 5

    .line 264
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 265
    iput-object p2, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_bitmap:Landroid/graphics/Bitmap;

    .line 266
    iput p3, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_hotSpotX:I

    .line 267
    iput p4, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_hotSpotY:I

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .registers 5

    .line 285
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 286
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    .line 273
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 274
    invoke-super {p0, p1, p2}, Landroid/view/View$DragShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void

    .line 278
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 279
    iget p1, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_hotSpotX:I

    iget v0, p0, Lorg/qtproject/qt/android/QtDragManager$QtDragShadowBuilder;->m_hotSpotY:I

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtDragManager;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Lorg/qtproject/qt/android/QtWindow;

.field public final synthetic f$4:Landroid/graphics/Bitmap;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtDragManager;[Ljava/lang/String;[Ljava/lang/String;Lorg/qtproject/qt/android/QtWindow;Landroid/graphics/Bitmap;II)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtDragManager;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$3:Lorg/qtproject/qt/android/QtWindow;

    iput-object p5, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap;

    iput p6, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtDragManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$3:Lorg/qtproject/qt/android/QtWindow;

    iget-object v4, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$4:Landroid/graphics/Bitmap;

    iget v5, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda0;->f$6:I

    invoke-virtual/range {v0 .. v6}, Lorg/qtproject/qt/android/QtDragManager;->lambda$startDrag$0$org-qtproject-qt-android-QtDragManager([Ljava/lang/String;[Ljava/lang/String;Lorg/qtproject/qt/android/QtWindow;Landroid/graphics/Bitmap;II)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtDragManager;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtDragManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtDragManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtDragManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtDragManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtDragManager;->lambda$cancelDrag$0$org-qtproject-qt-android-QtDragManager()V

    return-void
.end method
