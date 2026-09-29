package org.qtproject.qt.android;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
class QtEmbeddedViewInterfaceFactory {
    private static final HashMap<Context, QtEmbeddedViewInterface> m_interfaces = new HashMap<>();
    private static final Object m_interfaceLock = new Object();

    QtEmbeddedViewInterfaceFactory() {
    }

    static QtEmbeddedViewInterface create(Context context) {
        QtEmbeddedViewInterface qtEmbeddedViewInterface;
        synchronized (m_interfaceLock) {
            HashMap<Context, QtEmbeddedViewInterface> map = m_interfaces;
            if (!map.containsKey(context)) {
                if (context instanceof Activity) {
                    map.put(context, new QtEmbeddedDelegate((Activity) context));
                } else if (context instanceof Service) {
                    map.put(context, new QtServiceEmbeddedDelegate((Service) context));
                }
            }
            qtEmbeddedViewInterface = map.get(context);
        }
        return qtEmbeddedViewInterface;
    }

    static void remove(Context context) {
        synchronized (m_interfaceLock) {
            m_interfaces.remove(context);
        }
    }
}
