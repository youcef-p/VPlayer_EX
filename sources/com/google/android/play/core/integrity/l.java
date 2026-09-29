package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class l extends StandardIntegrityManager.StandardIntegrityDialogRequest.Builder {
    private int a;
    private Activity b;
    private StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse c;
    private byte d;

    l() {
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityDialogRequest build() {
        Activity activity;
        StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse;
        if (this.d == 1 && (activity = this.b) != null && (standardIntegrityResponse = this.c) != null) {
            return new n(this.a, activity, standardIntegrityResponse, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.d == 0) {
            sb.append(" typeCode");
        }
        if (this.b == null) {
            sb.append(" activity");
        }
        if (this.c == null) {
            sb.append(" standardIntegrityResponse");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityDialogRequest.Builder setActivity(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Null activity");
        }
        this.b = activity;
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityDialogRequest.Builder setStandardIntegrityResponse(StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse) {
        if (standardIntegrityResponse == null) {
            throw new NullPointerException("Null standardIntegrityResponse");
        }
        this.c = standardIntegrityResponse;
        return this;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.Builder
    public final StandardIntegrityManager.StandardIntegrityDialogRequest.Builder setTypeCode(int i) {
        this.a = i;
        this.d = (byte) 1;
        return this;
    }
}
