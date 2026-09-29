package org.qtproject.qt.android;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class BackgroundActionsTracker {
    private int m_maxActions = -1;
    private final ConcurrentLinkedQueue<Runnable> m_backgroundActionsQueue = new ConcurrentLinkedQueue<>();
    private final AtomicInteger m_actionsCount = new AtomicInteger(0);

    BackgroundActionsTracker() {
    }

    public void setMaxAllowedActions(int i) {
        this.m_maxActions = i;
    }

    public void enqueue(Runnable runnable) {
        int i = this.m_maxActions;
        if (i == 0 || runnable == null) {
            return;
        }
        if (i > 0 && this.m_actionsCount.get() >= this.m_maxActions) {
            this.m_backgroundActionsQueue.poll();
            this.m_actionsCount.decrementAndGet();
        }
        this.m_backgroundActionsQueue.offer(runnable);
        this.m_actionsCount.incrementAndGet();
    }

    public void processActions() {
        while (true) {
            Runnable runnablePoll = this.m_backgroundActionsQueue.poll();
            if (runnablePoll == null) {
                return;
            }
            this.m_actionsCount.decrementAndGet();
            QtNative.runAction(runnablePoll);
        }
    }

    public int getActionsCount() {
        return this.m_actionsCount.get();
    }
}
