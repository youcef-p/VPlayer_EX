package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bq extends bn {
    final /* synthetic */ bs c;
    private final com.google.android.play.integrity.internal.s d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bq(bs bsVar, TaskCompletionSource taskCompletionSource) {
        super(bsVar, taskCompletionSource);
        Objects.requireNonNull(bsVar);
        this.c = bsVar;
        this.d = new com.google.android.play.integrity.internal.s("OnWarmUpIntegrityTokenCallback");
    }

    @Override // com.google.android.play.core.integrity.bn, com.google.android.play.integrity.internal.k
    public final void e(Bundle bundle) throws RemoteException {
        super.e(bundle);
        this.d.d("onWarmUpExpressIntegrityToken", new Object[0]);
        ApiException apiExceptionA = this.c.f.a(bundle);
        if (apiExceptionA != null) {
            this.a.trySetException(apiExceptionA);
        } else {
            this.a.trySetResult(Long.valueOf(bundle.getLong("warm.up.sid")));
        }
    }
}
