package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.StandardIntegrityManager;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class bs {
    final com.google.android.play.integrity.internal.ae a;
    private final com.google.android.play.integrity.internal.s b;
    private final String c;
    private final TaskCompletionSource d;
    private final ay e;
    private final t f;

    bs(Context context, com.google.android.play.integrity.internal.s sVar, ay ayVar, t tVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.d = taskCompletionSource;
        this.c = context.getPackageName();
        this.b = sVar;
        this.e = ayVar;
        this.f = tVar;
        com.google.android.play.integrity.internal.ae aeVar = new com.google.android.play.integrity.internal.ae(context, sVar, "ExpressIntegrityService", bt.a, new com.google.android.play.integrity.internal.z() { // from class: com.google.android.play.core.integrity.bi
            @Override // com.google.android.play.integrity.internal.z
            public final Object a(IBinder iBinder) {
                return com.google.android.play.integrity.internal.h.b(iBinder);
            }
        }, null);
        this.a = aeVar;
        aeVar.c().post(new bj(this, taskCompletionSource, context));
    }

    static /* bridge */ /* synthetic */ Bundle a(bs bsVar, StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bsVar.c);
        bundle.putLong("cloud.prj", j);
        bundle.putString("nonce", standardIntegrityTokenRequest.requestHash());
        bundle.putLong("warm.up.sid", j2);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 6);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", i);
        bundle.putIntegerArrayList("request.verdict.opt.out", new ArrayList<>(standardIntegrityTokenRequest.verdictOptOut()));
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.d.b(5, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.d.a(arrayList)));
        return bundle;
    }

    static /* bridge */ /* synthetic */ Bundle b(bs bsVar, long j, int i) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", bsVar.c);
        bundle.putLong("cloud.prj", j);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 6);
        bundle.putInt("playcore.integrity.version.patch", 0);
        bundle.putInt("webview.request.mode", i);
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.d.b(4, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.d.a(arrayList)));
        return bundle;
    }

    static /* bridge */ /* synthetic */ boolean l(bs bsVar, int i) {
        TaskCompletionSource taskCompletionSource = bsVar.d;
        if (taskCompletionSource.getTask().isSuccessful()) {
            return ((Integer) taskCompletionSource.getTask().getResult()).intValue() < (i == 0 ? 83420000 : 83830000);
        }
        return false;
    }

    static /* bridge */ /* synthetic */ boolean m(bs bsVar) {
        TaskCompletionSource taskCompletionSource = bsVar.d;
        return taskCompletionSource.getTask().isSuccessful() && ((Integer) taskCompletionSource.getTask().getResult()).intValue() == 0;
    }

    final Task c(Activity activity, Bundle bundle) {
        int i = bundle.getInt("dialog.intent.type");
        this.b.d("requestAndShowDialog(%s)", Integer.valueOf(i));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.a.u(new bm(this, taskCompletionSource, bundle, activity, taskCompletionSource, i), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task d(StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest, long j, long j2, int i) {
        this.b.d("requestExpressIntegrityToken(%s)", Long.valueOf(j2));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.a.u(new bl(this, taskCompletionSource, i, standardIntegrityTokenRequest, j, j2, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task e(StandardIntegrityManager.StandardIntegrityDialogRequest standardIntegrityDialogRequest) {
        if (!standardIntegrityDialogRequest.standardIntegrityResponse().b(standardIntegrityDialogRequest.typeCode())) {
            return Tasks.forResult(0);
        }
        standardIntegrityDialogRequest.standardIntegrityResponse().a(true);
        Activity activity = standardIntegrityDialogRequest.activity();
        Bundle bundle = new Bundle();
        bundle.putInt("dialog.intent.type", standardIntegrityDialogRequest.typeCode());
        bundle.putString("package.name", this.c);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 6);
        bundle.putInt("playcore.integrity.version.patch", 0);
        StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse = standardIntegrityDialogRequest.standardIntegrityResponse();
        if (standardIntegrityResponse instanceof StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.TokenResponse) {
            StandardIntegrityManager.StandardIntegrityToken token = ((StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.TokenResponse) standardIntegrityResponse).getToken();
            if (token instanceof bw) {
                bundle.putLong("request.token.sid", ((bw) token).a());
            }
        }
        StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse standardIntegrityResponse2 = standardIntegrityDialogRequest.standardIntegrityResponse();
        if (standardIntegrityResponse2 instanceof StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.ExceptionDetails) {
            bundle.putInt("error.to.remediate", ((StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.ExceptionDetails) standardIntegrityResponse2).getException().getErrorCode());
        }
        return c(activity, bundle);
    }

    public final Task f(long j, int i) {
        this.b.d("warmUpIntegrityToken(%s)", Long.valueOf(j));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.a.u(new bk(this, taskCompletionSource, i, j, taskCompletionSource), taskCompletionSource);
        return taskCompletionSource.getTask();
    }
}
