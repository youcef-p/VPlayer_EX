package com.google.android.play.core.integrity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class aj implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;

    private aj(com.google.android.play.integrity.internal.az azVar) {
        this.a = azVar;
    }

    public static aj b(com.google.android.play.integrity.internal.az azVar) {
        return new aj(azVar);
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final /* bridge */ /* synthetic */ Object a() {
        return new ai((ar) this.a.a());
    }
}
