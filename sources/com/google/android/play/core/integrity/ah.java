package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ah {
    private static z a;

    static synchronized z a(Context context) {
        if (a == null) {
            y yVar = new y(null);
            yVar.a(com.google.android.play.integrity.internal.ag.a(context));
            a = yVar.b();
        }
        return a;
    }
}
