package org.qtproject.qt.android.networkinformation;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
class QtAndroidNetworkInformation {
    private static final String LOG_TAG = "QtAndroidNetworkInformation";
    private static QtNetworkInformationCallback m_callback;
    private static final Object m_lock = new Object();

    enum AndroidConnectivity {
        Connected,
        Unknown,
        Disconnected
    }

    enum Transport {
        Unknown,
        Bluetooth,
        Cellular,
        Ethernet,
        LoWPAN,
        Usb,
        WiFi,
        WiFiAware
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native void genericInfoChanged(boolean z, boolean z2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void networkConnectivityChanged(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void transportMediumChanged(int i);

    private static class QtNetworkInformationCallback extends ConnectivityManager.NetworkCallback {
        AndroidConnectivity previousState = null;
        Transport previousTransport = null;

        QtNetworkInformationCallback() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            AndroidConnectivity androidConnectivity;
            if (!networkCapabilities.hasCapability(12)) {
                androidConnectivity = AndroidConnectivity.Disconnected;
            } else if (networkCapabilities.hasCapability(16)) {
                androidConnectivity = AndroidConnectivity.Connected;
            } else {
                androidConnectivity = AndroidConnectivity.Unknown;
            }
            Transport transport = getTransport(networkCapabilities);
            if (transport == Transport.Unknown) {
                androidConnectivity = AndroidConnectivity.Unknown;
            }
            setState(androidConnectivity);
            setTransportMedium(transport);
            QtAndroidNetworkInformation.genericInfoChanged(networkCapabilities.hasCapability(17), !networkCapabilities.hasCapability(11));
        }

        private Transport getTransport(NetworkCapabilities networkCapabilities) {
            if (networkCapabilities.hasTransport(1)) {
                return Transport.WiFi;
            }
            if (networkCapabilities.hasTransport(0)) {
                return Transport.Cellular;
            }
            if (networkCapabilities.hasTransport(2)) {
                return Transport.Bluetooth;
            }
            if (networkCapabilities.hasTransport(3)) {
                return Transport.Ethernet;
            }
            if (networkCapabilities.hasTransport(5)) {
                return Transport.WiFiAware;
            }
            if (networkCapabilities.hasTransport(6)) {
                return Transport.LoWPAN;
            }
            return Transport.Unknown;
        }

        private void setState(AndroidConnectivity androidConnectivity) {
            if (this.previousState != androidConnectivity) {
                this.previousState = androidConnectivity;
                QtAndroidNetworkInformation.networkConnectivityChanged(androidConnectivity.ordinal());
            }
        }

        private void setTransportMedium(Transport transport) {
            if (this.previousTransport != transport) {
                this.previousTransport = transport;
                QtAndroidNetworkInformation.transportMediumChanged(transport.ordinal());
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            setState(AndroidConnectivity.Disconnected);
        }
    }

    private QtAndroidNetworkInformation() {
    }

    static AndroidConnectivity state() {
        QtNetworkInformationCallback qtNetworkInformationCallback = m_callback;
        if (qtNetworkInformationCallback != null && qtNetworkInformationCallback.previousState != null) {
            return m_callback.previousState;
        }
        return AndroidConnectivity.Unknown;
    }

    static void registerReceiver(Context context) {
        synchronized (m_lock) {
            if (m_callback == null) {
                ConnectivityManager connectivityManager = getConnectivityManager(context);
                m_callback = new QtNetworkInformationCallback();
                NetworkRequest.Builder builder = new NetworkRequest.Builder();
                if (Build.VERSION.SDK_INT >= 30) {
                    builder = builder.clearCapabilities();
                }
                connectivityManager.registerNetworkCallback(builder.addCapability(12).addCapability(21).addCapability(19).build(), m_callback);
            }
        }
    }

    static void unregisterReceiver(Context context) {
        synchronized (m_lock) {
            if (m_callback != null) {
                getConnectivityManager(context).unregisterNetworkCallback(m_callback);
                m_callback = null;
            }
        }
    }

    static ConnectivityManager getConnectivityManager(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }
}
