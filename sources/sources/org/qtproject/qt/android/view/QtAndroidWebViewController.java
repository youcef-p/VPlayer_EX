package org.qtproject.qt.android.view;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.GeolocationPermissions;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.lang.reflect.Method;
import java.util.OptionalInt;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
class QtAndroidWebViewController {
    private static final String TAG = "QtAndroidWebViewController";
    private final Activity m_activity;
    private OptionalInt m_errorCode;
    private boolean m_hasLocationPermission;
    private final long m_id;
    private WebView m_webView = null;
    private StringBuffer m_errorString = new StringBuffer();
    private final int INIT_STATE = 0;
    private final int STARTED_STATE = 1;
    private final int LOADING_STATE = 2;
    private final int FINISHED_STATE = 3;
    private volatile int m_loadingState = 0;
    private volatile int m_progress = 0;
    private volatile int m_frameCount = 0;
    private Method m_webViewOnResume = null;
    private Method m_webViewOnPause = null;
    private Method m_webSettingsSetDisplayZoomControls = null;
    private Method m_webViewEvaluateJavascript = null;
    private final long BLOCKING_TIMEOUT = 250;

    /* JADX INFO: Access modifiers changed from: private */
    public static native void c_onCookieAdded(long j, boolean z, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void c_onCookieRemoved(long j, boolean z, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onPageFinished(long j, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onPageStarted(long j, String str, Bitmap bitmap);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onProgressChanged(long j, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onReceivedError(long j, int i, String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onReceivedIcon(long j, Bitmap bitmap);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onReceivedTitle(long j, String str);

    /* JADX INFO: Access modifiers changed from: private */
    public native void c_onRunJavaScriptResult(long j, long j2, String str);

    static /* synthetic */ int access$004(QtAndroidWebViewController qtAndroidWebViewController) {
        int i = qtAndroidWebViewController.m_frameCount + 1;
        qtAndroidWebViewController.m_frameCount = i;
        return i;
    }

    private void resetLoadingState(int i) {
        this.m_progress = 0;
        this.m_frameCount = 0;
        this.m_loadingState = i;
    }

    private class QtAndroidWebViewClient extends WebViewClient {
        QtAndroidWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (URLUtil.isValidUrl(webResourceRequest.getUrl().toString())) {
                return false;
            }
            try {
                webView.getContext().startActivity(new Intent("android.intent.action.VIEW", webResourceRequest.getUrl()));
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            super.onLoadResource(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            QtAndroidWebViewController.this.m_frameCount = 0;
            QtAndroidWebViewController.this.m_loadingState = 3;
            if (QtAndroidWebViewController.this.m_errorString.length() != 0 && QtAndroidWebViewController.this.m_errorCode.isPresent()) {
                QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
                qtAndroidWebViewController.c_onReceivedError(qtAndroidWebViewController.m_id, QtAndroidWebViewController.this.m_errorCode.getAsInt(), QtAndroidWebViewController.this.m_errorString.toString(), str);
                QtAndroidWebViewController.this.m_errorString.setLength(0);
                QtAndroidWebViewController.this.m_errorCode = OptionalInt.empty();
                return;
            }
            QtAndroidWebViewController qtAndroidWebViewController2 = QtAndroidWebViewController.this;
            qtAndroidWebViewController2.c_onPageFinished(qtAndroidWebViewController2.m_id, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (QtAndroidWebViewController.access$004(QtAndroidWebViewController.this) == 1) {
                QtAndroidWebViewController.this.m_loadingState = 2;
                QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
                qtAndroidWebViewController.c_onPageStarted(qtAndroidWebViewController.m_id, str, bitmap);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (webResourceRequest.isForMainFrame()) {
                QtAndroidWebViewController.this.m_errorString.setLength(0);
                QtAndroidWebViewController.this.m_errorString.append(webResourceError.getDescription());
                QtAndroidWebViewController.this.m_errorCode = OptionalInt.of(webResourceError.getErrorCode());
                super.onReceivedError(webView, webResourceRequest, webResourceError);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            if (webResourceRequest.isForMainFrame()) {
                QtAndroidWebViewController.this.m_errorString.setLength(0);
                QtAndroidWebViewController.this.m_errorString.append(webResourceResponse.getReasonPhrase());
                QtAndroidWebViewController.this.m_errorCode = OptionalInt.of(webResourceResponse.getStatusCode());
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }
        }
    }

    private class QtAndroidWebChromeClient extends WebChromeClient {
        QtAndroidWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
            QtAndroidWebViewController.this.m_progress = i;
            QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
            qtAndroidWebViewController.c_onProgressChanged(qtAndroidWebViewController.m_id, i);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            super.onReceivedIcon(webView, bitmap);
            QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
            qtAndroidWebViewController.c_onReceivedIcon(qtAndroidWebViewController.m_id, bitmap);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
            qtAndroidWebViewController.c_onReceivedTitle(qtAndroidWebViewController.m_id, str);
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            callback.invoke(str, QtAndroidWebViewController.this.m_hasLocationPermission, false);
        }
    }

    QtAndroidWebViewController(Activity activity, long j) {
        this.m_activity = activity;
        this.m_id = j;
        final Semaphore semaphore = new Semaphore(0);
        activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.1
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView = new WebView(QtAndroidWebViewController.this.m_activity);
                QtAndroidWebViewController qtAndroidWebViewController = QtAndroidWebViewController.this;
                qtAndroidWebViewController.m_hasLocationPermission = QtAndroidWebViewController.hasLocationPermission(qtAndroidWebViewController.m_webView);
                WebSettings settings = QtAndroidWebViewController.this.m_webView.getSettings();
                settings.setDomStorageEnabled(true);
                try {
                    QtAndroidWebViewController qtAndroidWebViewController2 = QtAndroidWebViewController.this;
                    qtAndroidWebViewController2.m_webViewOnResume = qtAndroidWebViewController2.m_webView.getClass().getMethod("onResume", new Class[0]);
                    QtAndroidWebViewController qtAndroidWebViewController3 = QtAndroidWebViewController.this;
                    qtAndroidWebViewController3.m_webViewOnPause = qtAndroidWebViewController3.m_webView.getClass().getMethod("onPause", new Class[0]);
                    QtAndroidWebViewController.this.m_webSettingsSetDisplayZoomControls = settings.getClass().getMethod("setDisplayZoomControls", Boolean.TYPE);
                    QtAndroidWebViewController qtAndroidWebViewController4 = QtAndroidWebViewController.this;
                    qtAndroidWebViewController4.m_webViewEvaluateJavascript = qtAndroidWebViewController4.m_webView.getClass().getMethod("evaluateJavascript", String.class, ValueCallback.class);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                settings.setGeolocationEnabled(QtAndroidWebViewController.this.m_hasLocationPermission);
                settings.setJavaScriptEnabled(true);
                if (QtAndroidWebViewController.this.m_webSettingsSetDisplayZoomControls != null) {
                    try {
                        QtAndroidWebViewController.this.m_webSettingsSetDisplayZoomControls.invoke(settings, false);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
                settings.setBuiltInZoomControls(true);
                QtAndroidWebViewController.this.m_webView.setWebViewClient(QtAndroidWebViewController.this.new QtAndroidWebViewClient());
                QtAndroidWebViewController.this.m_webView.setWebChromeClient(QtAndroidWebViewController.this.new QtAndroidWebChromeClient());
                semaphore.release();
            }
        });
        try {
            semaphore.acquire();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void setLocalStorageEnabled(final boolean z) {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.2
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings().setDomStorageEnabled(z);
            }
        });
    }

    boolean isLocalStorageEnabled() {
        final boolean[] zArr = {true};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.3
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.getSettings().getDomStorageEnabled();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    void setJavaScriptEnabled(final boolean z) {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.4
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings().setJavaScriptEnabled(z);
            }
        });
    }

    boolean isJavaScriptEnabled() {
        final boolean[] zArr = {true};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.5
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.getSettings().getJavaScriptEnabled();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    void setAllowFileAccessFromFileURLs(final boolean z) {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.6
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings().setAllowFileAccessFromFileURLs(z);
            }
        });
    }

    boolean isAllowFileAccessFromFileURLsEnabled() {
        final boolean[] zArr = {true};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.7
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.getSettings().getAllowFileAccessFromFileURLs();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    void setAllowFileAccess(final boolean z) {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.8
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings().setAllowFileAccess(z);
            }
        });
    }

    boolean isAllowFileAccessEnabled() {
        final boolean[] zArr = {true};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.9
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.getSettings().getAllowFileAccess();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    String getUserAgent() {
        final String[] strArr = {""};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.10
            @Override // java.lang.Runnable
            public void run() {
                strArr[0] = QtAndroidWebViewController.this.m_webView.getSettings().getUserAgentString();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return strArr[0];
    }

    void setUserAgent(final String str) {
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.11
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings().setUserAgentString(str);
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    String getUrl() {
        final String[] strArr = {""};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.12
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.getSettings();
                strArr[0] = QtAndroidWebViewController.this.m_webView.getUrl();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return strArr[0];
    }

    void loadUrl(final String str) {
        if (str == null) {
            return;
        }
        resetLoadingState(1);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.13
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.loadUrl(str);
            }
        });
    }

    void loadData(final String str, final String str2, final String str3) {
        if (str == null) {
            return;
        }
        resetLoadingState(1);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.14
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.loadData(str, str2, str3);
            }
        });
    }

    void loadDataWithBaseURL(final String str, final String str2, final String str3, final String str4, final String str5) {
        if (str2 == null) {
            return;
        }
        resetLoadingState(1);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.15
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.loadDataWithBaseURL(str, str2, str3, str4, str5);
            }
        });
    }

    void goBack() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.16
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.goBack();
            }
        });
    }

    boolean canGoBack() {
        final boolean[] zArr = {false};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.17
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.canGoBack();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    void goForward() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.18
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.goForward();
            }
        });
    }

    boolean canGoForward() {
        final boolean[] zArr = {false};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.19
            @Override // java.lang.Runnable
            public void run() {
                zArr[0] = QtAndroidWebViewController.this.m_webView.canGoForward();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return zArr[0];
    }

    void stopLoading() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.20
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.stopLoading();
            }
        });
    }

    void reload() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.21
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.reload();
            }
        });
    }

    String getTitle() {
        final String[] strArr = {""};
        final Semaphore semaphore = new Semaphore(0);
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.22
            @Override // java.lang.Runnable
            public void run() {
                strArr[0] = QtAndroidWebViewController.this.m_webView.getTitle();
                semaphore.release();
            }
        });
        try {
            semaphore.tryAcquire(250L, TimeUnit.MILLISECONDS);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return strArr[0];
    }

    int getProgress() {
        return this.m_progress;
    }

    boolean isLoading() {
        return this.m_loadingState == 2 || this.m_loadingState == 1 || (this.m_progress > 0 && this.m_progress < 100);
    }

    void runJavaScript(final String str, final long j) {
        if (str == null || this.m_webViewEvaluateJavascript == null) {
            return;
        }
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.23
            @Override // java.lang.Runnable
            public void run() {
                try {
                    QtAndroidWebViewController.this.m_webViewEvaluateJavascript.invoke(QtAndroidWebViewController.this.m_webView, str, j == -1 ? null : new ValueCallback<String>() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.23.1
                        @Override // android.webkit.ValueCallback
                        public void onReceiveValue(String str2) {
                            QtAndroidWebViewController.this.c_onRunJavaScriptResult(QtAndroidWebViewController.this.m_id, j, str2);
                        }
                    });
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    WebView getWebView() {
        return this.m_webView;
    }

    void onPause() {
        if (this.m_webViewOnPause == null) {
            return;
        }
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.24
            @Override // java.lang.Runnable
            public void run() {
                try {
                    QtAndroidWebViewController.this.m_webViewOnPause.invoke(QtAndroidWebViewController.this.m_webView, new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    void onResume() {
        if (this.m_webViewOnResume == null) {
            return;
        }
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.25
            @Override // java.lang.Runnable
            public void run() {
                try {
                    QtAndroidWebViewController.this.m_webViewOnResume.invoke(QtAndroidWebViewController.this.m_webView, new Object[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasLocationPermission(View view) {
        return view.getContext().getPackageManager().checkPermission("android.permission.ACCESS_FINE_LOCATION", view.getContext().getPackageName()) == 0;
    }

    void destroy() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.26
            @Override // java.lang.Runnable
            public void run() {
                QtAndroidWebViewController.this.m_webView.destroy();
            }
        });
    }

    private static void setCookieImp(String str, String str2, ValueCallback<Boolean> valueCallback) {
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        try {
            cookieManager.setCookie(str, str2, valueCallback);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static void setCookie(final long j, final String str, final String str2) {
        setCookieImp(str, str2, new ValueCallback<Boolean>() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.27
            @Override // android.webkit.ValueCallback
            public void onReceiveValue(Boolean bool) {
                try {
                    QtAndroidWebViewController.c_onCookieAdded(j, bool.booleanValue(), str, str2.split("=")[0]);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean hasValidCookie(String str, String str2) {
        String cookie = CookieManager.getInstance().getCookie(str);
        if (cookie != null) {
            for (String str3 : cookie.split(";")) {
                if (str3.startsWith(str2)) {
                    return !r3.endsWith("=");
                }
            }
        }
        return false;
    }

    private static String getExpireString() {
        return "expires=\"Thu, 1 Jan 1970 00:00:00 GMT\"";
    }

    static void removeCookie(final long j, final String str, final String str2) {
        final boolean zHasValidCookie = hasValidCookie(str, str2);
        if (zHasValidCookie) {
            setCookieImp(str, str2 + ";" + getExpireString(), new ValueCallback<Boolean>() { // from class: org.qtproject.qt.android.view.QtAndroidWebViewController.28
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(Boolean bool) {
                    try {
                        QtAndroidWebViewController.c_onCookieRemoved(j, zHasValidCookie && !QtAndroidWebViewController.hasValidCookie(str, str2), str, str2.split("=")[0]);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
    }

    static void removeCookies() {
        try {
            CookieManager.getInstance().removeAllCookies(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
