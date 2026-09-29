package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class z {
    final com.google.android.play.integrity.internal.az a;
    final com.google.android.play.integrity.internal.az b;
    final com.google.android.play.integrity.internal.az c;
    final com.google.android.play.integrity.internal.az d;
    final com.google.android.play.integrity.internal.az e;

    z(Context context) {
        com.google.android.play.integrity.internal.aw awVarB = com.google.android.play.integrity.internal.ax.b(context);
        this.a = awVarB;
        com.google.android.play.integrity.internal.az azVarB = com.google.android.play.integrity.internal.av.b(ak.a);
        this.b = azVarB;
        v vVar = u.a;
        az azVarC = az.c(awVarB, vVar);
        this.c = azVarC;
        com.google.android.play.integrity.internal.az azVarB2 = com.google.android.play.integrity.internal.av.b(at.b(awVarB, azVarB, azVarC, vVar));
        this.d = azVarB2;
        this.e = com.google.android.play.integrity.internal.av.b(aj.b(azVarB2));
    }
}
