package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bx implements StandardIntegrityManager.StandardIntegrityTokenProvider {
    final /* synthetic */ long a;
    final /* synthetic */ long b;
    final /* synthetic */ int c;
    final /* synthetic */ by d;

    bx(by byVar, long j, long j2, int i) {
        this.a = j;
        this.b = j2;
        this.c = i;
        Objects.requireNonNull(byVar);
        this.d = byVar;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider
    public final Task<StandardIntegrityManager.StandardIntegrityToken> request(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest) {
        return this.d.a.d(standardIntegrityTokenRequest, this.a, this.b, this.c);
    }
}
