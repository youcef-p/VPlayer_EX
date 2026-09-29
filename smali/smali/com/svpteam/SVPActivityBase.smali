###### Class com.svpteam.SVPActivityBase (com.svpteam.SVPActivityBase)
.class public Lcom/svpteam/SVPActivityBase;
.super Lorg/qtproject/qt/android/bindings/QtActivity;
.source "SVPActivityBase.java"


# instance fields
.field public fontScale:F

.field public insetBottom:I

.field public insetLeft:I

.field public insetLength:I

.field public insetRight:I

.field public insetTop:I

.field private mediaSession:Landroid/media/session/MediaSession;

.field public mediaStore:Lcom/svpteam/MediaStoreUtils;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private playbackStateBuilder:Landroid/media/session/PlaybackState$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;-><init>()V

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetTop:I

    .line 300
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetRight:I

    .line 301
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetLeft:I

    .line 302
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetBottom:I

    .line 303
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetLength:I

    return-void
.end method

.method public static native audioConfigChanged()V
.end method

.method public static native audioFocusChanged(I)V
.end method

.method private static copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6

    const/16 v0, 0x2000

    .line 572
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 574
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_18

    move v3, v1

    :goto_a
    if-ltz v2, :cond_17

    .line 577
    :try_start_c
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v2

    .line 579
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_a

    :catch_15
    move v1, v3

    goto :goto_18

    :cond_17
    return v3

    :catch_18
    :goto_18
    return v1
.end method

.method public static native mediaChanged(Ljava/lang/String;)V
.end method

.method public static native mwFocusChanged(ZZZ)V
.end method

.method public static native pause(I)V
.end method

.method private processIntent()V
    .registers 6

    .line 130
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 135
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "android.intent.action.VIEW"

    const/4 v3, 0x0

    if-ne v1, v2, :cond_28

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 139
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v4, "position"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 150
    const-string v4, "subtitles_location"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_53

    .line 152
    :cond_28
    const-string v2, "android.intent.action.SEND"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_4b

    .line 154
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 157
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, v4

    :goto_41
    if-nez v1, :cond_51

    .line 161
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_51

    .line 163
    :cond_4b
    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_51
    :goto_51
    move-object v0, v4

    move-object v2, v0

    :goto_53
    if-eqz v1, :cond_5e

    .line 165
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5e

    .line 166
    invoke-static {v1, v3, v2, v0}, Lcom/svpteam/SVPActivityBase;->setMedia(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-void
.end method

.method public static native setItem(ILjava/lang/String;)V
.end method

.method public static native setLANActive(Z)V
.end method

.method public static native setMedia(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native svpLog(ILjava/lang/String;)V
.end method


# virtual methods
.method public checkStorage()Z
    .registers 6

    .line 203
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x21

    if-lt v0, v3, :cond_13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    :goto_14
    if-eqz v0, :cond_19

    .line 204
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    goto :goto_1b

    :cond_19
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    .line 205
    :goto_1b
    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_22

    return v2

    :cond_22
    if-eqz v0, :cond_2c

    .line 210
    new-array v0, v2, [Ljava/lang/String;

    aput-object v3, v0, v1

    .line 211
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_38

    :cond_2c
    const/4 v0, 0x2

    .line 215
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "android.permission.READ_MEDIA_AUDIO"

    aput-object v3, v0, v2

    .line 216
    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_38
    return v1
.end method

.method public checkStorageAF()V
    .registers 4

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_7

    goto :goto_30

    .line 225
    :cond_7
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_30

    .line 227
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v1, 0x3f3

    .line 228
    invoke-virtual {p0, v0, v1}, Lcom/svpteam/SVPActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_30
    :goto_30
    return-void
.end method

.method public fillCutout(Z)V
    .registers 4

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-ge v0, v1, :cond_17

    .line 282
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 284
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 285
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 287
    :cond_17
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ne p1, v0, :cond_2a

    .line 289
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2a
    return-void
.end method

.method public getBTDevice()Ljava/lang/String;
    .registers 7

    .line 475
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    .line 476
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 478
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_49

    .line 480
    aget-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 483
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_29

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 484
    :cond_29
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    if-lez v2, :cond_4e

    .line 487
    const-string v0, "none"

    return-object v0

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrightness()I
    .registers 4

    .line 492
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 493
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_19

    .line 494
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 497
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    div-int/lit16 v0, v0, 0xff
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_28

    return v0

    :catch_28
    const/16 v0, 0x32

    return v0
.end method

.method public getData()Ljava/lang/String;
    .registers 7

    .line 256
    const-string v0, ""

    .line 258
    :try_start_2
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 259
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 260
    array-length v2, v1

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_3a

    aget-object v4, v1, v3

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_3a

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :catch_3a
    :cond_3a
    return-object v0
.end method

.method public getDisplayModes()Ljava/lang/String;
    .registers 9

    .line 348
    invoke-static {p0}, Landroidx/core/hardware/display/DisplayManagerCompat;->getInstance(Landroid/content/Context;)Landroidx/core/hardware/display/DisplayManagerCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, v1}, Landroidx/core/hardware/display/DisplayManagerCompat;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 353
    invoke-static {p0, v0}, Landroidx/core/view/DisplayCompat;->getSupportedModes(Landroid/content/Context;Landroid/view/Display;)[Landroidx/core/view/DisplayCompat$ModeCompat;

    move-result-object v0

    array-length v2, v0

    const-string v3, ""

    :goto_10
    if-ge v1, v2, :cond_5c

    aget-object v4, v0, v1

    .line 355
    invoke-virtual {v4}, Landroidx/core/view/DisplayCompat$ModeCompat;->toMode()Landroid/view/Display$Mode;

    move-result-object v5

    .line 356
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/core/view/DisplayCompat$ModeCompat;->getPhysicalWidth()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/core/view/DisplayCompat$ModeCompat;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_5c
    return-object v3
.end method

.method public getVolume()I
    .registers 4

    .line 454
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 455
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 456
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    .line 457
    div-int/2addr v0, v2

    return v0
.end method

.method public initAudioFocus()V
    .registers 5

    .line 434
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 435
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 436
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v3, 0x3

    .line 437
    invoke-virtual {v1, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 439
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 440
    invoke-virtual {v3, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 441
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 442
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/svpteam/SVPActivityBase$4;

    invoke-direct {v2, p0}, Lcom/svpteam/SVPActivityBase$4;-><init>(Lcom/svpteam/SVPActivityBase;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public isDEX()Z
    .registers 5

    .line 518
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 520
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 521
    const-string v2, "SEM_DESKTOP_MODE_ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "semDesktopModeEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_20} :catch_24

    if-ne v2, v0, :cond_24

    const/4 v0, 0x1

    return v0

    :catch_24
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public keepScreenOn(Z)V
    .registers 7

    const/16 v0, 0x80

    if-eqz p1, :cond_c

    .line 399
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_13

    .line 400
    :cond_c
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 402
    :goto_13
    iget-object v0, p0, Lcom/svpteam/SVPActivityBase;->mediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/svpteam/SVPActivityBase;->playbackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    if-eqz p1, :cond_1b

    const/4 p1, 0x3

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x2

    :goto_1c
    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method public mcastLock(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 512
    iget-object p1, p0, Lcom/svpteam/SVPActivityBase;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-void

    .line 513
    :cond_8
    iget-object p1, p0, Lcom/svpteam/SVPActivityBase;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    return-void
.end method

.method public monitorLANState()V
    .registers 4

    .line 407
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 409
    :try_start_8
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xd

    .line 411
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 412
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 413
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 414
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 415
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/svpteam/SVPActivityBase$3;

    invoke-direct {v2, p0}, Lcom/svpteam/SVPActivityBase$3;-><init>(Lcom/svpteam/SVPActivityBase;)V

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_2f

    :catch_2f
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x3f3

    if-ne p1, v0, :cond_e

    .line 237
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->restart()V

    return-void

    .line 243
    :cond_e
    invoke-super {p0, p1, p2, p3}, Lorg/qtproject/qt/android/bindings/QtActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 55
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/svpteam/SVPActivityBase;->fontScale:F

    .line 60
    new-instance p1, Lcom/svpteam/MediaStoreUtils;

    invoke-direct {p1, p0}, Lcom/svpteam/MediaStoreUtils;-><init>(Lcom/svpteam/SVPActivityBase;)V

    iput-object p1, p0, Lcom/svpteam/SVPActivityBase;->mediaStore:Lcom/svpteam/MediaStoreUtils;

    .line 62
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 63
    new-instance v0, Lcom/svpteam/SVPActivityBase$1;

    invoke-direct {v0, p0}, Lcom/svpteam/SVPActivityBase$1;-><init>(Lcom/svpteam/SVPActivityBase;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 72
    new-instance p1, Landroid/media/session/MediaSession;

    const-string v0, "svplayer"

    invoke-direct {p1, p0, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/svpteam/SVPActivityBase;->mediaSession:Landroid/media/session/MediaSession;

    .line 73
    new-instance v0, Lcom/svpteam/SVPActivityBase$2;

    invoke-direct {v0, p0}, Lcom/svpteam/SVPActivityBase$2;-><init>(Lcom/svpteam/SVPActivityBase;)V

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 93
    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const-string v0, "mcast"

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    iput-object p1, p0, Lcom/svpteam/SVPActivityBase;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 96
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/svpteam/SVPActivityBase;->playbackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v0, 0x206

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 98
    iget-object p1, p0, Lcom/svpteam/SVPActivityBase;->mediaSession:Landroid/media/session/MediaSession;

    iget-object v0, p0, Lcom/svpteam/SVPActivityBase;->playbackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 99
    invoke-virtual {p0, v4}, Lcom/svpteam/SVPActivityBase;->setActive(Z)V

    .line 101
    invoke-direct {p0}, Lcom/svpteam/SVPActivityBase;->processIntent()V

    .line 103
    invoke-virtual {p0, v4}, Lcom/svpteam/SVPActivityBase;->fillCutout(Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->setActive(Z)V

    .line 112
    iget-object v1, p0, Lcom/svpteam/SVPActivityBase;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->release()V

    .line 114
    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->mcastLock(Z)V

    .line 116
    iget-object v0, p0, Lcom/svpteam/SVPActivityBase;->mediaStore:Lcom/svpteam/MediaStoreUtils;

    invoke-virtual {v0}, Lcom/svpteam/MediaStoreUtils;->onDestroy()V

    .line 117
    invoke-super {p0}, Lorg/qtproject/qt/android/bindings/QtActivity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 4

    .line 248
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->hasWindowFocus()Z

    move-result p2

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/svpteam/SVPActivityBase;->mwFocusChanged(ZZZ)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2

    .line 123
    invoke-super {p0, p1}, Lorg/qtproject/qt/android/bindings/QtActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/svpteam/SVPActivityBase;->setIntent(Landroid/content/Intent;)V

    .line 125
    invoke-direct {p0}, Lcom/svpteam/SVPActivityBase;->processIntent()V

    return-void
.end method

.method public onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .registers 3

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    .line 252
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/svpteam/SVPActivityBase;->mwFocusChanged(ZZZ)V

    return-void
.end method

.method public readCutout()V
    .registers 10

    .line 307
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_8

    goto/16 :goto_b1

    :cond_8
    const/4 v0, 0x0

    .line 310
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetLeft:I

    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetRight:I

    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetTop:I

    .line 311
    iput v0, p0, Lcom/svpteam/SVPActivityBase;->insetLength:I

    .line 313
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 314
    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v2, :cond_b1

    .line 317
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v2

    .line 318
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 320
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_3f

    move v4, v6

    goto :goto_40

    :cond_3f
    move v4, v0

    .line 322
    :goto_40
    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-nez v5, :cond_52

    .line 324
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v7, p0, Lcom/svpteam/SVPActivityBase;->insetTop:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/svpteam/SVPActivityBase;->insetTop:I

    move v5, v0

    goto :goto_53

    :cond_52
    const/4 v5, -0x1

    .line 327
    :goto_53
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_66

    .line 329
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/svpteam/SVPActivityBase;->insetLeft:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/svpteam/SVPActivityBase;->insetLeft:I

    if-nez v4, :cond_66

    move v5, v6

    .line 332
    :cond_66
    iget v7, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v8

    sub-int/2addr v8, v6

    if-lt v7, v8, :cond_7e

    .line 334
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, p0, Lcom/svpteam/SVPActivityBase;->insetRight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/svpteam/SVPActivityBase;->insetRight:I

    if-nez v4, :cond_7e

    goto :goto_7f

    :cond_7e
    move v6, v5

    :goto_7f
    if-eqz v4, :cond_8d

    .line 338
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/svpteam/SVPActivityBase;->insetBottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/svpteam/SVPActivityBase;->insetBottom:I

    :cond_8d
    if-ltz v6, :cond_27

    if-nez v6, :cond_9c

    .line 341
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    goto :goto_a6

    :cond_9c
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    :goto_a6
    div-int/2addr v3, v4

    iget v4, p0, Lcom/svpteam/SVPActivityBase;->insetLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/svpteam/SVPActivityBase;->insetLength:I

    goto/16 :goto_27

    :cond_b1
    :goto_b1
    return-void
.end method

.method public reportResult(II)V
    .registers 6

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mxtech.intent.result.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    add-int/lit16 v1, p2, -0x5dc

    if-lt p1, v1, :cond_e

    .line 175
    const-string v1, "playback_completion"

    goto :goto_10

    :cond_e
    const-string v1, "user"

    :goto_10
    const-string v2, "end_by"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const-string p1, "duration"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/svpteam/SVPActivityBase;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public resolve(Ljava/lang/String;)I
    .registers 4

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    return p1

    :catch_13
    move-exception p1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/svpteam/SVPActivityBase;->svpLog(ILjava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public restart()V
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 185
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    :cond_1a
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 190
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    return-void
.end method

.method public setActive(Z)V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/svpteam/SVPActivityBase;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setActive(Z)V

    return-void
.end method

.method public setBrightness(I)V
    .registers 4

    .line 505
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 506
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 507
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setDisplayMode(I)V
    .registers 3

    .line 365
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 366
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 367
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setSustainedPerformanceMode(Z)V
    .registers 3

    .line 389
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSustainedPerformanceMode(Z)V

    return-void
.end method

.method public setVolume(I)V
    .registers 5

    .line 462
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 463
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    .line 464
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public toggleMute()V
    .registers 5

    .line 469
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/svpteam/SVPActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 470
    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public unzip(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 11

    if-eqz p2, :cond_c

    .line 532
    :try_start_2
    invoke-virtual {p0}, Lcom/svpteam/SVPActivityBase;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_12

    :cond_c
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 533
    :goto_12
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 534
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 535
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    :goto_1f
    if-eqz p1, :cond_7c

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 542
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_77

    .line 543
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_77

    .line 547
    :cond_4b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6b

    .line 549
    :cond_5d
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 550
    invoke-static {v0, p1}, Lcom/svpteam/SVPActivityBase;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 551
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 552
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 555
    :cond_6b
    const-string p1, ".so"

    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_77

    const/4 p1, 0x1

    .line 556
    invoke-virtual {v2, p1, p1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 558
    :cond_77
    :goto_77
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    goto :goto_1f

    .line 560
    :cond_7c
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    .line 562
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".ver"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 565
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bb} :catch_bb

    :catch_bb
    return-void
.end method

###### Class com.svpteam.SVPActivityBase.AnonymousClass1 (com.svpteam.SVPActivityBase$1)
.class Lcom/svpteam/SVPActivityBase$1;
.super Landroid/media/AudioDeviceCallback;
.source "SVPActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivityBase;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivityBase;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/svpteam/SVPActivityBase$1;->this$0:Lcom/svpteam/SVPActivityBase;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .registers 2

    .line 67
    invoke-static {}, Lcom/svpteam/SVPActivityBase;->audioConfigChanged()V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .registers 2

    .line 69
    invoke-static {}, Lcom/svpteam/SVPActivityBase;->audioConfigChanged()V

    return-void
.end method

###### Class com.svpteam.SVPActivityBase.AnonymousClass2 (com.svpteam.SVPActivityBase$2)
.class Lcom/svpteam/SVPActivityBase$2;
.super Landroid/media/session/MediaSession$Callback;
.source "SVPActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivityBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivityBase;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivityBase;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/svpteam/SVPActivityBase$2;->this$0:Lcom/svpteam/SVPActivityBase;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 4

    .line 78
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 81
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_29

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_20

    goto :goto_2d

    :cond_20
    const/4 p1, 0x1

    .line 84
    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->pause(I)V

    goto :goto_2d

    .line 83
    :cond_25
    invoke-static {v1}, Lcom/svpteam/SVPActivityBase;->pause(I)V

    goto :goto_2d

    :cond_29
    const/4 p1, -0x1

    .line 85
    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->pause(I)V

    :cond_2d
    :goto_2d
    return v1
.end method

###### Class com.svpteam.SVPActivityBase.AnonymousClass3 (com.svpteam.SVPActivityBase$3)
.class Lcom/svpteam/SVPActivityBase$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SVPActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivityBase;->monitorLANState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivityBase;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivityBase;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/svpteam/SVPActivityBase$3;->this$0:Lcom/svpteam/SVPActivityBase;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 2

    const/4 p1, 0x1

    .line 420
    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->setLANActive(Z)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    const/4 p1, 0x0

    .line 425
    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->setLANActive(Z)V

    return-void
.end method

###### Class com.svpteam.SVPActivityBase.AnonymousClass4 (com.svpteam.SVPActivityBase$4)
.class Lcom/svpteam/SVPActivityBase$4;
.super Ljava/lang/Object;
.source "SVPActivityBase.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivityBase;->initAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivityBase;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivityBase;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lcom/svpteam/SVPActivityBase$4;->this$0:Lcom/svpteam/SVPActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 2

    .line 447
    invoke-static {p1}, Lcom/svpteam/SVPActivityBase;->audioFocusChanged(I)V

    return-void
.end method
