package com.google.android.play.integrity.internal;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ax implements aw {
    private final Object a;

    private ax(Object obj) {
        this.a = obj;
    }

    public static aw b(Object obj) {
        if (obj != null) {
            return new ax(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final Object a() {
        return this.a;
    }
}
