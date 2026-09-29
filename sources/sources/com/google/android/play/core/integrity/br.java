package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class br extends com.google.android.play.integrity.internal.t {
    final /* synthetic */ bs g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    br(bs bsVar, TaskCompletionSource taskCompletionSource) {
        super(taskCompletionSource);
        Objects.requireNonNull(bsVar);
        this.g = bsVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    public final void a(Exception exc) {
        if (!(exc instanceof com.google.android.play.integrity.internal.af)) {
            super.a(exc);
        } else if (bs.m(this.g)) {
            super.a(new StandardIntegrityException(-2, false, exc));
        } else {
            super.a(new StandardIntegrityException(-9, false, exc));
        }
    }
}
