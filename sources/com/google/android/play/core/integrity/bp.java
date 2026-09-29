package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bp extends bn {
    final /* synthetic */ bs c;
    private final com.google.android.play.integrity.internal.s d;
    private final long e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bp(bs bsVar, TaskCompletionSource taskCompletionSource, long j) {
        super(bsVar, taskCompletionSource);
        Objects.requireNonNull(bsVar);
        this.c = bsVar;
        this.d = new com.google.android.play.integrity.internal.s("OnRequestIntegrityTokenCallback");
        this.e = j;
    }

    @Override // com.google.android.play.core.integrity.bn, com.google.android.play.integrity.internal.k
    public final void c(Bundle bundle) throws RemoteException {
        super.c(bundle);
        this.d.d("onRequestExpressIntegrityToken", new Object[0]);
        bs bsVar = this.c;
        ApiException apiExceptionA = bsVar.f.a(bundle);
        if (apiExceptionA != null) {
            this.a.trySetException(apiExceptionA);
            return;
        }
        long j = bundle.getLong("request.token.sid");
        bo boVar = new bo(this, bsVar.c, j);
        TaskCompletionSource taskCompletionSource = this.a;
        b bVar = new b();
        bVar.c(bundle.getString("token"));
        bVar.a(boVar);
        bVar.b(j);
        taskCompletionSource.trySetResult(bVar.d());
    }
}
