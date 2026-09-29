package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class an extends com.google.android.play.integrity.internal.t {
    final /* synthetic */ byte[] a;
    final /* synthetic */ Long b;
    final /* synthetic */ TaskCompletionSource c;
    final /* synthetic */ IntegrityTokenRequest d;
    final /* synthetic */ ar e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    an(ar arVar, TaskCompletionSource taskCompletionSource, byte[] bArr, Long l, TaskCompletionSource taskCompletionSource2, IntegrityTokenRequest integrityTokenRequest) {
        super(taskCompletionSource);
        this.a = bArr;
        this.b = l;
        this.c = taskCompletionSource2;
        this.d = integrityTokenRequest;
        Objects.requireNonNull(arVar);
        this.e = arVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void a(Exception exc) {
        if (exc instanceof com.google.android.play.integrity.internal.af) {
            super.a(new IntegrityServiceException(-9, false, exc));
        } else {
            super.a(exc);
        }
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        try {
            ar arVar = this.e;
            ((com.google.android.play.integrity.internal.n) arVar.a.e()).d(ar.a(arVar, this.a, this.b), new aq(arVar, this.c));
        } catch (RemoteException e) {
            this.e.b.c(e, "requestIntegrityToken(%s)", this.d);
            this.c.trySetException(new IntegrityServiceException(-100, false, e));
        }
    }
}
