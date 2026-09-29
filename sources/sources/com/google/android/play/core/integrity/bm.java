package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bm extends br {
    final /* synthetic */ Bundle a;
    final /* synthetic */ Activity b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ int d;
    final /* synthetic */ bs e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bm(bs bsVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i) {
        super(bsVar, taskCompletionSource);
        this.a = bundle;
        this.b = activity;
        this.c = taskCompletionSource2;
        this.d = i;
        Objects.requireNonNull(bsVar);
        this.e = bsVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        bs bsVar = this.e;
        if (bs.m(bsVar)) {
            super.a(new StandardIntegrityException(-2, false, null));
            return;
        }
        try {
            com.google.android.play.integrity.internal.ae aeVar = bsVar.a;
            ((com.google.android.play.integrity.internal.i) aeVar.e()).c(this.a, bsVar.e.a(this.b, this.c, aeVar));
        } catch (RemoteException e) {
            this.e.b.c(e, "requestAndShowDialog(%s)", Integer.valueOf(this.d));
            this.c.trySetException(new StandardIntegrityException(-100, false, e));
        }
    }
}
