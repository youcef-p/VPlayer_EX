package com.google.android.play.core.integrity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class az implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;
    private final com.google.android.play.integrity.internal.az b;

    private az(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        this.a = azVar;
        this.b = azVar2;
    }

    public static az c(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2) {
        return new az(azVar, azVar2);
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ay a() {
        return new ay(this.a, this.b);
    }
}
