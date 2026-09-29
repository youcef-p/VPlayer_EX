package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ap extends ag {
    final /* synthetic */ aq a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ap(aq aqVar, String str, long j) {
        super(str, j);
        Objects.requireNonNull(aqVar);
        this.a = aqVar;
    }

    @Override // com.google.android.play.core.integrity.ag
    final Task b(Activity activity, Bundle bundle) {
        return this.a.a.b(activity, bundle);
    }
}
