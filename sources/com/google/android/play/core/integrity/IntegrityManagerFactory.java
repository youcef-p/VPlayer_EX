package com.google.android.play.core.integrity;

import android.content.Context;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public class IntegrityManagerFactory {
    private IntegrityManagerFactory() {
    }

    public static IntegrityManager create(Context context) {
        return (IntegrityManager) ah.a(context).e.a();
    }

    public static StandardIntegrityManager createStandard(Context context) {
        return (StandardIntegrityManager) bb.a(context, false).f.a();
    }
}
