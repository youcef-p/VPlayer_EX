package com.google.android.play.core.integrity;

import android.app.Activity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class IntegrityDialogRequest {

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class Builder {
        public abstract IntegrityDialogRequest build();

        public abstract Builder setActivity(Activity activity);

        public abstract Builder setIntegrityResponse(IntegrityResponse integrityResponse);

        public abstract Builder setTypeCode(int i);
    }

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class IntegrityResponse {

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static final class ExceptionDetails extends IntegrityResponse {
            private final IntegrityServiceException a;

            public ExceptionDetails(IntegrityServiceException integrityServiceException) {
                super(null);
                integrityServiceException.getClass();
                this.a = integrityServiceException;
            }

            public final IntegrityServiceException a() {
                return this.a;
            }

            @Override // com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse
            final void b(boolean z) {
                this.a.a(true);
            }

            @Override // com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse
            final boolean c(int i) {
                if (i == 4 || i == 5) {
                    return this.a.b();
                }
                return false;
            }
        }

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static final class TokenResponse extends IntegrityResponse {
            private final IntegrityTokenResponse a;

            public TokenResponse(IntegrityTokenResponse integrityTokenResponse) {
                super(null);
                integrityTokenResponse.getClass();
                this.a = integrityTokenResponse;
            }

            public final IntegrityTokenResponse a() {
                return this.a;
            }

            @Override // com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse
            final void b(boolean z) {
                IntegrityTokenResponse integrityTokenResponse = this.a;
                if (integrityTokenResponse instanceof av) {
                    ((av) integrityTokenResponse).b(true);
                }
            }

            @Override // com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse
            final boolean c(int i) {
                IntegrityTokenResponse integrityTokenResponse = this.a;
                if (integrityTokenResponse instanceof av) {
                    return ((av) integrityTokenResponse).c();
                }
                return false;
            }
        }

        private IntegrityResponse() {
            throw null;
        }

        /* synthetic */ IntegrityResponse(af afVar) {
        }

        abstract void b(boolean z);

        abstract boolean c(int i);
    }

    public static Builder builder() {
        return new c();
    }

    public abstract Activity activity();

    public abstract IntegrityResponse integrityResponse();

    public abstract int typeCode();
}
