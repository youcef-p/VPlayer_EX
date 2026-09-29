package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bo extends ag {
    final /* synthetic */ bp a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    bo(bp bpVar, String str, long j) {
        super(str, j);
        Objects.requireNonNull(bpVar);
        this.a = bpVar;
    }

    @Override // com.google.android.play.core.integrity.ag
    final Task b(Activity activity, Bundle bundle) {
        bp bpVar = this.a;
        bundle.putLong("cloud.prj", bpVar.e);
        return bpVar.c.c(activity, bundle);
    }
}
