package com.google.android.play.core.integrity;

import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class r implements t {
    r() {
    }

    @Override // com.google.android.play.core.integrity.t
    public final ApiException a(Bundle bundle) {
        int i = bundle.getInt("error");
        if (i == 0) {
            return null;
        }
        return new IntegrityServiceException(i, bundle.getBoolean("is.error.remediable"), null);
    }
}
