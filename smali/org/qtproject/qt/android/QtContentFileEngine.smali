###### Class org.qtproject.qt.android.QtContentFileEngine (org.qtproject.qt.android.QtContentFileEngine)
.class Lorg/qtproject/qt/android/QtContentFileEngine;
.super Ljava/lang/Object;
.source "QtContentFileEngine.java"


# static fields
.field private static QtTag:Ljava/lang/String; = "QtContentFileEngine"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasPermission(Landroid/net/Uri;I)Z
    .registers 5

    .line 71
    invoke-static {}, Lorg/qtproject/qt/android/QtNative;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_14

    return v1

    .line 77
    :cond_14
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_32

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 80
    invoke-virtual {v2, p0, p1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    return v1

    :cond_32
    return p1
.end method

.method static openFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    const-string v0, "openFileDescriptor(): No permission for URI "

    const/4 v1, 0x0

    .line 51
    :try_start_3
    const-string v2, "w"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 53
    :goto_e
    const-string v3, "r"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    or-int/lit8 v2, v2, 0x1

    .line 56
    :cond_18
    invoke-static {p1, v2}, Lorg/qtproject/qt/android/QtContentFileEngine;->hasPermission(Landroid/net/Uri;I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 57
    sget-object p0, Lorg/qtproject/qt/android/QtContentFileEngine;->QtTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 61
    :cond_31
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    .line 63
    sget-object p1, Lorg/qtproject/qt/android/QtContentFileEngine;->QtTag:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "openFileDescriptor() failed with "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    :try_start_2
    invoke-static {p1, v0}, Lorg/qtproject/qt/android/QtContentFileEngine;->hasPermission(Landroid/net/Uri;I)Z

    move-result v0

    if-nez v0, :cond_9

    return-object v1

    .line 36
    :cond_9
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    return-object v1
.end method
