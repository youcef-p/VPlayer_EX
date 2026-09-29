###### Class com.android.billingclient.api.BillingProgramInformationDialogParams (com.android.billingclient.api.BillingProgramInformationDialogParams)
.class public final Lcom/android/billingclient/api/BillingProgramInformationDialogParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    }
.end annotation


# instance fields
.field private final billingProgram:I

.field private final externalTransactionToken:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    .line 2
    invoke-static {p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;Lcom/android/billingclient/api/zzde;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;-><init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    .registers 2

    new-instance v0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;-><init>(Lcom/android/billingclient/api/zzde;)V

    return-object v0
.end method


# virtual methods
.method public getBillingProgram()I
    .registers 2

    iget v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->billingProgram:I

    return v0
.end method

.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;->externalTransactionToken:Ljava/lang/String;

    return-object v0
.end method

###### Class com.android.billingclient.api.BillingProgramInformationDialogParams.Builder (com.android.billingclient.api.BillingProgramInformationDialogParams$Builder)
.class public final Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/BillingProgramInformationDialogParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/billingclient/api/zzde;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/billingclient/api/BillingProgramInformationDialogParams;
    .registers 3

    .line 1
    iget v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza:I

    if-eqz v0, :cond_22

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 3
    new-instance v0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/BillingProgramInformationDialogParams;-><init>(Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;Lcom/android/billingclient/api/zzde;)V

    return-object v0

    .line 2
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "External transaction token must be set."

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The requested billing program is not supported for the billing program information dialog API."

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Billing program must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBillingProgram(I)Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    .registers 2

    iput p1, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zza:I

    return-object p0
.end method

.method public setExternalTransactionToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/billingclient/api/BillingProgramInformationDialogParams$Builder;->zzb:Ljava/lang/String;

    return-object p0
.end method
