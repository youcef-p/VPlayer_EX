package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class y implements ae {
    private Context a;

    private y() {
        throw null;
    }

    /* synthetic */ y(aa aaVar) {
    }

    @Override // com.google.android.play.core.integrity.ae
    public final z b() {
        com.google.android.play.integrity.internal.ay.a(this.a, Context.class);
        return new z(this.a);
    }

    public final y a(Context context) {
        context.getClass();
        this.a = context;
        return this;
    }
}
