package com.google.android.play.core.integrity;

import android.app.Activity;
import com.google.android.gms.tasks.Task;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public interface StandardIntegrityManager {

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class PrepareIntegrityTokenRequest {

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static abstract class Builder {
            public abstract PrepareIntegrityTokenRequest build();

            public abstract Builder setCloudProjectNumber(long j);

            public abstract Builder setWebViewRequestMode(int i);
        }

        public static Builder builder() {
            i iVar = new i();
            iVar.setWebViewRequestMode(0);
            return iVar;
        }

        public abstract int a();

        public abstract long b();

        abstract String c();
    }

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class StandardIntegrityDialogRequest {

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static abstract class Builder {
            public abstract StandardIntegrityDialogRequest build();

            public abstract Builder setActivity(Activity activity);

            public abstract Builder setStandardIntegrityResponse(StandardIntegrityResponse standardIntegrityResponse);

            public abstract Builder setTypeCode(int i);
        }

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static abstract class StandardIntegrityResponse {

            /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
            public static final class ExceptionDetails extends StandardIntegrityResponse {
                private final StandardIntegrityException a;

                public ExceptionDetails(StandardIntegrityException standardIntegrityException) {
                    super(null);
                    standardIntegrityException.getClass();
                    this.a = standardIntegrityException;
                }

                @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse
                final void a(boolean z) {
                    this.a.a(true);
                }

                @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse
                final boolean b(int i) {
                    if (i == 4 || i == 5) {
                        return this.a.b();
                    }
                    return false;
                }

                public StandardIntegrityException getException() {
                    return this.a;
                }
            }

            /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
            public static final class TokenResponse extends StandardIntegrityResponse {
                private final StandardIntegrityToken a;

                public TokenResponse(StandardIntegrityToken standardIntegrityToken) {
                    super(null);
                    standardIntegrityToken.getClass();
                    this.a = standardIntegrityToken;
                }

                @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse
                final void a(boolean z) {
                    StandardIntegrityToken standardIntegrityToken = this.a;
                    if (standardIntegrityToken instanceof bw) {
                        ((bw) standardIntegrityToken).b(true);
                    }
                }

                @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse
                final boolean b(int i) {
                    StandardIntegrityToken standardIntegrityToken = this.a;
                    if (standardIntegrityToken instanceof bw) {
                        return ((bw) standardIntegrityToken).c();
                    }
                    return false;
                }

                public StandardIntegrityToken getToken() {
                    return this.a;
                }
            }

            private StandardIntegrityResponse() {
                throw null;
            }

            /* synthetic */ StandardIntegrityResponse(bc bcVar) {
            }

            abstract void a(boolean z);

            abstract boolean b(int i);
        }

        public static Builder builder() {
            return new l();
        }

        public abstract Activity activity();

        public abstract StandardIntegrityResponse standardIntegrityResponse();

        public abstract int typeCode();
    }

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class StandardIntegrityToken {
        @Deprecated
        public abstract Task<Integer> showDialog(Activity activity, int i);

        public abstract String token();
    }

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public interface StandardIntegrityTokenProvider {
        Task<StandardIntegrityToken> request(StandardIntegrityTokenRequest standardIntegrityTokenRequest);
    }

    /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
    public static abstract class StandardIntegrityTokenRequest {

        /* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
        public static abstract class Builder {
            public abstract StandardIntegrityTokenRequest build();

            public abstract Builder setRequestHash(String str);

            public abstract Builder setVerdictOptOut(Set<Integer> set);
        }

        public static Builder builder() {
            o oVar = new o();
            oVar.setVerdictOptOut(com.google.android.play.integrity.internal.aq.h());
            return oVar;
        }

        public abstract String requestHash();

        public abstract Set<Integer> verdictOptOut();
    }

    Task<StandardIntegrityTokenProvider> prepareIntegrityToken(PrepareIntegrityTokenRequest prepareIntegrityTokenRequest);

    Task<Integer> showDialog(StandardIntegrityDialogRequest standardIntegrityDialogRequest);
}
