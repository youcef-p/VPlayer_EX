package com.svpteam;

import android.os.Bundle;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.play.core.review.ReviewInfo;
import com.google.android.play.core.review.ReviewManager;
import com.google.android.play.core.review.ReviewManagerFactory;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SVPActivity extends SVPActivityBase {
    private BillingClient billingClient;
    private Map<String, ProductDetails> cachedProducts = new ConcurrentHashMap();
    private PurchasesUpdatedListener purchasesUpdatedListener = new PurchasesUpdatedListener() { // from class: com.svpteam.SVPActivity.1
        @Override // com.android.billingclient.api.PurchasesUpdatedListener
        public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
            if (billingResult.getResponseCode() != 0) {
                return;
            }
            for (Purchase purchase : list) {
                SVPActivityBase.setItem(5, purchase.getOriginalJson() + "\n" + purchase.getSignature());
            }
            SVPActivityBase.setItem(6, billingResult.getResponseCode() + "");
        }
    };
    private ReviewManager reviewManager;

    @Override // com.svpteam.SVPActivityBase, org.qtproject.qt.android.bindings.QtActivity, org.qtproject.qt.android.QtActivityBase, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.billingClient = BillingClient.newBuilder(this).setListener(this.purchasesUpdatedListener).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        this.reviewManager = ReviewManagerFactory.create(this);
    }

    @Override // com.svpteam.SVPActivityBase, org.qtproject.qt.android.QtActivityBase, android.app.Activity
    protected void onDestroy() {
        this.billingClient.endConnection();
        super.onDestroy();
    }

    public void readItems() {
        int connectionState = this.billingClient.getConnectionState();
        if (connectionState == 2 || connectionState == 1) {
            return;
        }
        this.billingClient.startConnection(new BillingClientStateListener() { // from class: com.svpteam.SVPActivity.2
            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingSetupFinished(BillingResult billingResult) {
                if (billingResult.getResponseCode() == 0) {
                    QueryProductDetailsParams.Builder builderNewBuilder = QueryProductDetailsParams.newBuilder();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId("unlock0").setProductType(BillingClient.ProductType.INAPP).build());
                    arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId("svp4").setProductType(BillingClient.ProductType.INAPP).build());
                    builderNewBuilder.setProductList(arrayList);
                    SVPActivity.this.billingClient.queryProductDetailsAsync(builderNewBuilder.build(), new ProductDetailsResponseListener() { // from class: com.svpteam.SVPActivity.2.1
                        @Override // com.android.billingclient.api.ProductDetailsResponseListener
                        public void onProductDetailsResponse(BillingResult billingResult2, QueryProductDetailsResult queryProductDetailsResult) {
                            if (billingResult2.getResponseCode() == 0) {
                                for (ProductDetails productDetails : queryProductDetailsResult.getProductDetailsList()) {
                                    SVPActivity.this.cachedProducts.put(productDetails.getProductId(), productDetails);
                                    ProductDetails.OneTimePurchaseOfferDetails oneTimePurchaseOfferDetails = productDetails.getOneTimePurchaseOfferDetails();
                                    SVPActivityBase.setItem(1, productDetails.getProductId() + ";" + oneTimePurchaseOfferDetails.getPriceAmountMicros() + ";" + oneTimePurchaseOfferDetails.getPriceCurrencyCode() + ";" + productDetails.getTitle());
                                }
                            }
                            SVPActivityBase.setItem(2, billingResult2.getResponseCode() + "");
                        }
                    });
                    SVPActivity.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType(BillingClient.ProductType.INAPP).build(), new PurchasesResponseListener() { // from class: com.svpteam.SVPActivity.2.2
                        @Override // com.android.billingclient.api.PurchasesResponseListener
                        public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list) {
                            if (billingResult2.getResponseCode() == 0) {
                                for (Purchase purchase : list) {
                                    SVPActivityBase.setItem(3, purchase.getOriginalJson() + "\n" + purchase.getSignature());
                                }
                            }
                            SVPActivityBase.setItem(4, billingResult2.getResponseCode() + "");
                        }
                    });
                }
                SVPActivityBase.setItem(0, billingResult.getResponseCode() + "");
            }

            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingServiceDisconnected() {
                SVPActivityBase.setItem(0, "-1");
            }
        });
    }

    public void getItem(String str) {
        try {
            ProductDetails productDetails = this.cachedProducts.get(str);
            if (productDetails == null) {
                return;
            }
            this.billingClient.launchBillingFlow(this, BillingFlowParams.newBuilder().setProductDetailsParamsList(SVPActivity$$ExternalSyntheticBackport0.m(new Object[]{BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(productDetails).build()})).build());
        } catch (Exception unused) {
        }
    }

    public void acceptItem(String str, boolean z) {
        if (z) {
            this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(str).build(), new AcknowledgePurchaseResponseListener() { // from class: com.svpteam.SVPActivity.3
                @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
                public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                }
            });
        } else {
            this.billingClient.consumeAsync(ConsumeParams.newBuilder().setPurchaseToken(str).build(), new ConsumeResponseListener() { // from class: com.svpteam.SVPActivity.4
                @Override // com.android.billingclient.api.ConsumeResponseListener
                public void onConsumeResponse(BillingResult billingResult, String str2) {
                }
            });
        }
    }

    public boolean hasGP() {
        int iIsGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(this);
        return iIsGooglePlayServicesAvailable == 0 || iIsGooglePlayServicesAvailable == 18 || iIsGooglePlayServicesAvailable == 2;
    }

    public void review() {
        this.reviewManager.requestReviewFlow().addOnCompleteListener(new OnCompleteListener() { // from class: com.svpteam.SVPActivity$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.f$0.m256lambda$review$0$comsvpteamSVPActivity(task);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$review$0$com-svpteam-SVPActivity, reason: not valid java name */
    /* synthetic */ void m256lambda$review$0$comsvpteamSVPActivity(Task task) {
        if (task.isSuccessful()) {
            this.reviewManager.launchReviewFlow(this, (ReviewInfo) task.getResult());
        }
    }
}
