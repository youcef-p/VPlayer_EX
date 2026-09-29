package com.google.android.play.integrity.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class x extends t {
    final /* synthetic */ ae a;

    x(ae aeVar) {
        Objects.requireNonNull(aeVar);
        this.a = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        ae aeVar = this.a;
        synchronized (aeVar.g) {
            if (aeVar.m.get() > 0 && aeVar.m.decrementAndGet() > 0) {
                aeVar.c.d("Leaving the connection open for other ongoing calls.", new Object[0]);
                return;
            }
            if (aeVar.o != null) {
                aeVar.c.d("Unbind from service.", new Object[0]);
                aeVar.b.unbindService(aeVar.n);
                aeVar.h = false;
                aeVar.o = null;
                aeVar.n = null;
            }
            aeVar.x();
        }
    }
}
