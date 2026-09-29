package com.android.billingclient.api;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.BuildConfig;
import com.google.android.gms.internal.play_billing.zzjs;
import com.google.android.gms.internal.play_billing.zzke;
import com.google.android.gms.internal.play_billing.zzkg;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {
    static final String EXTERNAL_BROADCAST_PERMISSION = "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST";
    private static final String KEY_ACTIVITY_CODE = "activity_code";
    static final String KEY_IN_APP_MESSAGE_RESULT_RECEIVER = "in_app_message_result_receiver";
    private static final String KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED = "send_cancelled_broadcast_if_finished";
    private static final int REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW = 110;
    private static final int REQUEST_CODE_IN_APP_MESSAGE_FLOW = 101;
    private static final int REQUEST_CODE_LAUNCH_ACTIVITY = 100;
    static final int RESULT_CODE_PLAY_CANCELED_WITH_ON_CREATE_RUNTIME_EXCEPTION = 5;
    static final int RESULT_CODE_PLAY_CANCELLED = 3;
    static final int RESULT_CODE_PLAY_CANCELLED_WITHOUT_COMPLETE_ACTION = 4;
    private static final String TAG = "ProxyBillingActivity";
    private int activityCode;
    private long billingClientTransactionId;
    zzdd billingLogger;
    private ResultReceiver inAppMessageResultReceiver;
    private boolean isFlowFromFirstPartyClient;
    zzej proxyBillingBroadcastReceiver;
    private boolean sendCancelledBroadcastIfFinished;
    private boolean wasServiceAutoReconnected;

    private zzjs getLoggingErrorReason(int i, Intent intent) {
        return intent == null ? i != -1 ? i != 0 ? i != 3 ? i != 4 ? zzjs.NULL_DATA_WITH_OTHER_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : zzjs.NULL_DATA_WITH_PLAY_CANCELED_WITHOUT_COMPLETE_ACTION_RESULT_CODE : zzjs.NULL_DATA_WITH_PLAY_CANCELED_RESULT_CODE : zzjs.NULL_DATA_WITH_CANCELLED_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : zzjs.NULL_DATA_WITH_OK_RESULT_CODE_IN_PROXY_BILLING_ACTIVITY_RESULT : intent.getExtras() == null ? zzjs.NULL_BUNDLE_IN_ACTIVITY_RESULT : i == 5 ? zzjs.PLAY_STORE_ON_CREATE_RUNTIME_EXCEPTION : zzjs.REASON_UNSPECIFIED;
    }

    private boolean isInAppMessageFlow(Bundle bundle) {
        if (bundle != null) {
            return bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
        }
        if (getIntent() == null) {
            return false;
        }
        return getIntent().hasExtra("IN_APP_MESSAGE_INTENT");
    }

    private boolean isKnownError(int i, Intent intent) {
        return !getLoggingErrorReason(i, intent).equals(zzjs.REASON_UNSPECIFIED);
    }

    private boolean isProxyBillingBroadcastReceiverRegistered() {
        return this.proxyBillingBroadcastReceiver != null;
    }

    private Intent makeAlternativeBillingIntent(String str) {
        Intent intent = new Intent("com.android.vending.billing.ALTERNATIVE_BILLING");
        intent.setPackage(getApplicationContext().getPackageName());
        intent.putExtra("ALTERNATIVE_BILLING_USER_CHOICE_DATA", str);
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.content.Intent makePurchaseUpdatedIntentWithResponseCodeAndReason(com.google.android.gms.internal.play_billing.zzjs r7, long r8, boolean r10) {
        /*
            r6 = this;
            android.content.Intent r0 = r6.makePurchasesUpdatedIntent()
            java.lang.String r1 = "FAILURE_LOGGING_PAYLOAD"
            r2 = 0
            r3 = 2
            java.lang.String r4 = "DEBUG_MESSAGE"
            java.lang.String r5 = "RESPONSE_CODE"
            if (r10 == 0) goto L68
            boolean r10 = r6.isProxyBillingBroadcastReceiverRegistered()
            if (r10 == 0) goto L31
            com.android.billingclient.api.zzej r10 = r6.proxyBillingBroadcastReceiver
            com.android.billingclient.api.BillingResult r10 = r10.zza()
            if (r10 == 0) goto L31
            com.android.billingclient.api.zzej r7 = r6.proxyBillingBroadcastReceiver
            com.android.billingclient.api.BillingResult r7 = r7.zza()
            int r10 = r7.getResponseCode()
            r0.putExtra(r5, r10)
            java.lang.String r7 = r7.getDebugMessage()
            r0.putExtra(r4, r7)
            goto L8e
        L31:
            boolean r10 = r6.isProxyBillingBroadcastReceiverRegistered()
            if (r10 == 0) goto L68
            com.android.billingclient.api.zzej r10 = r6.proxyBillingBroadcastReceiver
            boolean r10 = r10.zzc()
            if (r10 != 0) goto L68
            r7 = 3
            r0.putExtra(r5, r7)
            java.lang.String r10 = "Play Store is blocked."
            r0.putExtra(r4, r10)
            com.android.billingclient.api.BillingResult$Builder r4 = com.android.billingclient.api.BillingResult.newBuilder()
            r4.setResponseCode(r7)
            r4.setDebugMessage(r10)
            com.android.billingclient.api.BillingResult r7 = r4.build()
            com.google.android.gms.internal.play_billing.zzjs r10 = com.google.android.gms.internal.play_billing.zzjs.PLAY_STORE_APP_BLOCKED
            int r4 = com.android.billingclient.api.zzdc.zza
            com.google.android.gms.internal.play_billing.zzjz r4 = com.google.android.gms.internal.play_billing.zzjz.BROADCAST_ACTION_UNSPECIFIED
            com.google.android.gms.internal.play_billing.zzjl r7 = com.android.billingclient.api.zzdc.zzb(r10, r3, r7, r2, r4)
            byte[] r7 = r7.zzQ()
            r0.putExtra(r1, r7)
            goto L8e
        L68:
            r10 = 6
            r0.putExtra(r5, r10)
            java.lang.String r5 = "An internal error occurred."
            r0.putExtra(r4, r5)
            com.android.billingclient.api.BillingResult$Builder r4 = com.android.billingclient.api.BillingResult.newBuilder()
            r4.setResponseCode(r10)
            r4.setDebugMessage(r5)
            com.android.billingclient.api.BillingResult r10 = r4.build()
            int r4 = com.android.billingclient.api.zzdc.zza
            com.google.android.gms.internal.play_billing.zzjz r4 = com.google.android.gms.internal.play_billing.zzjz.BROADCAST_ACTION_UNSPECIFIED
            com.google.android.gms.internal.play_billing.zzjl r7 = com.android.billingclient.api.zzdc.zzb(r7, r3, r10, r2, r4)
            byte[] r7 = r7.zzQ()
            r0.putExtra(r1, r7)
        L8e:
            java.lang.String r7 = "INTENT_SOURCE"
            java.lang.String r10 = "LAUNCH_BILLING_FLOW"
            r0.putExtra(r7, r10)
            java.lang.String r7 = "billingClientTransactionId"
            r0.putExtra(r7, r8)
            boolean r7 = r6.wasServiceAutoReconnected
            java.lang.String r8 = "wasServiceAutoReconnected"
            r0.putExtra(r8, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.makePurchaseUpdatedIntentWithResponseCodeAndReason(com.google.android.gms.internal.play_billing.zzjs, long, boolean):android.content.Intent");
    }

    private Intent makePurchasesUpdatedIntent() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:5:0x001d, B:19:0x002e, B:21:0x0034, B:23:0x005b, B:22:0x0048, B:27:0x0065), top: B:29:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048 A[Catch: all -> 0x0064, TryCatch #1 {all -> 0x0064, blocks: (B:5:0x001d, B:19:0x002e, B:21:0x0034, B:23:0x005b, B:22:0x0048, B:27:0x0065), top: B:29:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void registerProxyBillingBroadcastReceiver() throws java.lang.Throwable {
        /*
            r8 = this;
            monitor-enter(r8)
            com.android.billingclient.api.zzej r0 = new com.android.billingclient.api.zzej     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            com.android.billingclient.api.zzdd r1 = r8.billingLogger     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            r8.proxyBillingBroadcastReceiver = r0     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            android.content.IntentFilter r4 = new android.content.IntentFilter     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            java.lang.String r0 = "com.android.vending.billing.IN_APP_BILLING_RESULT_UPDATE_ACTION"
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            java.lang.String r0 = "com.android.vending.billing.PLAY_BILLING_ACTIVITY_CREATED_ACTION"
            r4.addAction(r0)     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            com.android.billingclient.api.zzej r3 = r8.proxyBillingBroadcastReceiver     // Catch: java.lang.Throwable -> L26 java.lang.NoSuchMethodError -> L29 java.lang.RuntimeException -> L2b
            java.lang.String r5 = "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"
            r6 = 0
            r7 = 2
            r2 = r8
            androidx.core.content.ContextCompat.registerReceiver(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.NoSuchMethodError -> L22 java.lang.RuntimeException -> L24 java.lang.Throwable -> L64
            monitor-exit(r8)
            return
        L22:
            r0 = move-exception
            goto L2d
        L24:
            r0 = move-exception
            goto L2d
        L26:
            r0 = move-exception
            r2 = r8
            goto L65
        L29:
            r0 = move-exception
            goto L2c
        L2b:
            r0 = move-exception
        L2c:
            r2 = r8
        L2d:
            r1 = 0
            r2.proxyBillingBroadcastReceiver = r1     // Catch: java.lang.Throwable -> L64
            boolean r1 = r0 instanceof java.lang.NoSuchMethodError     // Catch: java.lang.Throwable -> L64
            if (r1 == 0) goto L48
            com.android.billingclient.api.zzdd r1 = r2.billingLogger     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzla r3 = com.google.android.gms.internal.play_billing.zzld.zza()     // Catch: java.lang.Throwable -> L64
            r4 = 2
            r3.zza(r4)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzgp r3 = r3.zzi()     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzld r3 = (com.google.android.gms.internal.play_billing.zzld) r3     // Catch: java.lang.Throwable -> L64
            r1.zzl(r3)     // Catch: java.lang.Throwable -> L64
            goto L5b
        L48:
            com.android.billingclient.api.zzdd r1 = r2.billingLogger     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzla r3 = com.google.android.gms.internal.play_billing.zzld.zza()     // Catch: java.lang.Throwable -> L64
            r4 = 1
            r3.zza(r4)     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzgp r3 = r3.zzi()     // Catch: java.lang.Throwable -> L64
            com.google.android.gms.internal.play_billing.zzld r3 = (com.google.android.gms.internal.play_billing.zzld) r3     // Catch: java.lang.Throwable -> L64
            r1.zzl(r3)     // Catch: java.lang.Throwable -> L64
        L5b:
            java.lang.String r1 = "ProxyBillingActivity"
            java.lang.String r3 = "Failed to register receiver."
            com.google.android.gms.internal.play_billing.zzc.zzo(r1, r3, r0)     // Catch: java.lang.Throwable -> L64
            monitor-exit(r8)
            return
        L64:
            r0 = move-exception
        L65:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L64
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.registerProxyBillingBroadcastReceiver():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onActivityResult(int r9, int r10, android.content.Intent r11) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) throws Throwable {
        int i;
        PendingIntent pendingIntent;
        Bundle bundle2;
        Bundle bundle3;
        super.onCreate(bundle);
        if (!isInAppMessageFlow(bundle)) {
            try {
                i = getPackageManager().getPackageInfo(getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Failed to get package info for current package.", e);
                i = -1;
            }
            if (this.billingLogger == null) {
                Context applicationContext = getApplicationContext();
                zzke zzkeVarZza = zzkg.zza();
                zzkeVarZza.zzq(getPackageName());
                zzkeVarZza.zzx(BuildConfig.VERSION_NAME);
                zzkeVarZza.zzb(i);
                zzkeVarZza.zza(Build.VERSION.SDK_INT);
                zzkeVarZza.zzp(926300087L);
                this.billingLogger = new zzdr(applicationContext, (zzkg) zzkeVarZza.zzi());
            }
            registerProxyBillingBroadcastReceiver();
        }
        if (bundle != null) {
            com.google.android.gms.internal.play_billing.zzc.zzm(TAG, "Launching Play Store billing flow from savedInstanceState");
            this.sendCancelledBroadcastIfFinished = bundle.getBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, false);
            if (bundle.containsKey(KEY_IN_APP_MESSAGE_RESULT_RECEIVER)) {
                this.inAppMessageResultReceiver = (ResultReceiver) bundle.getParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            }
            this.isFlowFromFirstPartyClient = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.activityCode = bundle.getInt(KEY_ACTIVITY_CODE, 100);
            if (bundle.containsKey("billingClientTransactionId")) {
                this.billingClientTransactionId = bundle.getLong("billingClientTransactionId");
            }
            if (bundle.containsKey("wasServiceAutoReconnected")) {
                this.wasServiceAutoReconnected = bundle.getBoolean("wasServiceAutoReconnected");
                return;
            }
            return;
        }
        com.google.android.gms.internal.play_billing.zzc.zzm(TAG, "Launching Play Store billing flow");
        this.activityCode = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.isFlowFromFirstPartyClient = true;
                this.activityCode = REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW;
            }
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.inAppMessageResultReceiver = (ResultReceiver) getIntent().getParcelableExtra(KEY_IN_APP_MESSAGE_RESULT_RECEIVER);
            this.activityCode = REQUEST_CODE_IN_APP_MESSAGE_FLOW;
        } else {
            pendingIntent = null;
        }
        if (getIntent().hasExtra("billingClientTransactionId")) {
            this.billingClientTransactionId = getIntent().getLongExtra("billingClientTransactionId", 0L);
        }
        if (getIntent().hasExtra("wasServiceAutoReconnected")) {
            this.wasServiceAutoReconnected = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
        }
        try {
            this.sendCancelledBroadcastIfFinished = true;
            if (Build.VERSION.SDK_INT >= 36) {
                bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(3).toBundle();
            } else {
                if (Build.VERSION.SDK_INT < 34) {
                    bundle2 = null;
                    startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
                }
                bundle3 = ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle();
            }
            bundle2 = bundle3;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.activityCode, new Intent(), 0, 0, 0, bundle2);
        } catch (IntentSender.SendIntentException e2) {
            com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Got exception while trying to start a purchase flow.", e2);
            ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent intentMakePurchaseUpdatedIntentWithResponseCodeAndReason = makePurchaseUpdatedIntentWithResponseCodeAndReason(zzjs.INTENT_SENDER_EXCEPTION, this.billingClientTransactionId, false);
                if (this.isFlowFromFirstPartyClient) {
                    intentMakePurchaseUpdatedIntentWithResponseCodeAndReason.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(intentMakePurchaseUpdatedIntentWithResponseCodeAndReason);
            }
            this.sendCancelledBroadcastIfFinished = false;
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        BillingResult billingResultZza;
        super.onDestroy();
        if (isProxyBillingBroadcastReceiverRegistered()) {
            billingResultZza = this.proxyBillingBroadcastReceiver.zza();
            try {
                unregisterReceiver(this.proxyBillingBroadcastReceiver);
            } catch (RuntimeException e) {
                com.google.android.gms.internal.play_billing.zzc.zzo(TAG, "Failed to unregister receiver.", e);
            }
        } else {
            billingResultZza = null;
        }
        if (isFinishing() && this.sendCancelledBroadcastIfFinished) {
            Intent intentMakePurchasesUpdatedIntent = makePurchasesUpdatedIntent();
            if (billingResultZza != null) {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", billingResultZza.getResponseCode());
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", billingResultZza.getDebugMessage());
            } else {
                intentMakePurchasesUpdatedIntent.putExtra("RESPONSE_CODE", 1);
                intentMakePurchasesUpdatedIntent.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            }
            if (this.isFlowFromFirstPartyClient) {
                intentMakePurchasesUpdatedIntent.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.activityCode;
            if (i == REQUEST_CODE_FIRST_PARTY_PURCHASE_FLOW || i == 100) {
                intentMakePurchasesUpdatedIntent.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                intentMakePurchasesUpdatedIntent.putExtra("billingClientTransactionId", this.billingClientTransactionId);
            }
            sendBroadcast(intentMakePurchasesUpdatedIntent);
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.inAppMessageResultReceiver;
        if (resultReceiver != null) {
            bundle.putParcelable(KEY_IN_APP_MESSAGE_RESULT_RECEIVER, resultReceiver);
        }
        bundle.putBoolean(KEY_SEND_CANCELLED_BROADCAST_IF_FINISHED, this.sendCancelledBroadcastIfFinished);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.isFlowFromFirstPartyClient);
        bundle.putInt(KEY_ACTIVITY_CODE, this.activityCode);
        bundle.putLong("billingClientTransactionId", this.billingClientTransactionId);
        bundle.putBoolean("wasServiceAutoReconnected", this.wasServiceAutoReconnected);
    }
}
