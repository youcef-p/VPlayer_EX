###### Class androidx.core.os.BuildCompat (androidx.core.os.BuildCompat)
.class public final Landroidx/core/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/BuildCompat$Api30Impl;,
        Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0007J\u0008\u0010\n\u001a\u00020\tH\u0007J\u0008\u0010\u000b\u001a\u00020\tH\u0007J\u0008\u0010\u000c\u001a\u00020\tH\u0007J\u0008\u0010\r\u001a\u00020\tH\u0007J\u0008\u0010\u000e\u001a\u00020\tH\u0007J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0007J\u0008\u0010\u0013\u001a\u00020\tH\u0007J\u0008\u0010\u0014\u001a\u00020\tH\u0007J\u0008\u0010\u0015\u001a\u00020\tH\u0007J\u0008\u0010\u0016\u001a\u00020\tH\u0007J\u0008\u0010\u0017\u001a\u00020\tH\u0007J\u0008\u0010\u0018\u001a\u00020\tH\u0007J\u0008\u0010\u0019\u001a\u00020\tH\u0007R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/core/os/BuildCompat;",
        "",
        "()V",
        "AD_SERVICES_EXTENSION_INT",
        "",
        "R_EXTENSION_INT",
        "S_EXTENSION_INT",
        "T_EXTENSION_INT",
        "isAtLeastB",
        "",
        "isAtLeastN",
        "isAtLeastNMR1",
        "isAtLeastO",
        "isAtLeastOMR1",
        "isAtLeastP",
        "isAtLeastPreReleaseCodename",
        "codename",
        "",
        "buildCodename",
        "isAtLeastQ",
        "isAtLeastR",
        "isAtLeastS",
        "isAtLeastSv2",
        "isAtLeastT",
        "isAtLeastU",
        "isAtLeastV",
        "Api30Impl",
        "PrereleaseSdkCheck",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_SERVICES_EXTENSION_INT:I

.field public static final INSTANCE:Landroidx/core/os/BuildCompat;

.field public static final R_EXTENSION_INT:I

.field public static final S_EXTENSION_INT:I

.field public static final T_EXTENSION_INT:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Landroidx/core/os/BuildCompat;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat;->INSTANCE:Landroidx/core/os/BuildCompat;

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_15

    .line 334
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    invoke-virtual {v0, v2}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 333
    :goto_16
    sput v0, Landroidx/core/os/BuildCompat;->R_EXTENSION_INT:I

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_25

    .line 350
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v0

    goto :goto_26

    :cond_25
    move v0, v1

    .line 349
    :goto_26
    sput v0, Landroidx/core/os/BuildCompat;->S_EXTENSION_INT:I

    .line 365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_35

    .line 366
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v0

    goto :goto_36

    :cond_35
    move v0, v1

    .line 365
    :goto_36
    sput v0, Landroidx/core/os/BuildCompat;->T_EXTENSION_INT:I

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_45

    .line 382
    sget-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroidx/core/os/BuildCompat$Api30Impl;->getExtensionVersion(I)I

    move-result v1

    .line 381
    :cond_45
    sput v1, Landroidx/core/os/BuildCompat;->AD_SERVICES_EXTENSION_INT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isAtLeastB()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_1e

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1c

    .line 306
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Baklava"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastN()Z
    .registers 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Android N is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 24`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 24"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastNMR1()Z
    .registers 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Android N MR1 is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 25`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 25"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastO()Z
    .registers 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Android O is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead use `Build.VERSION.SDK_INT >= 26`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 26"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastOMR1()Z
    .registers 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Android O MR1 is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 27`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 27"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastP()Z
    .registers 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Android P is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 28`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 28"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "codename"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildCodename"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "REL"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    return v1

    .line 57
    :cond_14
    invoke-static {p1}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename$codenameToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    invoke-static {p0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename$codenameToInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v0, :cond_2d

    if-eqz v2, :cond_2d

    .line 61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_2c

    return v3

    :cond_2c
    return v1

    :cond_2d
    if-nez v0, :cond_4d

    if-nez v2, :cond_4d

    .line 64
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_4c

    return v3

    :cond_4c
    return v1

    :cond_4d
    if-eqz v0, :cond_50

    return v3

    :cond_50
    return v1
.end method

.method private static final isAtLeastPreReleaseCodename$codenameToInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 44
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    const-string v0, "BAKLAVA"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final isAtLeastQ()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android Q is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 29`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 29"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastR()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android R is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 30`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 30"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static final isAtLeastS()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android S is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 31`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 31"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1e

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1c

    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "S"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastSv2()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android Sv2 is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 32`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 32"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1e

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1c

    .line 221
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Sv2"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastT()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android Tiramisu is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 33`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 33"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1e

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1c

    .line 244
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "Tiramisu"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastU()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android UpsideDownCase is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 34`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 34"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ge v0, v1, :cond_1e

    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1c

    .line 267
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "UpsideDownCake"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public static final isAtLeastV()Z
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "Android VanillaIceCream is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 35`."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "android.os.Build.VERSION.SDK_INT >= 35"
            imports = {}
        .end subannotation
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_1e

    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1c

    .line 290
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "CODENAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VanillaIceCream"

    invoke-static {v1, v0}, Landroidx/core/os/BuildCompat;->isAtLeastPreReleaseCodename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

###### Class androidx.core.os.BuildCompat.Api30Impl (androidx.core.os.BuildCompat$Api30Impl)
.class final Landroidx/core/os/BuildCompat$Api30Impl;
.super Ljava/lang/Object;
.source "BuildCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30Impl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/core/os/BuildCompat$Api30Impl;",
        "",
        "()V",
        "getExtensionVersion",
        "",
        "extension",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/core/os/BuildCompat$Api30Impl;

    invoke-direct {v0}, Landroidx/core/os/BuildCompat$Api30Impl;-><init>()V

    sput-object v0, Landroidx/core/os/BuildCompat$Api30Impl;->INSTANCE:Landroidx/core/os/BuildCompat$Api30Impl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtensionVersion(I)I
    .registers 2

    .line 389
    invoke-static {p1}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result p1

    return p1
.end method

###### Class androidx.core.os.BuildCompat.PrereleaseSdkCheck (androidx.core.os.BuildCompat$PrereleaseSdkCheck)
.class public interface abstract annotation Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;
.super Ljava/lang/Object;
.source "BuildCompat.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/BuildCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PrereleaseSdkCheck"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\u0008\u0087\u0002\u0018\u00002\u00020\u0001B\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/core/os/BuildCompat$PrereleaseSdkCheck;",
        "",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->BINARY:Lkotlin/annotation/AnnotationRetention;
.end annotation
