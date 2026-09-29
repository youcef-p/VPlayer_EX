package com.google.android.play.core.integrity;

import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bj extends com.google.android.play.integrity.internal.t {
    final /* synthetic */ Context a;
    final /* synthetic */ bs b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bj(bs bsVar, TaskCompletionSource taskCompletionSource, Context context) {
        super(taskCompletionSource);
        this.a = context;
        Objects.requireNonNull(bsVar);
        this.b = bsVar;
    }

    @Override // com.google.android.play.integrity.internal.t
    protected final void b() {
        this.b.d.trySetResult(Integer.valueOf(com.google.android.play.integrity.internal.ai.a(this.a)));
    }
}
