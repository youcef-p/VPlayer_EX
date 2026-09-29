###### Class androidx.profileinstaller.BenchmarkOperation (androidx.profileinstaller.BenchmarkOperation)
.class Landroidx/profileinstaller/BenchmarkOperation;
.super Ljava/lang/Object;
.source "BenchmarkOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/profileinstaller/BenchmarkOperation$Api24ContextHelper;,
        Landroidx/profileinstaller/BenchmarkOperation$Api21ContextHelper;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteFilesRecursively(Ljava/io/File;)Z
    .registers 7

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return v0

    .line 69
    :cond_f
    array-length v2, p0

    move v3, v0

    move v4, v1

    :goto_12
    if-ge v3, v2, :cond_24

    aget-object v5, p0, v3

    .line 70
    invoke-static {v5}, Landroidx/profileinstaller/BenchmarkOperation;->deleteFilesRecursively(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz v4, :cond_20

    move v4, v1

    goto :goto_21

    :cond_20
    move v4, v0

    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    return v4

    .line 75
    :cond_25
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return v1
.end method

.method static dropShaderCache(Landroid/content/Context;Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;)V
    .registers 4

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_f

    .line 37
    invoke-static {p0}, Landroidx/profileinstaller/BenchmarkOperation$Api24ContextHelper;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    goto :goto_17

    .line 42
    :cond_f
    invoke-static {p0}, Landroidx/profileinstaller/BenchmarkOperation$Api24ContextHelper;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 41
    invoke-static {p0}, Landroidx/profileinstaller/BenchmarkOperation$Api21ContextHelper;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 49
    :goto_17
    invoke-static {p0}, Landroidx/profileinstaller/BenchmarkOperation;->deleteFilesRecursively(Ljava/io/File;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    const/16 p0, 0xe

    .line 50
    invoke-virtual {p1, p0, v0}, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->onResultReceived(ILjava/lang/Object;)V

    return-void

    :cond_24
    const/16 p0, 0xf

    .line 52
    invoke-virtual {p1, p0, v0}, Landroidx/profileinstaller/ProfileInstallReceiver$ResultDiagnostics;->onResultReceived(ILjava/lang/Object;)V

    return-void
.end method

###### Class androidx.profileinstaller.BenchmarkOperation.Api21ContextHelper (androidx.profileinstaller.BenchmarkOperation$Api21ContextHelper)
.class Landroidx/profileinstaller/BenchmarkOperation$Api21ContextHelper;
.super Ljava/lang/Object;
.source "BenchmarkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/BenchmarkOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api21ContextHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.profileinstaller.BenchmarkOperation.Api24ContextHelper (androidx.profileinstaller.BenchmarkOperation$Api24ContextHelper)
.class Landroidx/profileinstaller/BenchmarkOperation$Api24ContextHelper;
.super Ljava/lang/Object;
.source "BenchmarkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/BenchmarkOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api24ContextHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method
