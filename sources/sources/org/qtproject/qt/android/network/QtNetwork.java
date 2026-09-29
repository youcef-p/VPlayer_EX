package org.qtproject.qt.android.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;

/* JADX INFO: loaded from: classes.dex */
class QtNetwork {
    private static final String LOG_TAG = "QtNetwork";
    private static final Object m_lock = new Object();
    private static ProxyInfo m_proxyInfo;
    private static ProxyReceiver m_proxyReceiver;

    private static class ProxyReceiver extends BroadcastReceiver {
        private ProxyReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ProxyInfo unused = QtNetwork.m_proxyInfo = null;
        }
    }

    private QtNetwork() {
    }

    static void registerReceiver(Context context) {
        synchronized (m_lock) {
            if (m_proxyReceiver == null) {
                m_proxyReceiver = new ProxyReceiver();
                context.registerReceiver(m_proxyReceiver, new IntentFilter("android.intent.action.PROXY_CHANGE"));
            }
        }
    }

    static void unregisterReceiver(Context context) {
        synchronized (m_lock) {
            ProxyReceiver proxyReceiver = m_proxyReceiver;
            if (proxyReceiver == null) {
                return;
            }
            context.unregisterReceiver(proxyReceiver);
        }
    }

    static ConnectivityManager getConnectivityManager(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    static ProxyInfo getProxyInfo(Context context) {
        if (m_proxyInfo == null) {
            m_proxyInfo = getConnectivityManager(context).getDefaultProxy();
        }
        return m_proxyInfo;
    }
}
