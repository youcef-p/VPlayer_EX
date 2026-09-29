package com.google.android.play.core.integrity;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class ag {
    private final String b;
    private final long c;
    private boolean e;
    private final com.google.android.play.integrity.internal.s a = new com.google.android.play.integrity.internal.s("IntegrityDialogWrapper");
    private final Object d = new Object();

    ag(String str, long j) {
        this.b = str;
        this.c = j;
    }

    public final Task a(Activity activity, int i) {
        synchronized (this.d) {
            if (this.e) {
                return Tasks.forResult(0);
            }
            this.e = true;
            this.a.a("checkAndShowDialog(%s)", Integer.valueOf(i));
            Bundle bundle = new Bundle();
            bundle.putInt("dialog.intent.type", i);
            bundle.putString("package.name", this.b);
            bundle.putInt("playcore.integrity.version.major", 1);
            bundle.putInt("playcore.integrity.version.minor", 6);
            bundle.putInt("playcore.integrity.version.patch", 0);
            bundle.putLong("request.token.sid", this.c);
            return b(activity, bundle);
        }
    }

    abstract Task b(Activity activity, Bundle bundle);
}
