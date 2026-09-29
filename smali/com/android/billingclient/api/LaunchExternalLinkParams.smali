###### Class com.android.billingclient.api.LaunchExternalLinkParams (com.android.billingclient.api.LaunchExternalLinkParams)
.class public final Lcom/android/billingclient/api/LaunchExternalLinkParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;,
        Lcom/android/billingclient/api/LaunchExternalLinkParams$LinkType;,
        Lcom/android/billingclient/api/LaunchExternalLinkParams$LaunchMode;
    }
.end annotation


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;Lcom/android/billingclient/api/zzea;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zza:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzb:I

    invoke-static {p1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzc:I

    invoke-static {p1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zza(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I

    move-result p2

    iput p2, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzd:I

    invoke-static {p1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zze(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zze:Ljava/lang/String;

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;-><init>(Lcom/android/billingclient/api/zzea;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzd:I

    return v0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchMode()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzb:I

    return v0
.end method

.method public getLinkType()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zzc:I

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams;->zza:Landroid/net/Uri;

    return-object v0
.end method

###### Class com.android.billingclient.api.LaunchExternalLinkParams.Builder (com.android.billingclient.api.LaunchExternalLinkParams$Builder)
.class public final Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/LaunchExternalLinkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Landroid/net/Uri;

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb:I

    iput v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    iput v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzea;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb:I

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb:I

    return p0
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    return p0
.end method

.method static bridge synthetic zzd(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zza:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/LaunchExternalLinkParams;
    .registers 4

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    if-eqz v0, :cond_6c

    iget v1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb:I

    if-eqz v1, :cond_64

    const/4 v2, 0x1

    if-eq v1, v2, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto :goto_17

    .line 9
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App downloads must launch in an external browser or app."

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_17
    :goto_17
    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd:I

    if-eqz v0, :cond_5c

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3b

    .line 3
    iget-object v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zze:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 5
    iget v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    if-ne v0, v2, :cond_2b

    goto :goto_3b

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Link type must be LINK_TO_DIGITAL_CONTENT_OFFER for billing choice with an external link."

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External transaction token is required for billing choice with an external link."

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zza:Landroid/net/Uri;

    if-eqz v0, :cond_54

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 10
    new-instance v0, Lcom/android/billingclient/api/LaunchExternalLinkParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/LaunchExternalLinkParams;-><init>(Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;Lcom/android/billingclient/api/zzea;)V

    return-object v0

    .line 8
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must have a scheme."

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URI must be set."

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Billing program is required."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Launch mode is required."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Link type is required."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzd:I

    return-object p0
.end method

.method public setExternalTransactionToken(Ljava/lang/String;)Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public setLaunchMode(I)Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzb:I

    return-object p0
.end method

.method public setLinkType(I)Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zzc:I

    return-object p0
.end method

.method public setLinkUri(Landroid/net/Uri;)Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/LaunchExternalLinkParams$Builder;->zza:Landroid/net/Uri;

    return-object p0
.end method

###### Class com.android.billingclient.api.LaunchExternalLinkParams.LaunchMode (com.android.billingclient.api.LaunchExternalLinkParams$LaunchMode)
.class public interface abstract annotation Lcom/android/billingclient/api/LaunchExternalLinkParams$LaunchMode;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/LaunchExternalLinkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LaunchMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CALLER_WILL_LAUNCH_LINK:I = 0x2

.field public static final LAUNCH_IN_EXTERNAL_BROWSER_OR_APP:I = 0x1

.field public static final LAUNCH_MODE_UNSPECIFIED:I

###### Class com.android.billingclient.api.LaunchExternalLinkParams.LinkType (com.android.billingclient.api.LaunchExternalLinkParams$LinkType)
.class public interface abstract annotation Lcom/android/billingclient/api/LaunchExternalLinkParams$LinkType;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/LaunchExternalLinkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "LinkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final LINK_TO_APP_DOWNLOAD:I = 0x2

.field public static final LINK_TO_DIGITAL_CONTENT_OFFER:I = 0x1

.field public static final LINK_TYPE_UNSPECIFIED:I
