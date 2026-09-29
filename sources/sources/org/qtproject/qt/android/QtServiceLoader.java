package org.qtproject.qt.android;

import android.app.Service;
import android.content.ContextWrapper;

/* JADX INFO: loaded from: classes.dex */
class QtServiceLoader extends QtLoader {
    QtServiceLoader(Service service) throws IllegalArgumentException {
        super(new ContextWrapper(service));
        extractContextMetaData(service);
    }

    static QtServiceLoader getServiceLoader(Service service) throws IllegalArgumentException {
        if (m_instance == null) {
            m_instance = new QtServiceLoader(service);
        }
        return (QtServiceLoader) m_instance;
    }
}
