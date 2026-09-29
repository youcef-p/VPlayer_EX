package com.google.android.play.core.integrity;

import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bl extends br {
    final /* synthetic */ int a;
    final /* synthetic */ StandardIntegrityManager.StandardIntegrityTokenRequest b;
    final /* synthetic */ long c;
    final /* synthetic */ long d;
    final /* synthetic */ TaskCompletionSource e;
    final /* synthetic */ bs f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bl(bs bsVar, TaskCompletionSource taskCompletionSource, int i, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, TaskCompletionSource taskCompletionSource2) {
        super(bsVar, taskCompletionSource);
        this.a = i;
        this.b = standardIntegrityTokenRequest;
        this.c = j;
        this.d = j2;
        this.e = taskCompletionSource2;
        Objects.requireNonNull(bsVar);
        this.f = bsVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        bs bsVar = this.f;
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
            com.google.android.play.integrity.internal.i iVar = (com.google.android.play.integrity.internal.i) bsVar.a.e();
            StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = this.b;
            long j = this.c;
            iVar.d(bs.a(bsVar, standardIntegrityTokenRequest, j, this.d, i), new bp(bsVar, this.e, j));
        } catch (RemoteException e) {
            bs bsVar2 = this.f;
            StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest2 = this.b;
            bsVar2.b.c(e, "requestExpressIntegrityToken(%s, %s, %s)", standardIntegrityTokenRequest2.requestHash(), standardIntegrityTokenRequest2.verdictOptOut(), Long.valueOf(this.c));
            this.e.trySetException(new StandardIntegrityException(-100, false, e));
        }
    }
}
