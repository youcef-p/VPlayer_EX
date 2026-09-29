package com.google.android.gms.internal.base;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
final class zaq implements ThreadFactory {
    private final ThreadFactory zaa = Executors.defaultThreadFactory();

    private zaq() {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.zaa.newThread(runnable);
        if (threadNewThread == null) {
            throw new NullPointerException("Default ThreadFactory returned null thread");
        }
        String name = threadNewThread.getName();
        String.valueOf(name);
        threadNewThread.setName("punch".concat(String.valueOf(name)));
        return threadNewThread;
    }

    /* synthetic */ zaq(byte[] bArr) {
    }
}
