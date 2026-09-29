package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ac {
    final com.google.android.play.integrity.internal.az a;
    final com.google.android.play.integrity.internal.az b;
    final com.google.android.play.integrity.internal.az c;
    final com.google.android.play.integrity.internal.az d;
    final com.google.android.play.integrity.internal.az e;
    final com.google.android.play.integrity.internal.az f;

    ac(Context context) {
        com.google.android.play.integrity.internal.aw awVarB = com.google.android.play.integrity.internal.ax.b(context);
        this.a = awVarB;
        com.google.android.play.integrity.internal.az azVarB = com.google.android.play.integrity.internal.av.b(bg.a);
        this.b = azVarB;
        x xVar = w.a;
        az azVarC = az.c(awVarB, xVar);
        this.c = azVarC;
        com.google.android.play.integrity.internal.az azVarB2 = com.google.android.play.integrity.internal.av.b(bu.b(awVarB, azVarB, azVarC, xVar));
        this.d = azVarB2;
        com.google.android.play.integrity.internal.az azVarB3 = com.google.android.play.integrity.internal.av.b(bz.b(azVarB2));
        this.e = azVarB3;
        this.f = com.google.android.play.integrity.internal.av.b(bf.b(azVarB2, azVarB3));
    }
}
