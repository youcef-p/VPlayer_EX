package com.google.android.gms.internal.base;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
final class zay extends zaw {
    private final zaaa zaa;

    zay(zaaa zaaaVar, int i) {
        super(zaaaVar.size(), i);
        this.zaa = zaaaVar;
    }

    @Override // com.google.android.gms.internal.base.zaw
    final Object zaa(int i) {
        return this.zaa.get(i);
    }
}
