package org.qtproject.qt.android;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
class QtThread {
    private final Thread m_qtThread;
    private final ArrayList<Runnable> m_pendingRunnables = new ArrayList<>();
    private boolean m_exit = false;

    QtThread() {
        Thread thread = new Thread(new Runnable() { // from class: org.qtproject.qt.android.QtThread.1
            @Override // java.lang.Runnable
            public void run() {
                ArrayList arrayList;
                while (!QtThread.this.m_exit) {
                    try {
                        synchronized (QtThread.this.m_qtThread) {
                            if (QtThread.this.m_pendingRunnables.isEmpty()) {
                                QtThread.this.m_qtThread.wait();
                            }
                            arrayList = new ArrayList(QtThread.this.m_pendingRunnables);
                            QtThread.this.m_pendingRunnables.clear();
                        }
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((Runnable) it.next()).run();
                        }
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        this.m_qtThread = thread;
        thread.setName("qtMainLoopThread");
        thread.start();
    }

    void post(Runnable runnable) {
        synchronized (this.m_qtThread) {
            this.m_pendingRunnables.add(runnable);
            this.m_qtThread.notify();
        }
    }

    void sleep(int i) {
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    void run(final Runnable runnable) {
        final Semaphore semaphore = new Semaphore(0);
        synchronized (this.m_qtThread) {
            this.m_pendingRunnables.add(new Runnable() { // from class: org.qtproject.qt.android.QtThread$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    QtThread.lambda$run$0(runnable, semaphore);
                }
            });
            this.m_qtThread.notify();
        }
        try {
            semaphore.acquire();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    static /* synthetic */ void lambda$run$0(Runnable runnable, Semaphore semaphore) {
        runnable.run();
        semaphore.release();
    }

    void exit() {
        this.m_exit = true;
        synchronized (this.m_qtThread) {
            this.m_qtThread.notify();
        }
        try {
            this.m_qtThread.join();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    boolean isAlive() {
        return this.m_qtThread.isAlive();
    }
}
