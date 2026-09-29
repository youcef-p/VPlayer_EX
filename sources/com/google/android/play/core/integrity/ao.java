package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ao extends com.google.android.play.integrity.internal.t {
    final /* synthetic */ Bundle a;
    final /* synthetic */ Activity b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ int d;
    final /* synthetic */ ar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ao(ar arVar, TaskCompletionSource taskCompletionSource, Bundle bundle, Activity activity, TaskCompletionSource taskCompletionSource2, int i) {
        super(taskCompletionSource);
        this.a = bundle;
        this.b = activity;
        this.c = taskCompletionSource2;
        this.d = i;
        Objects.requireNonNull(arVar);
        this.e = arVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        try {
            ar arVar = this.e;
            com.google.android.play.integrity.internal.ae aeVar = arVar.a;
            ((com.google.android.play.integrity.internal.n) aeVar.e()).c(this.a, arVar.e.a(this.b, this.c, aeVar));
        } catch (RemoteException e) {
            this.e.b.c(e, "requestAndShowDialog(%s)", Integer.valueOf(this.d));
            this.c.trySetException(new IntegrityServiceException(-100, false, e));
        }
    }
}
