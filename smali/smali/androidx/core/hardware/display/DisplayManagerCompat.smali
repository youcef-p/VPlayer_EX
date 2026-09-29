###### Class androidx.core.hardware.display.DisplayManagerCompat (androidx.core.hardware.display.DisplayManagerCompat)
.class public final Landroidx/core/hardware/display/DisplayManagerCompat;
.super Ljava/lang/Object;
.source "DisplayManagerCompat.java"


# static fields
.field static final DISPLAY_CATEGORY_ALL:Ljava/lang/String; = "android.hardware.display.category.ALL_INCLUDING_DISABLED"

.field public static final DISPLAY_CATEGORY_BUILT_IN_DISPLAYS:Ljava/lang/String; = "android.hardware.display.category.BUILT_IN_DISPLAYS"

.field public static final DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field static final DISPLAY_TYPE_INTERNAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static computeBuiltInDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;
    .registers 7

    .line 150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_d

    .line 151
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    .line 152
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    goto :goto_11

    .line 155
    :cond_d
    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    :goto_11
    const/4 v0, 0x1

    .line 158
    invoke-static {v0, p0}, Landroidx/core/hardware/display/DisplayManagerCompat;->numberOfDisplaysByType(I[Landroid/view/Display;)I

    move-result v1

    .line 159
    new-array v1, v1, [Landroid/view/Display;

    const/4 v2, 0x0

    move v3, v2

    .line 162
    :goto_1a
    array-length v4, p0

    if-ge v2, v4, :cond_2c

    .line 163
    aget-object v4, p0, v2

    .line 164
    invoke-static {v4}, Landroidx/core/hardware/display/DisplayManagerCompat;->getTypeCompat(Landroid/view/Display;)I

    move-result v5

    if-ne v0, v5, :cond_29

    .line 165
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2c
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;
    .registers 2

    .line 90
    new-instance v0, Landroidx/core/hardware/display/DisplayManagerCompat;

    invoke-direct {v0, p0}, Landroidx/core/hardware/display/DisplayManagerCompat;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static getTypeCompat(Landroid/view/Display;)I
    .registers 5

    const/4 v0, 0x0

    .line 196
    :try_start_1
    const-class v1, Landroid/view/Display;

    const-string v2, "getType"

    new-array v3, v0, [Ljava/lang/Class;

    .line 197
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 196
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1b} :catch_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_23
    return v0
.end method

.method private static numberOfDisplaysByType(I[Landroid/view/Display;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 177
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 178
    aget-object v2, p1, v0

    .line 179
    invoke-static {v2}, Landroidx/core/hardware/display/DisplayManagerCompat;->getTypeCompat(Landroid/view/Display;)I

    move-result v2

    if-ne p0, v2, :cond_f

    add-int/lit8 v1, v1, 0x1

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    return v1
.end method


# virtual methods
.method public getDisplay(I)Landroid/view/Display;
    .registers 4

    .line 103
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "display"

    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 105
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public getDisplays()[Landroid/view/Display;
    .registers 3

    .line 114
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .registers 5

    .line 134
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    .line 135
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 136
    const-string v2, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 137
    invoke-static {v0}, Landroidx/core/hardware/display/DisplayManagerCompat;->computeBuiltInDisplays(Landroid/hardware/display/DisplayManager;)[Landroid/view/Display;

    move-result-object p1

    return-object p1

    .line 139
    :cond_17
    iget-object v0, p0, Landroidx/core/hardware/display/DisplayManagerCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 140
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method
