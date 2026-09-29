package com.google.android.gms.common.internal;

import android.content.Context;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zas implements Executor {
    private static volatile zas zaa;
    private static Context zab;

    private zas() {
    }

    public static zas zaa(Context context) {
        zas zasVar;
        zas zasVar2 = zaa;
        if (zasVar2 != null) {
            return zasVar2;
        }
        synchronized (zas.class) {
            zasVar = zaa;
            if (zasVar == null) {
                zab = (Context) Preconditions.checkNotNull(context.getApplicationContext());
                zasVar = new zas();
                zaa = zasVar;
            }
        }
        return zasVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        zar.zaa.post(runnable);
    }
}
