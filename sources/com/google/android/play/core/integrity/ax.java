package com.google.android.play.core.integrity;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.common.PlayCoreDialogWrapperActivity;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ax extends com.google.android.play.integrity.internal.q {
    final TaskCompletionSource a;
    final com.google.android.play.integrity.internal.ae b;
    private final com.google.android.play.integrity.internal.s c = new com.google.android.play.integrity.internal.s("RequestDialogCallbackImpl");
    private final String d;
    private final t e;
    private final Activity f;

    ax(Context context, t tVar, Activity activity, TaskCompletionSource taskCompletionSource, com.google.android.play.integrity.internal.ae aeVar) {
        this.d = context.getPackageName();
        this.e = tVar;
        this.a = taskCompletionSource;
        this.f = activity;
        this.b = aeVar;
    }

    @Override // com.google.android.play.integrity.internal.r
    public final void b(Bundle bundle) {
        com.google.android.play.integrity.internal.ae aeVar = this.b;
        TaskCompletionSource taskCompletionSource = this.a;
        aeVar.v(taskCompletionSource);
        String str = this.d;
        com.google.android.play.integrity.internal.s sVar = this.c;
        sVar.d("onRequestDialog(%s)", str);
        ApiException apiExceptionA = this.e.a(bundle);
        if (apiExceptionA != null) {
            taskCompletionSource.trySetException(apiExceptionA);
            return;
        }
        PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("dialog.intent");
        if (pendingIntent == null) {
            sVar.b("onRequestDialog(%s): got null dialog intent", str);
            taskCompletionSource.trySetResult(0);
            return;
        }
        Activity activity = this.f;
        Intent intent = new Intent(activity, (Class<?>) PlayCoreDialogWrapperActivity.class);
        intent.putExtra("confirmation_intent", pendingIntent);
        intent.setFlags(536870912);
        intent.putExtra("result_receiver", new aw(this, aeVar.c()));
        sVar.a("Starting dialog intent...", new Object[0]);
        activity.startActivityForResult(intent, 0);
    }
}
