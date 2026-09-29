package com.google.android.play.core.integrity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class bz implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;

    private bz(com.google.android.play.integrity.internal.az azVar) {
        this.a = azVar;
    }

    public static bz b(com.google.android.play.integrity.internal.az azVar) {
        return new bz(azVar);
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final /* bridge */ /* synthetic */ Object a() {
        return new by((bs) this.a.a());
    }
}
