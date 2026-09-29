package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class n extends StandardIntegrityManager.StandardIntegrityDialogRequest {
    private final int a;
    private final Activity b;
    private final StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse c;

    /* synthetic */ n(int i, Activity activity, StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse, m mVar) {
        this.a = i;
        this.b = activity;
        this.c = standardIntegrityResponse;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest
    public final Activity activity() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StandardIntegrityManager.StandardIntegrityDialogRequest) {
            StandardIntegrityManager.StandardIntegrityDialogRequest standardIntegrityDialogRequest = (StandardIntegrityManager.StandardIntegrityDialogRequest) obj;
            if (this.a == standardIntegrityDialogRequest.typeCode() && this.b.equals(standardIntegrityDialogRequest.activity()) && this.c.equals(standardIntegrityDialogRequest.standardIntegrityResponse())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest
    public final StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse() {
        return this.c;
    }

    public final String toString() {
        StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse = this.c;
        return "StandardIntegrityDialogRequest{typeCode=" + this.a + ", activity=" + this.b.toString() + ", standardIntegrityResponse=" + standardIntegrityResponse.toString() + "}";
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest
    public final int typeCode() {
        return this.a;
    }
}
