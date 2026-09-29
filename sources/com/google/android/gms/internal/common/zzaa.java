package com.google.android.gms.internal.common;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzaa implements zzz {
    private final zzad zza = new zzad();
    private volatile zzz zzb;

    zzaa(zzz zzzVar) {
        this.zzb = zzzVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == null) {
            obj = "<supplier that returned null>";
        }
        String string = obj.toString();
        StringBuilder sb = new StringBuilder(string.length() + 19);
        sb.append("Suppliers.memoize(");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }
}
