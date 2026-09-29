package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bk extends br {
    final /* synthetic */ int a;
    final /* synthetic */ long b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ bs d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bk(bs bsVar, TaskCompletionSource taskCompletionSource, int i, long j, TaskCompletionSource taskCompletionSource2) {
        super(bsVar, taskCompletionSource);
        this.a = i;
        this.b = j;
        this.c = taskCompletionSource2;
        Objects.requireNonNull(bsVar);
        this.d = bsVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        bs bsVar = this.d;
        if (bs.m(bsVar)) {
            super.a(new StandardIntegrityException(-2, false, null));
            return;
        }
        int i = this.a;
        if (bs.l(bsVar, i)) {
            super.a(new StandardIntegrityException(-14, false, null));
            return;
        }
        try {
            ((com.google.android.play.integrity.internal.i) bsVar.a.e()).e(bs.b(bsVar, this.b, i), new bq(bsVar, this.c));
        } catch (RemoteException e) {
            this.d.b.c(e, "warmUpIntegrityToken(%s)", Long.valueOf(this.b));
            this.c.trySetException(new StandardIntegrityException(-100, false, e));
        }
    }
}
