package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ab implements ba {
    private Context a;

    private ab() {
        throw null;
    }

    /* synthetic */ ab(ad adVar) {
    }

    @Override // com.google.android.play.core.integrity.ba
    public final ac b() {
        com.google.android.play.integrity.internal.ay.a(this.a, Context.class);
        return new ac(this.a);
    }

    public final ab a(Context context) {
        context.getClass();
        this.a = context;
        return this;
    }
}
