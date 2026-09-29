###### Class com.android.billingclient.api.GetBillingChoiceInfoParams (com.android.billingclient.api.GetBillingChoiceInfoParams)
.class public final Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;,
        Lcom/android/billingclient/api/GetBillingChoiceInfoParams$ImageLayout;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final playBillingChoiceImageLayout:Ljava/lang/String;

.field private final userLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    .line 2
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zza(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    .line 3
    invoke-static {p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;Lcom/android/billingclient/api/zzdw;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;-><init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;-><init>(Lcom/android/billingclient/api/zzdw;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->billingProgram:I

    return v0
.end method

.method public getPlayBillingChoiceImageLayout()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->playBillingChoiceImageLayout:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;->userLocale:Ljava/util/Locale;

    return-object v0
.end method

###### Class com.android.billingclient.api.GetBillingChoiceInfoParams.Builder (com.android.billingclient.api.GetBillingChoiceInfoParams$Builder)
.class public final Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/util/Locale;

.field private zzb:I

.field private zzc:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzdw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;)Ljava/util/Locale;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zza:Ljava/util/Locale;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2
    new-instance v0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/GetBillingChoiceInfoParams;-><init>(Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;Lcom/android/billingclient/api/zzdw;)V

    return-object v0

    .line 1
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Play Billing choice image layout is required."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only billing choice is allowed for this API."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzb:I

    return-object p0
.end method

.method public setPlayBillingChoiceImageLayout(Ljava/lang/String;)Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public setUserLocale(Ljava/util/Locale;)Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/GetBillingChoiceInfoParams$Builder;->zza:Ljava/util/Locale;

    return-object p0
.end method

###### Class com.android.billingclient.api.GetBillingChoiceInfoParams.ImageLayout (com.android.billingclient.api.GetBillingChoiceInfoParams$ImageLayout)
.class public interface abstract annotation Lcom/android/billingclient/api/GetBillingChoiceInfoParams$ImageLayout;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/GetBillingChoiceInfoParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ImageLayout"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final RECTANGULAR_FOUR_BY_ONE:Ljava/lang/String; = "RECTANGULAR_FOUR_BY_ONE"

.field public static final RECTANGULAR_THREE_BY_ONE:Ljava/lang/String; = "RECTANGULAR_THREE_BY_ONE"

.field public static final RECTANGULAR_TWO_BY_TWO:Ljava/lang/String; = "RECTANGULAR_TWO_BY_TWO"
