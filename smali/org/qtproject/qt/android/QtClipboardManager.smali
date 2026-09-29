###### Class org.qtproject.qt.android.QtClipboardManager (org.qtproject.qt.android.QtClipboardManager)
.class Lorg/qtproject/qt/android/QtClipboardManager;
.super Ljava/lang/Object;
.source "QtClipboardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QtClipboardManager"


# instance fields
.field private m_clipboardManager:Landroid/content/ClipboardManager;

.field private final m_nativePointer:J

.field private m_usePrimaryClip:Z


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    .line 31
    iput-wide p2, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_nativePointer:J

    .line 32
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->registerClipboardManager(Landroid/content/Context;)V

    return-void
.end method

.method private getClipboardUris()[Ljava/lang/String;
    .registers 5

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :try_start_5
    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 219
    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_42

    const/4 v2, 0x0

    .line 221
    :goto_18
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_42

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 223
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_3a

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_3a
    move-exception v1

    .line 227
    const-string v2, "QtClipboardManager"

    const-string v3, "Failed to get clipboard data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private hasClipboardMimeType(Ljava/lang/String;)Z
    .registers 6

    .line 157
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 160
    :cond_6
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-nez v0, :cond_d

    return v1

    :cond_d
    move v2, v1

    .line 165
    :goto_e
    invoke-virtual {v0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 166
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v3, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_23
    return v1
.end method

.method static hasClipboardText(Landroid/content/Context;)Z
    .registers 5

    .line 82
    const-string v0, "clipboard"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return v0

    .line 88
    :cond_c
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-nez p0, :cond_13

    return v0

    :cond_13
    move v1, v0

    .line 93
    :goto_14
    invoke-virtual {p0}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 94
    invoke-virtual {p0, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    const-string v3, "text/(.*)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_2b
    return v0
.end method

.method static native onClipboardDataChanged(J)V
.end method

.method private registerClipboardManager(Landroid/content/Context;)V
    .registers 4

    if-eqz p1, :cond_18

    .line 38
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 39
    new-instance v1, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v0}, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtClipboardManager;Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V

    invoke-static {v1}, Lorg/qtproject/qt/android/QtNative;->runAction(Ljava/lang/Runnable;)V

    .line 49
    :try_start_10
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    return-void
.end method

.method private updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V
    .registers 6

    .line 128
    :try_start_0
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    if-eqz v0, :cond_22

    .line 129
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    .line 131
    invoke-virtual {v1, p2, p1}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    .line 136
    iget-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void

    .line 138
    :cond_22
    iget-object p2, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p1, 0x1

    .line 139
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p1

    .line 142
    const-string p2, "QtClipboardManager"

    const-string v0, "Failed to set clipboard data"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method clearClipData()V
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_9

    .line 61
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->clearPrimaryClip()V

    :cond_9
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_usePrimaryClip:Z

    return-void
.end method

.method getClipboardHtml()Ljava/lang/String;
    .registers 4

    .line 183
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 184
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_37

    const/4 v1, 0x0

    .line 186
    :goto_13
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2f

    return-object v0

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_2f
    move-exception v0

    .line 192
    const-string v1, "QtClipboardManager"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_37
    const-string v0, ""

    return-object v0
.end method

.method getClipboardText()Ljava/lang/String;
    .registers 4

    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_3b

    const/4 v1, 0x0

    .line 114
    :goto_13
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 115
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_33

    return-object v0

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :catch_33
    move-exception v0

    .line 120
    const-string v1, "QtClipboardManager"

    const-string v2, "Failed to get clipboard data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :cond_3b
    const-string v0, ""

    return-object v0
.end method

.method hasClipboardHtml()Z
    .registers 2

    .line 176
    const-string v0, "text/html"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasClipboardText()Z
    .registers 2

    .line 104
    const-string v0, "text/(.*)"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasClipboardUri()Z
    .registers 2

    .line 210
    const-string v0, "text/uri-list"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$registerClipboardManager$0$org-qtproject-qt-android-QtClipboardManager(Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V
    .registers 4

    .line 40
    const-string v0, "clipboard"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz p1, :cond_14

    .line 43
    new-instance v0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtClipboardManager;)V

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 46
    :cond_14
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method synthetic lambda$registerClipboardManager$1$org-qtproject-qt-android-QtClipboardManager()V
    .registers 3

    .line 44
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_nativePointer:J

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/QtClipboardManager;->onClipboardDataChanged(J)V

    return-void
.end method

.method setClipboardHtml(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 149
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_d

    .line 150
    const-string v0, "text/html"

    invoke-static {v0, p2, p3}, Landroid/content/ClipData;->newHtmlText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object p2

    .line 151
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method setClipboardText(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 74
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_d

    .line 75
    const-string v0, "text/plain"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    .line 76
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method setClipboardUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 200
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager;->m_clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_15

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "text/uri-list"

    .line 202
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 201
    invoke-static {v0, v1, p2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p2

    .line 203
    invoke-direct {p0, p2, p1}, Lorg/qtproject/qt/android/QtClipboardManager;->updatePrimaryClip(Landroid/content/ClipData;Landroid/content/Context;)V

    :cond_15
    return-void
.end method

###### Class org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtClipboardManager;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtClipboardManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    return-void
.end method


# virtual methods
.method public final onPrimaryClipChanged()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtClipboardManager;->lambda$registerClipboardManager$1$org-qtproject-qt-android-QtClipboardManager()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtClipboardManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtClipboardManager;Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    iput-object p2, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtClipboardManager;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtClipboardManager$$ExternalSyntheticLambda1;->f$2:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtClipboardManager;->lambda$registerClipboardManager$0$org-qtproject-qt-android-QtClipboardManager(Landroid/content/Context;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
