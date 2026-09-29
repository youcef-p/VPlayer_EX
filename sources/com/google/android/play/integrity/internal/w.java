package com.google.android.play.integrity.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class w extends t {
    final /* synthetic */ TaskCompletionSource a;
    final /* synthetic */ t b;
    final /* synthetic */ ae c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    w(ae aeVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, t tVar) {
        super(taskCompletionSource);
        this.a = taskCompletionSource2;
        this.b = tVar;
        Objects.requireNonNull(aeVar);
        this.c = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        ae aeVar = this.c;
        synchronized (aeVar.g) {
            ae.p(aeVar, this.a);
            if (aeVar.m.getAndIncrement() > 0) {
                aeVar.c.d("Already connected to the service.", new Object[0]);
            }
            ae.r(aeVar, this.b);
        }
    }
}
