###### Class com.android.billingclient.api.DeveloperProvidedBillingDetails (com.android.billingclient.api.DeveloperProvidedBillingDetails)
.class public final Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lorg/json/JSONObject;

.field private final zzc:Ljava/util/List;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    const-string p1, "products"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_32

    const/4 v1, 0x0

    .line 4
    :goto_1a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2f

    new-instance v3, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    const/4 v4, 0x0

    .line 6
    invoke-direct {v3, v2, v4}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;-><init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzdo;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_32
    iput-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzc:Ljava/util/List;

    const-string p1, "originalExternalTransactionId"

    .line 7
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzd:Ljava/lang/String;

    const-string p1, "externalTransactionToken"

    .line 8
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zze:Ljava/lang/String;

    return-void
.end method

.method private final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p1, 0x0

    :cond_d
    return-object p1
.end method


# virtual methods
.method public getExternalTransactionToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUri()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzb:Lorg/json/JSONObject;

    const-string v1, "linkUri"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalExternalTransactionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;->zzc:Ljava/util/List;

    return-object v0
.end method

###### Class com.android.billingclient.api.DeveloperProvidedBillingDetails.Product (com.android.billingclient.api.DeveloperProvidedBillingDetails$Product)
.class public Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@9.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/DeveloperProvidedBillingDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Product"
.end annotation


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lorg/json/JSONObject;Lcom/android/billingclient/api/zzdo;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "productId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    const-string p2, "productType"

    .line 2
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    const-string p2, "offerToken"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-ne p2, v0, :cond_21

    const/4 p1, 0x0

    :cond_21
    iput-object p1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->getOfferToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    :cond_31
    return v2
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/billingclient/api/DeveloperProvidedBillingDetails$Product;->zzc:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{id: %s, type: %s, offer token: %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
