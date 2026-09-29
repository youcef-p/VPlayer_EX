package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class aq extends com.google.android.play.integrity.internal.o {
    final /* synthetic */ ar a;
    private final com.google.android.play.integrity.internal.s b;
    private final TaskCompletionSource c;

    aq(ar arVar, TaskCompletionSource taskCompletionSource) {
        Objects.requireNonNull(arVar);
        this.a = arVar;
        this.b = new com.google.android.play.integrity.internal.s("OnRequestIntegrityTokenCallback");
        this.c = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.p
    public final void b(Bundle bundle) {
        ar arVar = this.a;
        com.google.android.play.integrity.internal.ae aeVar = arVar.a;
        TaskCompletionSource taskCompletionSource = this.c;
        aeVar.v(taskCompletionSource);
        this.b.d("onRequestIntegrityToken", new Object[0]);
        ApiException apiExceptionA = arVar.f.a(bundle);
        if (apiExceptionA != null) {
            taskCompletionSource.trySetException(apiExceptionA);
            return;
        }
        String string = bundle.getString("token");
        if (string == null) {
            taskCompletionSource.trySetException(new IntegrityServiceException(-100, false, null));
            return;
        }
        long j = bundle.getLong("request.token.sid");
        ap apVar = new ap(this, arVar.c, j);
        a aVar = new a();
        aVar.c(string);
        aVar.a(apVar);
        aVar.b(j);
        taskCompletionSource.trySetResult(aVar.d());
    }
}
