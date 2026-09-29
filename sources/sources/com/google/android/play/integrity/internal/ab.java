package com.google.android.play.integrity.internal;

import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ab extends t {
    final /* synthetic */ ac a;

    ab(ac acVar) {
        Objects.requireNonNull(acVar);
        this.a = acVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void b() {
        ae aeVar = this.a.a;
        ae.t(aeVar);
        aeVar.o = null;
        aeVar.h = false;
    }
}
