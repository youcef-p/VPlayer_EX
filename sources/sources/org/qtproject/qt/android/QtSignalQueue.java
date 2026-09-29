package org.qtproject.qt.android;

import java.util.LinkedList;
import java.util.Queue;
import java.util.function.Predicate;
import org.qtproject.qt.android.QtSignalQueue;

/* JADX INFO: loaded from: classes.dex */
class QtSignalQueue {
    private Queue<SignalListenerInfo> m_queuedSignalListeners = new LinkedList();

    QtSignalQueue() {
    }

    class SignalListenerInfo {
        Class<?>[] m_argTypes;
        int m_id;
        Object m_listener;
        String m_signalName;

        public SignalListenerInfo(String str, Class<?>[] clsArr, Object obj, int i) {
            this.m_signalName = str;
            this.m_argTypes = clsArr;
            this.m_listener = obj;
            this.m_id = i;
        }

        public String signalName() {
            return this.m_signalName;
        }

        public Class<?>[] argTypes() {
            return this.m_argTypes;
        }

        public Object listener() {
            return this.m_listener;
        }

        public int id() {
            return this.m_id;
        }
    }

    void connectQueuedSignalListeners(QtQuickView qtQuickView) {
        if (this.m_queuedSignalListeners.isEmpty()) {
            return;
        }
        for (SignalListenerInfo signalListenerInfo : this.m_queuedSignalListeners) {
            qtQuickView.connectSignalListener(signalListenerInfo.signalName(), signalListenerInfo.argTypes(), signalListenerInfo.listener(), signalListenerInfo.id());
        }
        this.m_queuedSignalListeners.clear();
    }

    void add(SignalListenerInfo signalListenerInfo) {
        this.m_queuedSignalListeners.add(signalListenerInfo);
    }

    void add(String str, Class<?>[] clsArr, Object obj, int i) {
        add(new SignalListenerInfo(str, clsArr, obj, i));
    }

    static /* synthetic */ boolean lambda$remove$0(int i, SignalListenerInfo signalListenerInfo) {
        return signalListenerInfo.id() == i;
    }

    boolean remove(final int i) {
        return this.m_queuedSignalListeners.removeIf(new Predicate() { // from class: org.qtproject.qt.android.QtSignalQueue$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return QtSignalQueue.lambda$remove$0(i, (QtSignalQueue.SignalListenerInfo) obj);
            }
        });
    }
}
