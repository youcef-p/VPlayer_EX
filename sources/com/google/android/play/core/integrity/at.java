package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class at implements com.google.android.play.integrity.internal.aw {
    private final com.google.android.play.integrity.internal.az a;
    private final com.google.android.play.integrity.internal.az b;
    private final com.google.android.play.integrity.internal.az c;

    private at(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2, com.google.android.play.integrity.internal.az azVar3, com.google.android.play.integrity.internal.az azVar4) {
        this.a = azVar;
        this.b = azVar2;
        this.c = azVar3;
    }

    public static at b(com.google.android.play.integrity.internal.az azVar, com.google.android.play.integrity.internal.az azVar2, com.google.android.play.integrity.internal.az azVar3, com.google.android.play.integrity.internal.az azVar4) {
        return new at(azVar, azVar2, azVar3, azVar4);
    }

    @Override // com.google.android.play.integrity.internal.bb, com.google.android.play.integrity.internal.ba
    public final /* bridge */ /* synthetic */ Object a() {
        return new ar((Context) this.a.a(), (com.google.android.play.integrity.internal.s) this.b.a(), ((az) this.c).a(), new r());
    }
}
