###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt)
.class Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;
.super Lkotlin/io/path/PathsKt__PathReadWriteKt;
.source "PathRecursiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPathRecursiveFunctions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,530:1\n376#1,2:534\n384#1:536\n384#1:537\n378#1,4:538\n376#1,2:542\n384#1:544\n378#1,4:545\n384#1:549\n376#1,6:550\n376#1,2:556\n384#1:558\n378#1,4:559\n1#2:531\n1863#3,2:532\n*S KotlinDebug\n*F\n+ 1 PathRecursiveFunctions.kt\nkotlin/io/path/PathsKt__PathRecursiveFunctionsKt\n*L\n392#1:534,2\n407#1:536\n410#1:537\n392#1:538,4\n418#1:542,2\n419#1:544\n418#1:545,4\n430#1:549\n438#1:550,6\n461#1:556,2\n462#1:558\n461#1:559,4\n314#1:532,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a$\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005H\u0082\u0008\u00a2\u0006\u0002\u0008\u0006\u001a\u001d\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0008\n\u001a\'\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0008\u000e\u001a&\u0010\u000f\u001a\u0004\u0018\u0001H\u0010\"\u0004\u0008\u0000\u0010\u00102\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u0005H\u0082\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\u000c\u0010\u0013\u001a\u00020\u0001*\u00020\tH\u0000\u001a\u0019\u0010\u0014\u001a\u00020\u0001*\u00020\t2\u0006\u0010\r\u001a\u00020\tH\u0002\u00a2\u0006\u0002\u0008\u0015\u001aw\u0010\u0016\u001a\u00020\t*\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2Q\u0008\u0002\u0010\u0018\u001aK\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0017\u0012\u0017\u0012\u00150\u001dj\u0002`\u001e\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 0\u00192\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0007\u001a\u00b4\u0001\u0010\u0016\u001a\u00020\t*\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2Q\u0008\u0002\u0010\u0018\u001aK\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0017\u0012\u0017\u0012\u00150\u001dj\u0002`\u001e\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020 0\u00192\u0006\u0010!\u001a\u00020\"2C\u0008\u0002\u0010$\u001a=\u0012\u0004\u0012\u00020%\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u001c\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u001a\u0012\u0008\u0008\u001b\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020&0\u0019\u00a2\u0006\u0002\u0008\'H\u0007\u001a\u000c\u0010(\u001a\u00020\u0001*\u00020\tH\u0007\u001a\u001b\u0010)\u001a\u000c\u0012\u0008\u0012\u00060\u001dj\u0002`\u001e0**\u00020\tH\u0002\u00a2\u0006\u0002\u0008+\u001a\'\u0010,\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\t0-2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u0008.\u001a1\u0010/\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\t0-2\u0006\u0010\u001b\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u00a2\u0006\u0002\u00080\u001a5\u00101\u001a\u00020\"*\u0008\u0012\u0004\u0012\u00020\t0-2\u0006\u00102\u001a\u00020\t2\u0012\u00103\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020504\"\u000205H\u0002\u00a2\u0006\u0004\u00086\u00107\u001a\u0011\u00108\u001a\u000209*\u00020&H\u0003\u00a2\u0006\u0002\u0008:\u001a\u0011\u00108\u001a\u000209*\u00020 H\u0003\u00a2\u0006\u0002\u0008:\u00a8\u0006;"
    }
    d2 = {
        "collectIfThrows",
        "",
        "collector",
        "Lkotlin/io/path/ExceptionsCollector;",
        "function",
        "Lkotlin/Function0;",
        "collectIfThrows$PathsKt__PathRecursiveFunctionsKt",
        "insecureEnterDirectory",
        "path",
        "Ljava/nio/file/Path;",
        "insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "insecureHandleEntry",
        "entry",
        "parent",
        "insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt",
        "tryIgnoreNoSuchFileException",
        "R",
        "tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "checkFileName",
        "checkNotSameAs",
        "checkNotSameAs$PathsKt__PathRecursiveFunctionsKt",
        "copyToRecursively",
        "target",
        "onError",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "source",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "Lkotlin/io/path/OnErrorResult;",
        "followLinks",
        "",
        "overwrite",
        "copyAction",
        "Lkotlin/io/path/CopyActionContext;",
        "Lkotlin/io/path/CopyActionResult;",
        "Lkotlin/ExtensionFunctionType;",
        "deleteRecursively",
        "deleteRecursivelyImpl",
        "",
        "deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt",
        "enterDirectory",
        "Ljava/nio/file/SecureDirectoryStream;",
        "enterDirectory$PathsKt__PathRecursiveFunctionsKt",
        "handleEntry",
        "handleEntry$PathsKt__PathRecursiveFunctionsKt",
        "isDirectory",
        "entryName",
        "options",
        "",
        "Ljava/nio/file/LinkOption;",
        "isDirectory$PathsKt__PathRecursiveFunctionsKt",
        "(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z",
        "toFileVisitResult",
        "Ljava/nio/file/FileVisitResult;",
        "toFileVisitResult$PathsKt__PathRecursiveFunctionsKt",
        "kotlin-stdlib-jdk7"
    }
    k = 0x5
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
    xs = "kotlin/io/path/PathsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lkotlin/io/path/PathsKt__PathReadWriteKt;-><init>()V

    return-void
.end method

.method public static final synthetic access$copyToRecursively$copy(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 8

    .line 1
    invoke-static/range {p0 .. p7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$copyToRecursively$error(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .registers 6

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static final checkFileName(Ljava/nio/file/Path;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->getName(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_55

    const/16 v2, 0x5ee

    if-eq v1, v2, :cond_4c

    const v2, 0xb26f

    if-eq v1, v2, :cond_43

    const v2, 0xb29c

    if-eq v1, v2, :cond_3a

    const/16 v2, 0x5c0

    if-eq v1, v2, :cond_31

    const/16 v2, 0x5c1

    if-eq v1, v2, :cond_28

    goto :goto_5d

    :cond_28
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5d

    :cond_31
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5d

    :cond_3a
    const-string v1, "..\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5d

    :cond_43
    const-string v1, "../"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5d

    :cond_4c
    const-string v1, ".\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    goto :goto_5d

    :cond_55
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    :goto_5d
    return-void

    .line 491
    :cond_5e
    new-instance v0, Lkotlin/io/path/IllegalFileNameException;

    invoke-direct {v0, p0}, Lkotlin/io/path/IllegalFileNameException;-><init>(Ljava/nio/file/Path;)V

    throw v0
.end method

.method private static final checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 3

    .line 519
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_17

    .line 520
    :cond_d
    new-instance p1, Ljava/nio/file/FileSystemLoopException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    return-void
.end method

.method private static final collectIfThrows$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/ExceptionsCollector;Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/io/path/ExceptionsCollector;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 377
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 379
    invoke-virtual {p0, p1}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    return-void
.end method

.method public static final copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;Z",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "onError"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "copyAction"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    invoke-virtual {v1, p3}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_df

    const/4 v1, 0x0

    .line 170
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {p0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_c1

    if-nez p3, :cond_45

    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 176
    :cond_45
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_5c

    invoke-static {p1}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    move-result v3

    if-nez v3, :cond_5c

    move v3, v5

    goto :goto_5d

    :cond_5c
    move v3, v1

    :goto_5d
    if-eqz v3, :cond_65

    .line 178
    invoke-static/range {p0 .. p1}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v7

    if-nez v7, :cond_c1

    .line 183
    :cond_65
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v7

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_74

    goto :goto_ae

    :cond_74
    if-eqz v3, :cond_87

    .line 186
    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p1, v3}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    goto :goto_ae

    .line 188
    :cond_87
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_ae

    new-array v7, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v7, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v7}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v7

    if-eqz v7, :cond_ae

    new-array v7, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {v3, v7}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v3

    new-array v7, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, v7}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v3

    if-eqz v3, :cond_ae

    move v1, v5

    :cond_ae
    :goto_ae
    if-nez v1, :cond_b1

    goto :goto_c1

    .line 191
    :cond_b1
    new-instance v1, Ljava/nio/file/FileSystemException;

    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v3, "Recursively copying a directory into its subdirectory is prohibited."

    .line 191
    invoke-direct {v1, v0, v2, v3}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_c1
    :goto_c1
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v5

    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p3

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathsKt;->visitFileTree$default(Ljava/nio/file/Path;IZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object p1

    .line 168
    :cond_df
    new-instance v0, Ljava/nio/file/NoSuchFileException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The source file doesn\'t exist."

    invoke-direct {v0, v1, v2, v3}, Ljava/nio/file/NoSuchFileException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static final copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;ZZ)",
            "Ljava/nio/file/Path;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_1d

    .line 81
    new-instance p4, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;

    invoke-direct {p4, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;-><init>(Z)V

    check-cast p4, Lkotlin/jvm/functions/Function3;

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0

    :cond_1d
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 96
    invoke-static/range {v0 .. v6}, Lkotlin/io/path/PathsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 223
    :try_start_0
    move-object p7, p0

    check-cast p7, Ljava/util/Collection;

    invoke-interface {p7}, Ljava/util/Collection;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_17

    .line 225
    invoke-static {p6}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 226
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/file/Path;

    invoke-static {p6, p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    .line 228
    :cond_17
    sget-object p0, Lkotlin/io/path/DefaultCopyActionContext;->INSTANCE:Lkotlin/io/path/DefaultCopyActionContext;

    invoke-static {p2, p3, p4, p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p7

    invoke-interface {p1, p0, p6, p7}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/io/path/CopyActionResult;

    invoke-static {p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Ljava/nio/file/FileVisitResult;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception v0

    move-object p0, v0

    move-object p1, p5

    move-object p5, p6

    move-object p6, p0

    .line 230
    invoke-static/range {p1 .. p6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_8

    .line 161
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    :cond_8
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_13

    .line 163
    new-instance p4, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;

    invoke-direct {p4, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;-><init>(Z)V

    check-cast p4, Lkotlin/jvm/functions/Function3;

    .line 159
    :cond_13
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZILjava/lang/Object;)Ljava/nio/file/Path;
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_8

    .line 76
    sget-object p2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    check-cast p2, Lkotlin/jvm/functions/Function3;

    .line 74
    :cond_8
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/io/path/PathsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static final copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .registers 4

    .line 202
    invoke-static {p3, p0}, Lkotlin/io/path/PathsKt;->relativeTo(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 204
    invoke-interface {p0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 211
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0

    .line 205
    :cond_1a
    new-instance p1, Lkotlin/io/path/IllegalFileNameException;

    .line 208
    const-string p2, "Copying files to outside the specified target directory is prohibited. The directory being recursively copied might contain an entry with an illegal name."

    .line 205
    invoke-direct {p1, p3, p0, p2}, Lkotlin/io/path/IllegalFileNameException;-><init>(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/String;)V

    throw p1
.end method

.method private static final copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/nio/file/FileVisitResult;"
        }
    .end annotation

    .line 215
    invoke-static {p1, p2, p3, p4}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$destination$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p0, p4, p1, p5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/io/path/OnErrorResult;

    invoke-static {p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Ljava/nio/file/FileVisitResult;

    move-result-object p0

    return-object p0
.end method

.method public static final deleteRecursively(Ljava/nio/file/Path;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    invoke-static {p0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object p0

    .line 312
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 313
    new-instance v0, Ljava/nio/file/FileSystemException;

    const-string v1, "Failed to delete one or more files. See suppressed exceptions for details."

    invoke-direct {v0, v1}, Ljava/nio/file/FileSystemException;-><init>(Ljava/lang/String;)V

    .line 314
    check-cast p0, Ljava/lang/Iterable;

    .line 532
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 314
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v2, v1}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 313
    :cond_34
    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_37
    return-void
.end method

.method private static final deleteRecursivelyImpl$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Lkotlin/io/path/ExceptionsCollector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/io/path/ExceptionsCollector;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 357
    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 358
    :try_start_e
    invoke-static {v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v5
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_14

    :catchall_13
    move-object v5, v3

    :goto_14
    if-eqz v5, :cond_40

    .line 359
    check-cast v5, Ljava/io/Closeable;

    :try_start_18
    move-object v6, v5

    check-cast v6, Ljava/nio/file/DirectoryStream;

    .line 360
    instance-of v7, v6, Ljava/nio/file/SecureDirectoryStream;

    if-eqz v7, :cond_31

    .line 362
    invoke-virtual {v0, v4}, Lkotlin/io/path/ExceptionsCollector;->setPath(Ljava/nio/file/Path;)V

    .line 363
    check-cast v6, Ljava/nio/file/SecureDirectoryStream;

    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    const-string v4, "getFileName(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    goto :goto_32

    :cond_31
    move v1, v2

    .line 365
    :goto_32
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_39

    .line 359
    invoke-static {v5, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move v2, v1

    goto :goto_40

    :catchall_39
    move-exception p0

    :try_start_3a
    throw p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception v0

    invoke-static {v5, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_40
    :goto_40
    if-eqz v2, :cond_45

    .line 369
    invoke-static {p0, v3, v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 372
    :cond_45
    invoke-virtual {v0}, Lkotlin/io/path/ExceptionsCollector;->getCollectedExceptions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final enterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 420
    :try_start_2
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    sget-object v2, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-interface {p0, p1, v0}, Ljava/nio/file/SecureDirectoryStream;->newDirectoryStream(Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object p0
    :try_end_d
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2 .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    goto :goto_11

    :catch_e
    move-exception p0

    goto :goto_46

    :catch_10
    move-object p0, v1

    :goto_11
    if-eqz p0, :cond_49

    .line 419
    :try_start_13
    check-cast p0, Ljava/io/Closeable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_15} :catch_e

    .line 421
    :try_start_15
    move-object p1, p0

    check-cast p1, Ljava/nio/file/SecureDirectoryStream;

    .line 422
    invoke-interface {p1}, Ljava/nio/file/SecureDirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    .line 423
    invoke-interface {v2}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    const-string v3, "getFileName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {p1, v2, v3, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    goto :goto_1c

    .line 425
    :cond_39
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3b
    .catchall {:try_start_15 .. :try_end_3b} :catchall_3f

    .line 421
    :try_start_3b
    invoke-static {p0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_e

    goto :goto_49

    :catchall_3f
    move-exception p1

    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    :try_start_42
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_e

    .line 546
    :goto_46
    invoke-virtual {p2, p0}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    :cond_49
    :goto_49
    return-void
.end method

.method private static final handleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/ExceptionsCollector;",
            ")V"
        }
    .end annotation

    .line 390
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->enterEntry(Ljava/nio/file/Path;)V

    if-eqz p2, :cond_12

    .line 395
    :try_start_5
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 396
    invoke-static {v0}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 397
    invoke-static {v0, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    :cond_12
    const/4 p2, 0x1

    .line 399
    new-array p2, p2, [Ljava/nio/file/LinkOption;

    sget-object v0, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p0, p1, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->isDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_33

    .line 400
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result p2

    .line 402
    invoke-static {p0, p1, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->enterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 406
    invoke-virtual {p3}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_39

    if-ne p2, v0, :cond_3d

    .line 407
    :try_start_2d
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteDirectory(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3d

    .line 410
    :cond_33
    invoke-interface {p0, p1}, Ljava/nio/file/SecureDirectoryStream;->deleteFile(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_38
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_2d .. :try_end_38} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    .line 539
    invoke-virtual {p3, p0}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    .line 414
    :catch_3d
    :cond_3d
    :goto_3d
    invoke-virtual {p3, p1}, Lkotlin/io/path/ExceptionsCollector;->exitEntry(Ljava/nio/file/Path;)V

    return-void
.end method

.method private static final insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 6

    const/4 v0, 0x0

    .line 463
    :try_start_1
    invoke-static {p0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_1 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_9

    :catch_6
    move-exception p0

    goto :goto_34

    :catch_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_37

    .line 462
    :try_start_b
    check-cast v1, Ljava/io/Closeable;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_6

    .line 464
    :try_start_d
    move-object v2, v1

    check-cast v2, Ljava/nio/file/DirectoryStream;

    .line 465
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 466
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    goto :goto_14

    .line 468
    :cond_27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2d

    .line 464
    :try_start_29
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_6

    goto :goto_37

    :catchall_2d
    move-exception p0

    :try_start_2e
    throw p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    :try_start_30
    invoke-static {v1, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_34} :catch_6

    .line 560
    :goto_34
    invoke-virtual {p1, p0}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    :cond_37
    :goto_37
    return-void
.end method

.method private static final insecureHandleEntry$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V
    .registers 6

    if-eqz p1, :cond_8

    .line 441
    :try_start_2
    invoke-static {p0}, Lkotlin/io/path/PathsKt;->checkFileName(Ljava/nio/file/Path;)V

    .line 442
    invoke-static {p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->checkNotSameAs$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    :cond_8
    const/4 p1, 0x1

    .line 444
    new-array v0, p1, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/LinkOption;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 445
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result p1

    .line 447
    invoke-static {p0, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->insecureEnterDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/Path;Lkotlin/io/path/ExceptionsCollector;)V

    .line 451
    invoke-virtual {p2}, Lkotlin/io/path/ExceptionsCollector;->getTotalExceptions()I

    move-result v0

    if-ne p1, v0, :cond_2c

    .line 452
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    :cond_2c
    return-void

    .line 455
    :cond_2d
    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    .line 553
    invoke-virtual {p2, p0}, Lkotlin/io/path/ExceptionsCollector;->collect(Ljava/lang/Exception;)V

    return-void
.end method

.method private static final varargs isDirectory$PathsKt__PathRecursiveFunctionsKt(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/SecureDirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")Z"
        }
    .end annotation

    .line 431
    :try_start_0
    const-class v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/LinkOption;

    invoke-interface {p0, p1, v0, p2}, Ljava/nio/file/SecureDirectoryStream;->getFileAttributeView(Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/BasicFileAttributeView;

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributeView;->readAttributes()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1b
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    const/4 p0, 0x0

    :goto_1d
    if-eqz p0, :cond_24

    .line 430
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/CopyActionResult;)Ljava/nio/file/FileVisitResult;
    .registers 2

    .line 271
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    if-ne p0, v0, :cond_14

    .line 274
    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p0

    :cond_14
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 273
    :cond_1a
    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p0

    .line 272
    :cond_1d
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method private static final toFileVisitResult$PathsKt__PathRecursiveFunctionsKt(Lkotlin/io/path/OnErrorResult;)Ljava/nio/file/FileVisitResult;
    .registers 2

    .line 278
    sget-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    .line 280
    sget-object p0, Ljava/nio/file/FileVisitResult;->SKIP_SUBTREE:Ljava/nio/file/FileVisitResult;

    return-object p0

    :cond_11
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 279
    :cond_17
    sget-object p0, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object p0
.end method

.method private static final tryIgnoreNoSuchFileException$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 384
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.WhenMappings (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$WhenMappings)
.class public final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;
.super Ljava/lang/Object;
.source "PathRecursiveFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lkotlin/io/path/CopyActionResult;->values()[Lkotlin/io/path/CopyActionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v2}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lkotlin/io/path/CopyActionResult;->TERMINATE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v3}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v3, Lkotlin/io/path/CopyActionResult;->SKIP_SUBTREE:Lkotlin/io/path/CopyActionResult;

    invoke-virtual {v3}, Lkotlin/io/path/CopyActionResult;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v0, v3
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lkotlin/io/path/OnErrorResult;->values()[Lkotlin/io/path/OnErrorResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2b
    sget-object v3, Lkotlin/io/path/OnErrorResult;->TERMINATE:Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v3}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v1, Lkotlin/io/path/OnErrorResult;->SKIP_SUBTREE:Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v1}, Lkotlin/io/path/OnErrorResult;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3b} :catch_3b

    :catch_3b
    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass1 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZILjava/lang/Object;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Ljava/nio/file/Path;",
        "<anonymous parameter 1>",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    invoke-direct {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;-><init>()V

    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 76
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$1;->invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;
    .registers 5

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    throw p3
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass2 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZZ)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/io/path/CopyActionContext;",
        "Ljava/nio/file/Path;",
        "Ljava/nio/file/Path;",
        "Lkotlin/io/path/CopyActionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/io/path/CopyActionResult;",
        "Lkotlin/io/path/CopyActionContext;",
        "src",
        "Ljava/nio/file/Path;",
        "dst",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $followLinks:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->$followLinks:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 81
    check-cast p1, Lkotlin/io/path/CopyActionContext;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->invoke(Lkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 8

    const-string v0, "$this$copyToRecursively"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "src"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dst"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object p1, Lkotlin/io/path/LinkFollowing;->INSTANCE:Lkotlin/io/path/LinkFollowing;

    iget-boolean v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$2;->$followLinks:Z

    invoke-virtual {p1, v0}, Lkotlin/io/path/LinkFollowing;->toLinkOptions(Z)[Ljava/nio/file/LinkOption;

    move-result-object p1

    const/4 v0, 0x1

    .line 83
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/file/LinkOption;

    invoke-static {p3, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    .line 84
    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/LinkOption;

    invoke-static {p2, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_3f

    if-nez v0, :cond_6e

    :cond_3f
    if-eqz v0, :cond_44

    .line 87
    invoke-static {p3}, Lkotlin/io/path/PathsKt;->deleteRecursively(Ljava/nio/file/Path;)V

    .line 89
    :cond_44
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object p1, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Ljava/nio/file/CopyOption;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/CopyOption;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/nio/file/CopyOption;

    invoke-static {p2, p3, p1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object p1

    const-string p2, "copy(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :cond_6e
    sget-object p1, Lkotlin/io/path/CopyActionResult;->CONTINUE:Lkotlin/io/path/CopyActionResult;

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass3 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Ljava/nio/file/Path;",
        "<anonymous parameter 1>",
        "exception",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    invoke-direct {v0}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;-><init>()V

    sput-object v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->INSTANCE:Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 161
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$3;->invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/lang/Void;
    .registers 5

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exception"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    throw p3
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass4 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively$default(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;ILjava/lang/Object;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlin/io/path/CopyActionContext;",
        "Ljava/nio/file/Path;",
        "Ljava/nio/file/Path;",
        "Lkotlin/io/path/CopyActionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/io/path/CopyActionResult;",
        "Lkotlin/io/path/CopyActionContext;",
        "src",
        "Ljava/nio/file/Path;",
        "dst",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $followLinks:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;->$followLinks:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 163
    check-cast p1, Lkotlin/io/path/CopyActionContext;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;->invoke(Lkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/io/path/CopyActionContext;Ljava/nio/file/Path;Ljava/nio/file/Path;)Lkotlin/io/path/CopyActionResult;
    .registers 5

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$4;->$followLinks:Z

    invoke-interface {p1, p2, p3, v0}, Lkotlin/io/path/CopyActionContext;->copyToIgnoringExistingDirectory(Ljava/nio/file/Path;Ljava/nio/file/Path;Z)Lkotlin/io/path/CopyActionResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass5 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->copyToRecursively(Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;ZLkotlin/jvm/functions/Function3;)Ljava/nio/file/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/io/path/FileVisitorBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/io/path/FileVisitorBuilder;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $copyAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlin/io/path/CopyActionContext;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/CopyActionResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $normalizedTarget:Ljava/nio/file/Path;

.field final synthetic $onError:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Ljava/nio/file/Path;

.field final synthetic $this_copyToRecursively:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$copyAction:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$this_copyToRecursively:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$target:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$normalizedTarget:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$onError:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 234
    check-cast p1, Lkotlin/io/path/FileVisitorBuilder;

    invoke-virtual {p0, p1}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->invoke(Lkotlin/io/path/FileVisitorBuilder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/io/path/FileVisitorBuilder;)V
    .registers 11

    const-string v0, "$this$visitFileTree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$stack:Ljava/util/ArrayList;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$copyAction:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$target:Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$normalizedTarget:Ljava/nio/file/Path;

    iget-object v7, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$onError:Lkotlin/jvm/functions/Function3;

    invoke-direct/range {v1 .. v7}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v1}, Lkotlin/io/path/FileVisitorBuilder;->onPreVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    .line 240
    new-instance v2, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$stack:Ljava/util/ArrayList;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$copyAction:Lkotlin/jvm/functions/Function3;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$target:Ljava/nio/file/Path;

    iget-object v7, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$normalizedTarget:Ljava/nio/file/Path;

    iget-object v8, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$onError:Lkotlin/jvm/functions/Function3;

    invoke-direct/range {v2 .. v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v2}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFile(Lkotlin/jvm/functions/Function2;)V

    .line 241
    new-instance v0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;

    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$onError:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$target:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$normalizedTarget:Ljava/nio/file/Path;

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;-><init>(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0}, Lkotlin/io/path/FileVisitorBuilder;->onVisitFileFailed(Lkotlin/jvm/functions/Function2;)V

    .line 242
    new-instance v1, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$stack:Ljava/util/ArrayList;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$onError:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$target:Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->$normalizedTarget:Ljava/nio/file/Path;

    invoke-direct/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;-><init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v1}, Lkotlin/io/path/FileVisitorBuilder;->onPostVisitDirectory(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass5.AnonymousClass1 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->invoke(Lkotlin/io/path/FileVisitorBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/nio/file/Path;",
        "Ljava/nio/file/attribute/BasicFileAttributes;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Ljava/nio/file/FileVisitResult;",
        "directory",
        "Ljava/nio/file/Path;",
        "attributes",
        "Ljava/nio/file/attribute/BasicFileAttributes;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $copyAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlin/io/path/CopyActionContext;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/CopyActionResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $normalizedTarget:Ljava/nio/file/Path;

.field final synthetic $onError:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Ljava/nio/file/Path;

.field final synthetic $this_copyToRecursively:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$copyAction:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$this_copyToRecursively:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$target:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$normalizedTarget:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$onError:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 235
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->invoke(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 12

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$stack:Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$copyAction:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$target:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$normalizedTarget:Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$onError:Lkotlin/jvm/functions/Function3;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->access$copyToRecursively$copy(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    iget-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$1;->$stack:Ljava/util/ArrayList;

    .line 237
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    if-ne p1, v0, :cond_25

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass5.AnonymousClass2 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2)
.class final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->invoke(Lkotlin/io/path/FileVisitorBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/nio/file/Path;",
        "Ljava/nio/file/attribute/BasicFileAttributes;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $copyAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lkotlin/io/path/CopyActionContext;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/io/path/CopyActionResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $normalizedTarget:Ljava/nio/file/Path;

.field final synthetic $onError:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Ljava/nio/file/Path;

.field final synthetic $this_copyToRecursively:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lkotlin/io/path/CopyActionContext;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "+",
            "Lkotlin/io/path/CopyActionResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$copyAction:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$this_copyToRecursively:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$target:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$normalizedTarget:Ljava/nio/file/Path;

    iput-object p6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$onError:Lkotlin/jvm/functions/Function3;

    const-class p3, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string p5, "copyToRecursively$copy$PathsKt__PathRecursiveFunctionsKt(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;"

    const/4 p6, 0x0

    const/4 p2, 0x2

    const-string p4, "copy"

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 240
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/nio/file/attribute/BasicFileAttributes;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->invoke(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .registers 12

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$stack:Ljava/util/ArrayList;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$copyAction:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$target:Ljava/nio/file/Path;

    iget-object v5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$normalizedTarget:Ljava/nio/file/Path;

    iget-object v6, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$2;->$onError:Lkotlin/jvm/functions/Function3;

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v1 .. v8}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->access$copyToRecursively$copy(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass5.AnonymousClass3 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3)
.class final synthetic Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->invoke(Lkotlin/io/path/FileVisitorBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/nio/file/Path;",
        "Ljava/lang/Exception;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $normalizedTarget:Ljava/nio/file/Path;

.field final synthetic $onError:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Ljava/nio/file/Path;

.field final synthetic $this_copyToRecursively:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$onError:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$this_copyToRecursively:Ljava/nio/file/Path;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$target:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$normalizedTarget:Ljava/nio/file/Path;

    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    const-string v4, "copyToRecursively$error$PathsKt__PathRecursiveFunctionsKt(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-string v3, "error"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 241
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->invoke(Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;
    .registers 10

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$onError:Lkotlin/jvm/functions/Function3;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$target:Ljava/nio/file/Path;

    iget-object v4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$3;->$normalizedTarget:Ljava/nio/file/Path;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->access$copyToRecursively$error(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

###### Class kotlin.io.path.PathsKt__PathRecursiveFunctionsKt.AnonymousClass5.AnonymousClass4 (kotlin.io.path.PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4)
.class final Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;
.super Lkotlin/jvm/internal/Lambda;
.source "PathRecursiveFunctions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5;->invoke(Lkotlin/io/path/FileVisitorBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/nio/file/Path;",
        "Ljava/io/IOException;",
        "Ljava/nio/file/FileVisitResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Ljava/nio/file/FileVisitResult;",
        "directory",
        "Ljava/nio/file/Path;",
        "exception",
        "Ljava/io/IOException;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $normalizedTarget:Ljava/nio/file/Path;

.field final synthetic $onError:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Exception;",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $target:Ljava/nio/file/Path;

.field final synthetic $this_copyToRecursively:Ljava/nio/file/Path;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/nio/file/Path;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/nio/file/Path;",
            "-",
            "Ljava/lang/Exception;",
            "+",
            "Lkotlin/io/path/OnErrorResult;",
            ">;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/Path;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$stack:Ljava/util/ArrayList;

    iput-object p2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$onError:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$this_copyToRecursively:Ljava/nio/file/Path;

    iput-object p4, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$target:Ljava/nio/file/Path;

    iput-object p5, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$normalizedTarget:Ljava/nio/file/Path;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 242
    check-cast p1, Ljava/nio/file/Path;

    check-cast p2, Ljava/io/IOException;

    invoke-virtual {p0, p1, p2}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->invoke(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/nio/file/Path;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .registers 9

    const-string v0, "directory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$stack:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    if-nez p2, :cond_11

    .line 245
    sget-object p1, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object p1

    .line 247
    :cond_11
    iget-object v0, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$onError:Lkotlin/jvm/functions/Function3;

    iget-object v1, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$this_copyToRecursively:Ljava/nio/file/Path;

    iget-object v2, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$target:Ljava/nio/file/Path;

    iget-object v3, p0, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt$copyToRecursively$5$4;->$normalizedTarget:Ljava/nio/file/Path;

    move-object v5, p2

    check-cast v5, Ljava/lang/Exception;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lkotlin/io/path/PathsKt__PathRecursiveFunctionsKt;->access$copyToRecursively$error(Lkotlin/jvm/functions/Function3;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/nio/file/Path;Ljava/lang/Exception;)Ljava/nio/file/FileVisitResult;

    move-result-object p1

    return-object p1
.end method
