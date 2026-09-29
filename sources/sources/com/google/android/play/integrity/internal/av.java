package com.google.android.play.integrity.internal;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class av implements az {
    private static final Object a = new Object();
    private volatile az b;
    private volatile Object c = a;

    private av(az azVar) {
        this.b = azVar;
    }

    public static az b(az azVar) {
        return azVar instanceof av ? azVar : new av(azVar);
    }

    private final synchronized Object c() {
        Object obj = this.c;
        Object obj2 = a;
        if (obj != obj2) {
            return obj;
        }
        Object objA = this.b.a();
        Object obj3 = this.c;
        if (obj3 != obj2 && obj3 != objA) {
            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + objA + ". This is likely due to a circular dependency.");
        }
        this.c = objA;
        this.b = null;
        return objA;
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final Object a() {
        Object obj = this.c;
        return obj == a ? c() : obj;
    }
}
