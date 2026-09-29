###### Class com.svpteam.SVPActivity (com.svpteam.SVPActivity)
.class public Lcom/svpteam/SVPActivity;
.super Lcom/svpteam/SVPActivityBase;
.source "SVPActivity.java"


# instance fields
.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private cachedProducts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private reviewManager:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Lcom/svpteam/SVPActivityBase;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/svpteam/SVPActivity;->cachedProducts:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/svpteam/SVPActivity$1;

    invoke-direct {v0, p0}, Lcom/svpteam/SVPActivity$1;-><init>(Lcom/svpteam/SVPActivity;)V

    iput-object v0, p0, Lcom/svpteam/SVPActivity;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/svpteam/SVPActivity;)Ljava/util/Map;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/svpteam/SVPActivity;->cachedProducts:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/svpteam/SVPActivity;)Lcom/android/billingclient/api/BillingClient;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method


# virtual methods
.method public acceptItem(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_19

    .line 143
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 144
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p1

    .line 146
    iget-object p2, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/svpteam/SVPActivity$3;

    invoke-direct {v0, p0}, Lcom/svpteam/SVPActivity$3;-><init>(Lcom/svpteam/SVPActivity;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    return-void

    .line 155
    :cond_19
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p2

    .line 156
    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/svpteam/SVPActivity$4;

    invoke-direct {v0, p0}, Lcom/svpteam/SVPActivity$4;-><init>(Lcom/svpteam/SVPActivity;)V

    invoke-virtual {p2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    return-void
.end method

.method public getItem(Ljava/lang/String;)V
    .registers 3

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->cachedProducts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    if-nez p1, :cond_b

    goto :goto_2c

    .line 130
    :cond_b
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object p1

    .line 132
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object p1

    invoke-static {p1}, Lcom/svpteam/SVPActivity$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0, p0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    :goto_2c
    return-void
.end method

.method public hasGP()Z
    .registers 3

    .line 169
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_14

    const/16 v1, 0x12

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    return v0

    :cond_14
    :goto_14
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$review$0$com-svpteam-SVPActivity(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 179
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {v0, p0, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 31
    invoke-super {p0, p1}, Lcom/svpteam/SVPActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/svpteam/SVPActivity;->purchasesUpdatedListener:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 38
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    iput-object p1, p0, Lcom/svpteam/SVPActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 45
    invoke-super {p0}, Lcom/svpteam/SVPActivityBase;->onDestroy()V

    return-void
.end method

.method public readItems()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_17

    .line 66
    :cond_d
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/svpteam/SVPActivity$2;

    invoke-direct {v1, p0}, Lcom/svpteam/SVPActivity$2;-><init>(Lcom/svpteam/SVPActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public review()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/svpteam/SVPActivity;->reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/svpteam/SVPActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/svpteam/SVPActivity$$ExternalSyntheticLambda2;-><init>(Lcom/svpteam/SVPActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass1 (com.svpteam.SVPActivity$1)
.class Lcom/svpteam/SVPActivity$1;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/svpteam/SVPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivity;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/svpteam/SVPActivity$1;->this$0:Lcom/svpteam/SVPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 54
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    goto :goto_b

    .line 56
    :cond_3b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass2 (com.svpteam.SVPActivity$2)
.class Lcom/svpteam/SVPActivity$2;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivity;->readItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivity;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/svpteam/SVPActivity$2;->this$0:Lcom/svpteam/SVPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .registers 3

    const/4 v0, 0x0

    .line 119
    const-string v1, "-1"

    invoke-static {v0, v1}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .registers 7

    .line 71
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_6a

    .line 73
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "unlock0"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v3, "inapp"

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    const-string v4, "svp4"

    invoke-virtual {v2, v4}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    .line 80
    iget-object v1, p0, Lcom/svpteam/SVPActivity$2;->this$0:Lcom/svpteam/SVPActivity;

    invoke-static {v1}, Lcom/svpteam/SVPActivity;->access$100(Lcom/svpteam/SVPActivity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object v0

    new-instance v2, Lcom/svpteam/SVPActivity$2$1;

    invoke-direct {v2, p0}, Lcom/svpteam/SVPActivity$2$1;-><init>(Lcom/svpteam/SVPActivity$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 96
    iget-object v0, p0, Lcom/svpteam/SVPActivity$2;->this$0:Lcom/svpteam/SVPActivity;

    invoke-static {v0}, Lcom/svpteam/SVPActivity;->access$100(Lcom/svpteam/SVPActivity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/svpteam/SVPActivity$2$2;

    invoke-direct {v2, p0}, Lcom/svpteam/SVPActivity$2$2;-><init>(Lcom/svpteam/SVPActivity$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 115
    :cond_6a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass2.AnonymousClass1 (com.svpteam.SVPActivity$2$1)
.class Lcom/svpteam/SVPActivity$2$1;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivity$2;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/svpteam/SVPActivity$2;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity$2;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/svpteam/SVPActivity$2$1;->this$1:Lcom/svpteam/SVPActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 9

    .line 85
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_69

    .line 86
    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/ProductDetails;

    .line 88
    iget-object v1, p0, Lcom/svpteam/SVPActivity$2$1;->this$1:Lcom/svpteam/SVPActivity$2;

    iget-object v1, v1, Lcom/svpteam/SVPActivity$2;->this$0:Lcom/svpteam/SVPActivity;

    invoke-static {v1}, Lcom/svpteam/SVPActivity;->access$000(Lcom/svpteam/SVPActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    goto :goto_e

    .line 92
    :cond_69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass2.C00052 (com.svpteam.SVPActivity$2$2)
.class Lcom/svpteam/SVPActivity$2$2;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivity$2;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/svpteam/SVPActivity$2;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity$2;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/svpteam/SVPActivity$2$2;->this$1:Lcom/svpteam/SVPActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_3a

    .line 107
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    goto :goto_a

    .line 109
    :cond_3a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lcom/svpteam/SVPActivityBase;->setItem(ILjava/lang/String;)V

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass3 (com.svpteam.SVPActivity$3)
.class Lcom/svpteam/SVPActivity$3;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivity;->acceptItem(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivity;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/svpteam/SVPActivity$3;->this$0:Lcom/svpteam/SVPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .registers 2

    return-void
.end method

###### Class com.svpteam.SVPActivity.AnonymousClass4 (com.svpteam.SVPActivity$4)
.class Lcom/svpteam/SVPActivity$4;
.super Ljava/lang/Object;
.source "SVPActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/svpteam/SVPActivity;->acceptItem(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/svpteam/SVPActivity;


# direct methods
.method constructor <init>(Lcom/svpteam/SVPActivity;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/svpteam/SVPActivity$4;->this$0:Lcom/svpteam/SVPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

###### Class com.svpteam.SVPActivity$$ExternalSyntheticLambda2 (com.svpteam.SVPActivity$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/svpteam/SVPActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/svpteam/SVPActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/svpteam/SVPActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/svpteam/SVPActivity$$ExternalSyntheticLambda2;->f$0:Lcom/svpteam/SVPActivity;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/svpteam/SVPActivity$$ExternalSyntheticLambda2;->f$0:Lcom/svpteam/SVPActivity;

    invoke-virtual {v0, p1}, Lcom/svpteam/SVPActivity;->lambda$review$0$com-svpteam-SVPActivity(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
