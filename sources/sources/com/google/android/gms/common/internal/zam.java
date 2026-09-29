package com.google.android.gms.common.internal;

import android.content.Intent;
import androidx.fragment.app.Fragment;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
final class zam extends zao {
    final /* synthetic */ Intent zaa;
    final /* synthetic */ Fragment zab;
    final /* synthetic */ int zac;

    zam(Intent intent, Fragment fragment, int i) {
        this.zaa = intent;
        this.zab = fragment;
        this.zac = i;
    }

    @Override // com.google.android.gms.common.internal.zao
    public final void zaa() {
        Intent intent = this.zaa;
        if (intent != null) {
            this.zab.startActivityForResult(intent, this.zac);
        }
    }
}
