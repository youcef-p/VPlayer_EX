package com.google.android.play.core.integrity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class bf implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;
    private final com.google.android.play.integrity.internal.az b;

    private bf(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        this.a = azVar;
        this.b = azVar2;
    }

    public static bf b(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        return new bf(azVar, azVar2);
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final /* bridge */ /* synthetic */ Object a() {
        com.google.android.play.integrity.internal.az azVar = this.b;
        return new be((bs) this.a.a(), (by) azVar.a());
    }
}
