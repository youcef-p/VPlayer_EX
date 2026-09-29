package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.play.core.integrity.IntegrityDialogRequest;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class e extends IntegrityDialogRequest {
    private final int a;
    private final Activity b;
    private final IntegrityDialogRequest.IntegrityResponse c;

    /* synthetic */ e(int i, Activity activity, IntegrityDialogRequest.IntegrityResponse integrityResponse, d dVar) {
        this.a = i;
        this.b = activity;
        this.c = integrityResponse;
    }

    @Override // com.google.android.play.core.integrity.IntegrityDialogRequest
    public final Activity activity() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityDialogRequest) {
            IntegrityDialogRequest integrityDialogRequest = (IntegrityDialogRequest) obj;
            if (this.a == integrityDialogRequest.typeCode() && this.b.equals(integrityDialogRequest.activity()) && this.c.equals(integrityDialogRequest.integrityResponse())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.a ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    @Override // com.google.android.play.core.integrity.IntegrityDialogRequest
    public final IntegrityDialogRequest.IntegrityResponse integrityResponse() {
        return this.c;
    }

    public final String toString() {
        IntegrityDialogRequest.IntegrityResponse integrityResponse = this.c;
        return "IntegrityDialogRequest{typeCode=" + this.a + ", activity=" + this.b.toString() + ", integrityResponse=" + integrityResponse.toString() + "}";
    }

    @Override // com.google.android.play.core.integrity.IntegrityDialogRequest
    public final int typeCode() {
        return this.a;
    }
}
