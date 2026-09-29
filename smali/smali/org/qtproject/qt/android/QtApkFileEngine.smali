###### Class org.qtproject.qt.android.QtApkFileEngine (org.qtproject.qt.android.QtApkFileEngine)
.class Lorg/qtproject/qt/android/QtApkFileEngine;
.super Ljava/lang/Object;
.source "QtApkFileEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;
    }
.end annotation


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtApkFileEngine"

.field private static m_appApkPath:Ljava/lang/String;


# instance fields
.field private m_assetFd:Landroid/content/res/AssetFileDescriptor;

.field private m_assetInputStream:Ljava/io/FileInputStream;

.field private final m_assetManager:Landroid/content/res/AssetManager;

.field private m_pos:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_pos:J

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetManager:Landroid/content/res/AssetManager;

    return-void
.end method

.method static getApkFileInfos(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 177
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 179
    :try_start_f
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_b3

    .line 180
    :try_start_14
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    .line 181
    :cond_18
    :goto_18
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_a9

    const-string v5, "/"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_57

    .line 182
    :try_start_22
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 183
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    .line 186
    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 187
    new-instance v9, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;

    invoke-direct {v9}, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;-><init>()V

    .line 188
    iput-object v8, v9, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->relativePath:Ljava/lang/String;

    .line 189
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    iput-boolean v10, v9, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->isDir:Z

    .line 190
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    iput-wide v10, v9, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->size:J

    .line 191
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v8, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 199
    :cond_57
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move v4, v7

    :goto_68
    add-int/2addr v4, v6

    .line 201
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_5b

    .line 202
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 203
    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_68

    .line 207
    :cond_78
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    new-instance v2, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;

    invoke-direct {v2}, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;-><init>()V

    .line 209
    iput-object v1, v2, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->relativePath:Ljava/lang/String;

    .line 210
    iput-boolean v6, v2, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->isDir:Z

    const-wide/16 v4, -0x1

    .line 211
    iput-wide v4, v2, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->size:J

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 216
    :cond_99
    new-instance p0, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_a5
    .catchall {:try_start_22 .. :try_end_a5} :catchall_a9

    .line 217
    :try_start_a5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_b3

    return-object v0

    :catchall_a9
    move-exception p0

    .line 179
    :try_start_aa
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_ae

    goto :goto_b2

    :catchall_ae
    move-exception v1

    :try_start_af
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b2
    throw p0
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b3} :catch_b3

    :catch_b3
    move-exception p0

    .line 218
    sget-object v1, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to list App\'s APK files with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static getAppApkFilePath()Ljava/lang/String;
    .registers 5

    .line 139
    sget-object v0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_appApkPath:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 143
    :try_start_6
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 146
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_3f

    .line 147
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda0;-><init>()V

    .line 148
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 150
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lorg/qtproject/qt/android/QtApkFileEngine;->m_appApkPath:Ljava/lang/String;

    if-nez v2, :cond_3f

    .line 154
    sget-object v2, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    const-string v3, "No ABI specific split APK found, defaulting to the main APK."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_3f
    sget-object v2, Lorg/qtproject/qt/android/QtApkFileEngine;->m_appApkPath:Ljava/lang/String;

    if-nez v2, :cond_47

    .line 158
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sput-object v1, Lorg/qtproject/qt/android/QtApkFileEngine;->m_appApkPath:Ljava/lang/String;
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_47} :catch_4a

    .line 163
    :cond_47
    sget-object v0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_appApkPath:Ljava/lang/String;

    return-object v0

    :catch_4a
    move-exception v1

    .line 160
    sget-object v2, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get the app APK path with "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic lambda$getApkFileInfos$0(Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;)Ljava/lang/String;
    .registers 1

    .line 216
    iget-object p0, p0, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;->relativePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$getAppApkFilePath$0(Ljava/lang/String;)Z
    .registers 3

    .line 148
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getAppApkFilePath$1(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method close()Z
    .registers 5

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 65
    :cond_7
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetFd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_24

    .line 66
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception v0

    .line 68
    sget-object v1, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to close resources with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_24
    :goto_24
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetFd:Landroid/content/res/AssetFileDescriptor;

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    return v0
.end method

.method getMappedByteBuffer(JJ)Ljava/nio/MappedByteBuffer;
    .registers 12

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long v3, v2, p1

    .line 98
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    .line 99
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object p1

    :catch_1c
    move-exception v0

    move-object p1, v0

    .line 104
    sget-object p2, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to map APK file to memory with "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method open(Ljava/lang/String;)Z
    .registers 5

    .line 51
    :try_start_0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetFd:Landroid/content/res/AssetFileDescriptor;

    .line 52
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_24

    :catch_f
    move-exception p1

    .line 54
    sget-object v0, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to open the app APK with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_24
    iget-object p1, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method pos()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_pos:J

    return-wide v0
.end method

.method read(J)[B
    .registers 10

    .line 112
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 115
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 118
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    int-to-long v5, v4

    cmp-long v5, v5, p1

    if-gez v5, :cond_2b

    long-to-int v5, p1

    sub-int/2addr v5, v4

    .line 122
    :try_start_18
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 123
    iget-object v6, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v6, v2, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_26

    goto :goto_2b

    .line 125
    :cond_26
    invoke-virtual {v0, v2, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v4, v5

    goto :goto_11

    .line 129
    :cond_2b
    :goto_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_2f

    goto :goto_44

    :catch_2f
    move-exception p1

    .line 131
    sget-object p2, Lorg/qtproject/qt/android/QtApkFileEngine;->QtTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read content with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method seek(I)Z
    .registers 4

    .line 81
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/io/FileInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    :try_start_a
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->mark(I)V

    .line 84
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_assetInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->reset()V

    int-to-long v0, p1

    .line 85
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine;->m_pos:J
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_19

    const/4 p1, 0x1

    return p1

    :catch_19
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

###### Class org.qtproject.qt.android.QtApkFileEngine.JFileInfo (org.qtproject.qt.android.QtApkFileEngine$JFileInfo)
.class Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;
.super Ljava/lang/Object;
.source "QtApkFileEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtApkFileEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JFileInfo"
.end annotation


# instance fields
.field isDir:Z

.field relativePath:Ljava/lang/String;

.field size:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtApkFileEngine;->lambda$getAppApkFilePath$0(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtApkFileEngine;->lambda$getAppApkFilePath$1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtApkFileEngine$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtApkFileEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;

    invoke-static {p1}, Lorg/qtproject/qt/android/QtApkFileEngine;->lambda$getApkFileInfos$0(Lorg/qtproject/qt/android/QtApkFileEngine$JFileInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
