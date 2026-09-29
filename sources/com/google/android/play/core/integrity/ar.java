package com.google.android.play.core.integrity;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.play.core.integrity.IntegrityDialogRequest;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
final class ar {
    final com.google.android.play.integrity.internal.ae a;
    private final com.google.android.play.integrity.internal.s b;
    private final String c;
    private final Context d;
    private final ay e;
    private final t f;

    ar(Context context, com.google.android.play.integrity.internal.s sVar, ay ayVar, t tVar) {
        this.c = context.getPackageName();
        this.b = sVar;
        this.e = ayVar;
        this.f = tVar;
        this.d = context;
        if (com.google.android.play.integrity.internal.ai.b(context)) {
            this.a = new com.google.android.play.integrity.internal.ae(context, sVar, "IntegrityService", as.a, new com.google.android.play.integrity.internal.z() { // from class: com.google.android.play.core.integrity.am
                @Override // com.google.android.play.integrity.internal.z
                public final Object a(IBinder iBinder) {
                    return com.google.android.play.integrity.internal.m.b(iBinder);
                }
            }, null);
        } else {
            sVar.b("Phonesky is not installed.", new Object[0]);
            this.a = null;
        }
    }

    static /* bridge */ /* synthetic */ Bundle a(ar arVar, byte[] bArr, Long l) {
        Bundle bundle = new Bundle();
        bundle.putString("package.name", arVar.c);
        bundle.putByteArray("nonce", bArr);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 6);
        bundle.putInt("playcore.integrity.version.patch", 0);
        if (l != null) {
            bundle.putLong("cloud.prj", l.longValue());
        }
        ArrayList arrayList = new ArrayList();
        com.google.android.play.integrity.internal.d.b(3, arrayList);
        bundle.putParcelableArrayList("event_timestamps", new ArrayList<>(com.google.android.play.integrity.internal.d.a(arrayList)));
        return bundle;
    }

    final Task b(Activity activity, Bundle bundle) {
        com.google.android.play.integrity.internal.ae aeVar = this.a;
        if (aeVar == null) {
            return Tasks.forException(new IntegrityServiceException(-2, false, null));
        }
        int i = bundle.getInt("dialog.intent.type");
        this.b.d("requestAndShowDialog(%s, %s)", this.c, Integer.valueOf(i));
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        aeVar.u(new ao(this, taskCompletionSource, bundle, activity, taskCompletionSource, i), taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    public final Task c(IntegrityTokenRequest integrityTokenRequest) {
        if (this.a == null) {
            return Tasks.forException(new IntegrityServiceException(-2, false, null));
        }
        if (com.google.android.play.integrity.internal.ai.a(this.d) < 82380000) {
            return Tasks.forException(new IntegrityServiceException(-14, false, null));
        }
        try {
            byte[] bArrDecode = Base64.decode(integrityTokenRequest.nonce(), 10);
            Long lCloudProjectNumber = integrityTokenRequest.cloudProjectNumber();
            this.b.d("requestIntegrityToken(%s)", integrityTokenRequest);
            TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
            this.a.u(new an(this, taskCompletionSource, bArrDecode, lCloudProjectNumber, taskCompletionSource, integrityTokenRequest), taskCompletionSource);
            return taskCompletionSource.getTask();
        } catch (IllegalArgumentException e) {
            return Tasks.forException(new IntegrityServiceException(-13, false, e));
        }
    }

    public final Task d(IntegrityDialogRequest integrityDialogRequest) {
        if (!integrityDialogRequest.integrityResponse().c(integrityDialogRequest.typeCode())) {
            return Tasks.forResult(0);
        }
        integrityDialogRequest.integrityResponse().b(true);
        this.b.a("checkAndShowDialog(%s)", Integer.valueOf(integrityDialogRequest.typeCode()));
        Activity activity = integrityDialogRequest.activity();
        Bundle bundle = new Bundle();
        bundle.putInt("dialog.intent.type", integrityDialogRequest.typeCode());
        bundle.putString("package.name", this.c);
        bundle.putInt("playcore.integrity.version.major", 1);
        bundle.putInt("playcore.integrity.version.minor", 6);
        bundle.putInt("playcore.integrity.version.patch", 0);
        IntegrityDialogRequest.IntegrityResponse integrityResponse = integrityDialogRequest.integrityResponse();
        if (integrityResponse instanceof IntegrityDialogRequest.IntegrityResponse.TokenResponse) {
            IntegrityTokenResponse integrityTokenResponseA = ((IntegrityDialogRequest.IntegrityResponse.TokenResponse) integrityResponse).a();
            if (integrityTokenResponseA instanceof av) {
                bundle.putLong("request.token.sid", ((av) integrityTokenResponseA).a());
            }
        }
        IntegrityDialogRequest.IntegrityResponse integrityResponse2 = integrityDialogRequest.integrityResponse();
        if (integrityResponse2 instanceof IntegrityDialogRequest.IntegrityResponse.ExceptionDetails) {
            bundle.putInt("error.to.remediate", ((IntegrityDialogRequest.IntegrityResponse.ExceptionDetails) integrityResponse2).a().getErrorCode());
        }
        return b(activity, bundle);
    }
}
