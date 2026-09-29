package com.google.android.play.integrity.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class aa extends t {
    final /* synthetic */ IBinder a;
    final /* synthetic */ ac b;

    aa(ac acVar, IBinder iBinder) {
        this.a = iBinder;
        Objects.requireNonNull(acVar);
        this.b = acVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        ae aeVar = this.b.a;
        aeVar.o = (IInterface) aeVar.j.a(this.a);
        ae.s(aeVar);
        aeVar.h = false;
        Iterator it = aeVar.e.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        aeVar.e.clear();
    }
}
