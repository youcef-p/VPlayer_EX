package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class k extends StandardIntegrityManager.PrepareIntegrityTokenRequest {
    private final long a;
    private final int b;

    /* synthetic */ k(long j, int i, String str, j jVar) {
        this.a = j;
        this.b = i;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    public final int a() {
        return this.b;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    public final long b() {
        return this.a;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    final String c() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) {
            StandardIntegrityManager.PrepareIntegrityTokenRequest prepareIntegrityTokenRequest = (StandardIntegrityManager.PrepareIntegrityTokenRequest) obj;
            if (this.a == prepareIntegrityTokenRequest.b() && this.b == prepareIntegrityTokenRequest.a()) {
                prepareIntegrityTokenRequest.c();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b) * 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.a + ", webViewRequestMode=" + this.b + ", sessionId=null}";
    }
}
