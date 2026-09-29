package com.google.android.play.integrity.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public final class ae {
    private static final Map a = new HashMap();
    private final Context b;
    private final s c;
    private final String d;
    private boolean h;
    private final Intent i;
    private final z j;
    private ServiceConnection n;
    private IInterface o;
    private final List e = new ArrayList();
    private final Set f = new HashSet();
    private final Object g = new Object();
    private final IBinder.DeathRecipient l = new IBinder.DeathRecipient() { // from class: com.google.android.play.integrity.internal.u
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            ae.k(this.a);
        }
    };
    private final AtomicInteger m = new AtomicInteger(0);
    private final WeakReference k = new WeakReference(null);

    public ae(Context context, s sVar, String str, Intent intent, z zVar, y yVar) {
        this.b = context;
        this.c = sVar;
        this.d = str;
        this.i = intent;
        this.j = zVar;
    }

    public static /* synthetic */ void k(ae aeVar) {
        s sVar = aeVar.c;
        sVar.d("reportBinderDeath", new Object[0]);
        y yVar = (y) aeVar.k.get();
        if (yVar != null) {
            sVar.d("calling onBinderDied", new Object[0]);
            yVar.a();
        } else {
            sVar.d("%s : Binder has died.", aeVar.d);
            List list = aeVar.e;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((t) it.next()).a(aeVar.w());
            }
            list.clear();
        }
        synchronized (aeVar.g) {
            aeVar.x();
        }
    }

    public static /* synthetic */ void l(ae aeVar, TaskCompletionSource taskCompletionSource, Task task) {
        synchronized (aeVar.g) {
            aeVar.f.remove(taskCompletionSource);
        }
    }

    static /* bridge */ /* synthetic */ void p(final ae aeVar, final TaskCompletionSource taskCompletionSource) {
        aeVar.f.add(taskCompletionSource);
        taskCompletionSource.getTask().addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.play.integrity.internal.v
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                ae.l(this.a, taskCompletionSource, task);
            }
        });
    }

    static /* bridge */ /* synthetic */ void s(ae aeVar) {
        aeVar.c.d("linkToDeath", new Object[0]);
        try {
            aeVar.o.asBinder().linkToDeath(aeVar.l, 0);
        } catch (RemoteException e) {
            aeVar.c.c(e, "linkToDeath failed", new Object[0]);
        }
    }

    static /* bridge */ /* synthetic */ void t(ae aeVar) {
        aeVar.c.d("unlinkToDeath", new Object[0]);
        aeVar.o.asBinder().unlinkToDeath(aeVar.l, 0);
    }

    private final RemoteException w() {
        return new RemoteException(String.valueOf(this.d).concat(" : Binder has died."));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        Set set = this.f;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((TaskCompletionSource) it.next()).trySetException(w());
        }
        set.clear();
    }

    public final Handler c() {
        Handler handler;
        Map map = a;
        synchronized (map) {
            String str = this.d;
            if (!map.containsKey(str)) {
                HandlerThread handlerThread = new HandlerThread(str, 10);
                handlerThread.start();
                map.put(str, new Handler(handlerThread.getLooper()));
            }
            handler = (Handler) map.get(str);
        }
        return handler;
    }

    public final IInterface e() {
        return this.o;
    }

    public final void u(t tVar, TaskCompletionSource taskCompletionSource) {
        c().post(new w(this, tVar.c(), taskCompletionSource, tVar));
    }

    public final void v(TaskCompletionSource taskCompletionSource) {
        synchronized (this.g) {
            this.f.remove(taskCompletionSource);
        }
        c().post(new x(this));
    }

    static /* bridge */ /* synthetic */ void r(ae aeVar, t tVar) {
        if (aeVar.o != null || aeVar.h) {
            if (!aeVar.h) {
                tVar.run();
                return;
            } else {
                aeVar.c.d("Waiting to bind to the service.", new Object[0]);
                aeVar.e.add(tVar);
                return;
            }
        }
        s sVar = aeVar.c;
        sVar.d("Initiate binding to the service.", new Object[0]);
        List list = aeVar.e;
        list.add(tVar);
        ac acVar = new ac(aeVar, null);
        aeVar.n = acVar;
        aeVar.h = true;
        if (aeVar.b.bindService(aeVar.i, acVar, 1)) {
            return;
        }
        sVar.d("Failed to bind to the service.", new Object[0]);
        aeVar.h = false;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((t) it.next()).a(new af());
        }
        list.clear();
    }
}
