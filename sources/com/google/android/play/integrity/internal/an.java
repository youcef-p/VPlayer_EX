package com.google.android.play.integrity.internal;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class an extends al {
    private final ap a;

    an(ap apVar, int i) {
        super(apVar.size(), i);
        this.a = apVar;
    }

    @Override // com.google.android.play.integrity.internal.al
    protected final Object a(int i) {
        return this.a.get(i);
    }
}
