package com.google.android.play.core.integrity;

import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ai implements IntegrityManager {
    private final ar a;

    ai(ar arVar) {
        this.a = arVar;
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<IntegrityTokenResponse> requestIntegrityToken(IntegrityTokenRequest integrityTokenRequest) {
        return this.a.c(integrityTokenRequest);
    }

    @Override // com.google.android.play.core.integrity.IntegrityManager
    public final Task<Integer> showDialog(IntegrityDialogRequest integrityDialogRequest) {
        return this.a.d(integrityDialogRequest);
    }
}
