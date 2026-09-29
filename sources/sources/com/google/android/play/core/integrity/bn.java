package com.google.android.play.core.integrity;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
class bn extends com.google.android.play.integrity.internal.j {
    final TaskCompletionSource a;
    final /* synthetic */ bs b;

    bn(bs bsVar, TaskCompletionSource taskCompletionSource) {
        Objects.requireNonNull(bsVar);
        this.b = bsVar;
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.play.integrity.internal.k
    public final void b(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public void c(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public final void d(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }

    @Override // com.google.android.play.integrity.internal.k
    public void e(Bundle bundle) throws RemoteException {
        this.b.a.v(this.a);
    }
}
