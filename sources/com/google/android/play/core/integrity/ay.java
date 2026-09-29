package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ay {
    private final com.google.android.play.integrity.internal.bb a;
    private final com.google.android.play.integrity.internal.bb b;

    ay(com.google.android.play.integrity.internal.bb bbVar, com.google.android.play.integrity.internal.bb bbVar2) {
        this.a = bbVar;
        this.b = bbVar2;
    }

    final ax a(Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.ae aeVar) {
        Context context = (Context) this.a.a();
        context.getClass();
        t tVar = (t) this.b.a();
        tVar.getClass();
        activity.getClass();
        aeVar.getClass();
        return new ax(context, tVar, activity, taskCompletionSource, aeVar);
    }
}
