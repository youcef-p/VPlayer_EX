package com.google.android.gms.common.api.internal;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import androidx.collection.ArraySet;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.GmsClientFlags;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLogging;
import com.google.android.gms.common.internal.TelemetryLoggingClient;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
public class GoogleApiManager implements Handler.Callback {
    private static GoogleApiManager zak;
    private TelemetryData zah;
    private TelemetryLoggingClient zai;
    private com.google.android.gms.common.internal.zag zaj;
    private final Context zam;
    private final GoogleApiAvailability zan;
    private final com.google.android.gms.common.internal.zav zao;
    private final Handler zax;
    private volatile boolean zay;
    public static final Status zaa = new Status(4, "Sign-out occurred while this API call was in progress.");
    static final Status zab = new Status(23, "API call is throttled.");
    private static final Status zac = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zaf = new Object();
    private static final Object zag = new Object();
    private static volatile boolean zal = false;
    private long zad = 10000;
    private boolean zae = false;
    private final AtomicInteger zap = new AtomicInteger(1);
    private final AtomicInteger zaq = new AtomicInteger(0);
    private final Map zar = new ConcurrentHashMap(5, 0.75f, 1);
    private zaab zas = null;
    private final Set zat = new ArraySet();
    private final Set zau = new ArraySet();
    private final Set zav = Collections.newSetFromMap(new WeakHashMap());
    private final Set zaw = Collections.newSetFromMap(new WeakHashMap());

    private GoogleApiManager(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.zay = true;
        this.zam = context;
        com.google.android.gms.internal.base.zas zasVar = new com.google.android.gms.internal.base.zas(looper, this);
        this.zax = zasVar;
        this.zan = googleApiAvailability;
        this.zao = new com.google.android.gms.common.internal.zav(googleApiAvailability);
        if (DeviceProperties.isAuto(context)) {
            this.zay = false;
        }
        zasVar.sendMessage(zasVar.obtainMessage(6));
    }

    public static void reportSignOut() {
        synchronized (zaf) {
            GoogleApiManager googleApiManager = zak;
            if (googleApiManager != null) {
                googleApiManager.zaq.incrementAndGet();
                Handler handler = googleApiManager.zax;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    private final zabk zaM(GoogleApi googleApi) {
        Map map = this.zar;
        ApiKey apiKey = googleApi.getApiKey();
        zabk zabkVar = (zabk) map.get(apiKey);
        if (zabkVar == null) {
            zabkVar = new zabk(this, googleApi);
            map.put(apiKey, zabkVar);
            this.zav.remove(apiKey);
            this.zaw.remove(apiKey);
        }
        if (zabkVar.zap()) {
            this.zau.add(apiKey);
        }
        zabkVar.zam();
        return zabkVar;
    }

    private final void zaN(TaskCompletionSource taskCompletionSource, int i, GoogleApi googleApi) {
        zabx zabxVarZaa;
        if (i == 0 || (zabxVarZaa = zabx.zaa(this, i, googleApi.getApiKey())) == null) {
            return;
        }
        Task task = taskCompletionSource.getTask();
        final Handler handler = this.zax;
        Objects.requireNonNull(handler);
        task.addOnCompleteListener(new Executor() { // from class: com.google.android.gms.common.api.internal.zabo
            @Override // java.util.concurrent.Executor
            public final /* synthetic */ void execute(Runnable runnable) {
                handler.post(runnable);
            }
        }, zabxVarZaa);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status zaO(ApiKey apiKey, ConnectionResult connectionResult) {
        String strZaa = apiKey.zaa();
        String strValueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(strZaa).length() + 63 + String.valueOf(strValueOf).length());
        sb.append("API: ");
        sb.append(strZaa);
        sb.append(" is not available on this device. Connection failed with: ");
        sb.append(strValueOf);
        return new Status(connectionResult, sb.toString());
    }

    private final void zaP() {
        TelemetryData telemetryData = this.zah;
        if (telemetryData != null) {
            if (telemetryData.zaa() > 0 || zam()) {
                zaQ().log(telemetryData);
            }
            this.zah = null;
        }
    }

    private final TelemetryLoggingClient zaQ() {
        if (this.zai == null) {
            this.zai = TelemetryLogging.getClient(this.zam);
        }
        return this.zai;
    }

    public static GoogleApiManager zaa(Context context) {
        GoogleApiManager googleApiManager;
        synchronized (zaf) {
            if (zak == null) {
                Looper looper = GmsClientSupervisor.getOrStartHandlerThread().getLooper();
                boolean zIsBindServiceOptimizationEnabled = GmsClientFlags.isBindServiceOptimizationEnabled(context.getPackageName());
                zal = zIsBindServiceOptimizationEnabled;
                GoogleApiManager googleApiManager2 = new GoogleApiManager(context.getApplicationContext(), looper, GoogleApiAvailability.getInstance());
                if (zIsBindServiceOptimizationEnabled) {
                    GmsClient.zag(com.google.android.gms.common.internal.zas.zaa(googleApiManager2.zam));
                }
                zak = googleApiManager2;
            }
            googleApiManager = zak;
        }
        return googleApiManager;
    }

    public static GoogleApiManager zab() {
        GoogleApiManager googleApiManager;
        synchronized (zaf) {
            Preconditions.checkNotNull(zak, "Must guarantee manager is non-null before using getInstance");
            googleApiManager = zak;
        }
        return googleApiManager;
    }

    public static boolean zat() {
        return zal;
    }

    static /* synthetic */ Status zaw(ApiKey apiKey, Feature feature) {
        ConnectionResult connectionResult = new ConnectionResult(26);
        String strZaa = apiKey.zaa();
        String string = feature.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(strZaa).length() + 55 + string.length());
        sb.append("API: ");
        sb.append(strZaa);
        sb.append(" is not available on this device. missing feature ");
        sb.append(string);
        return new Status(connectionResult, sb.toString());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        zabk zabkVar = null;
        switch (message.what) {
            case 1:
                this.zad = true == ((Boolean) message.obj).booleanValue() ? 10000L : 300000L;
                Handler handler = this.zax;
                handler.removeMessages(12);
                Iterator it = this.zar.keySet().iterator();
                while (it.hasNext()) {
                    handler.sendMessageDelayed(handler.obtainMessage(12, (ApiKey) it.next()), this.zad);
                }
                return true;
            case 2:
                zal zalVar = (zal) message.obj;
                for (ApiKey apiKey : zalVar.zaa()) {
                    zabk zabkVarZaM = (zabk) this.zar.get(apiKey);
                    if (zabkVarZaM == null) {
                        if (this.zav.contains(apiKey) || this.zaw.contains(apiKey)) {
                            HasApiKey hasApiKeyZab = zalVar.zab(apiKey);
                            if (hasApiKeyZab instanceof GoogleApi) {
                                zabkVarZaM = zaM((GoogleApi) hasApiKeyZab);
                            }
                        }
                        if (zabkVarZaM == null) {
                            zalVar.zad(apiKey, new ConnectionResult(13), null);
                        }
                    }
                    if (zabkVarZaM.zao()) {
                        zalVar.zad(apiKey, ConnectionResult.RESULT_SUCCESS, zabkVarZaM.zaf().getEndpointPackageName());
                    } else {
                        ConnectionResult connectionResultZai = zabkVarZaM.zai();
                        if (connectionResultZai != null) {
                            zalVar.zad(apiKey, connectionResultZai, null);
                        } else {
                            zabkVarZaM.zan(zalVar);
                            zabkVarZaM.zam();
                        }
                    }
                }
                return true;
            case 3:
                for (zabk zabkVar2 : this.zar.values()) {
                    zabkVar2.zah();
                    zabkVar2.zam();
                }
                return true;
            case 4:
            case 8:
            case 13:
                zacb zacbVar = (zacb) message.obj;
                Map map = this.zar;
                GoogleApi googleApi = zacbVar.zac;
                zabk zabkVarZaM2 = (zabk) map.get(googleApi.getApiKey());
                if (zabkVarZaM2 == null) {
                    zabkVarZaM2 = zaM(googleApi);
                }
                if (!zabkVarZaM2.zap() || this.zaq.get() == zacbVar.zab) {
                    zabkVarZaM2.zad(zacbVar.zaa);
                } else {
                    zacbVar.zaa.zad(zaa);
                    zabkVarZaM2.zae();
                }
                return true;
            case 5:
                int i = message.arg1;
                ConnectionResult connectionResult = (ConnectionResult) message.obj;
                Iterator it2 = this.zar.values().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        zabk zabkVar3 = (zabk) it2.next();
                        if (zabkVar3.zaq() == i) {
                            zabkVar = zabkVar3;
                        }
                    }
                }
                if (zabkVar == null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 65);
                    sb.append("Could not find API instance ");
                    sb.append(i);
                    sb.append(" while trying to fail enqueued calls.");
                    Log.wtf("GoogleApiManager", sb.toString(), new Exception());
                } else if (connectionResult.getErrorCode() == 13) {
                    String errorString = this.zan.getErrorString(connectionResult.getErrorCode());
                    String errorMessage = connectionResult.getErrorMessage();
                    StringBuilder sb2 = new StringBuilder(String.valueOf(errorString).length() + 69 + String.valueOf(errorMessage).length());
                    sb2.append("Error resolution was canceled by the user, original error message: ");
                    sb2.append(errorString);
                    sb2.append(": ");
                    sb2.append(errorMessage);
                    zabkVar.zav(new Status(17, sb2.toString()));
                } else {
                    zabkVar.zav(zaO(zabkVar.zaA(), connectionResult));
                }
                return true;
            case 6:
                Context context = this.zam;
                if (context.getApplicationContext() instanceof Application) {
                    BackgroundDetector.initialize((Application) context.getApplicationContext());
                    BackgroundDetector.getInstance().addListener(new zabf(this));
                    if (!BackgroundDetector.getInstance().readCurrentStateIfPossible(true)) {
                        this.zad = 300000L;
                    }
                }
                return true;
            case 7:
                zaM((GoogleApi) message.obj);
                return true;
            case 9:
                Map map2 = this.zar;
                if (map2.containsKey(message.obj)) {
                    ((zabk) map2.get(message.obj)).zaj();
                }
                return true;
            case 10:
                Set set = this.zau;
                Iterator it3 = set.iterator();
                while (it3.hasNext()) {
                    zabk zabkVar4 = (zabk) this.zar.remove((ApiKey) it3.next());
                    if (zabkVar4 != null) {
                        zabkVar4.zae();
                    }
                }
                set.clear();
                this.zav.clear();
                return true;
            case 11:
                Map map3 = this.zar;
                if (map3.containsKey(message.obj)) {
                    ((zabk) map3.get(message.obj)).zak();
                }
                return true;
            case 12:
                Map map4 = this.zar;
                if (map4.containsKey(message.obj)) {
                    ((zabk) map4.get(message.obj)).zal();
                }
                return true;
            case 14:
                zaac zaacVar = (zaac) message.obj;
                ApiKey apiKeyZaa = zaacVar.zaa();
                Map map5 = this.zar;
                if (map5.containsKey(apiKeyZaa)) {
                    zaacVar.zab().setResult(Boolean.valueOf(((zabk) map5.get(apiKeyZaa)).zaw(false)));
                } else {
                    zaacVar.zab().setResult(false);
                }
                return true;
            case 15:
                zabl zablVar = (zabl) message.obj;
                Map map6 = this.zar;
                if (map6.containsKey(zablVar.zaa())) {
                    ((zabk) map6.get(zablVar.zaa())).zax(zablVar);
                }
                return true;
            case 16:
                zabl zablVar2 = (zabl) message.obj;
                Map map7 = this.zar;
                if (map7.containsKey(zablVar2.zaa())) {
                    ((zabk) map7.get(zablVar2.zaa())).zay(zablVar2);
                }
                return true;
            case 17:
                zaP();
                return true;
            case 18:
                zaby zabyVar = (zaby) message.obj;
                long j = zabyVar.zac;
                if (j == 0) {
                    zaQ().log(new TelemetryData(zabyVar.zab, Arrays.asList(zabyVar.zaa)));
                } else {
                    TelemetryData telemetryData = this.zah;
                    if (telemetryData != null) {
                        List listZab = telemetryData.zab();
                        if (telemetryData.zaa() != zabyVar.zab || (listZab != null && listZab.size() >= zabyVar.zad)) {
                            this.zax.removeMessages(17);
                            zaP();
                        } else {
                            this.zah.zac(zabyVar.zaa);
                        }
                    }
                    if (this.zah == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(zabyVar.zaa);
                        this.zah = new TelemetryData(zabyVar.zab, arrayList);
                        Handler handler2 = this.zax;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), j);
                    }
                }
                return true;
            case 19:
                this.zae = false;
                return true;
            case 20:
                return true;
            case 21:
                zacp zacpVar = (zacp) message.obj;
                long j2 = zacpVar.zab;
                com.google.android.gms.common.internal.zah zahVar = zacpVar.zaa;
                com.google.android.gms.common.internal.zai zaiVar = new com.google.android.gms.common.internal.zai(Arrays.asList(null));
                Context context2 = this.zam;
                if (this.zaj == null) {
                    this.zaj = new com.google.android.gms.common.internal.service.zav(context2);
                }
                this.zaj.zaa(zaiVar);
                return true;
            default:
                int i2 = message.what;
                StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 20);
                sb3.append("Unknown message id: ");
                sb3.append(i2);
                Log.w("GoogleApiManager", sb3.toString());
                return false;
        }
    }

    final /* synthetic */ Context zaB() {
        return this.zam;
    }

    final /* synthetic */ GoogleApiAvailability zaC() {
        return this.zan;
    }

    final /* synthetic */ com.google.android.gms.common.internal.zav zaD() {
        return this.zao;
    }

    final /* synthetic */ Map zaE() {
        return this.zar;
    }

    final /* synthetic */ zaab zaF() {
        return this.zas;
    }

    final /* synthetic */ Set zaG() {
        return this.zat;
    }

    final /* synthetic */ Set zaH() {
        return this.zau;
    }

    final /* synthetic */ Set zaI() {
        return this.zav;
    }

    final /* synthetic */ Set zaJ() {
        return this.zaw;
    }

    final /* synthetic */ Handler zaK() {
        return this.zax;
    }

    final /* synthetic */ boolean zaL() {
        return this.zay;
    }

    public final int zac() {
        return this.zap.getAndIncrement();
    }

    public final void zad(GoogleApi googleApi) {
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(7, googleApi));
    }

    public final void zae(zaab zaabVar) {
        synchronized (zaf) {
            if (this.zas != zaabVar) {
                this.zas = zaabVar;
                this.zat.clear();
            }
            this.zat.addAll(zaabVar.zab());
        }
    }

    final void zaf(zaab zaabVar) {
        synchronized (zaf) {
            if (this.zas == zaabVar) {
                this.zas = null;
                this.zat.clear();
            }
        }
    }

    final zabk zag(ApiKey apiKey) {
        return (zabk) this.zar.get(apiKey);
    }

    public final Task zah(Iterable iterable) {
        zal zalVar = new zal(iterable);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(2, zalVar));
        return zalVar.zac();
    }

    public final void zai() {
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final Task zaj(GoogleApi googleApi) {
        zaac zaacVar = new zaac(googleApi.getApiKey());
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(14, zaacVar));
        return zaacVar.zab().getTask();
    }

    public final void zak(GoogleApi googleApi, int i, BaseImplementation.ApiMethodImpl apiMethodImpl) {
        zacb zacbVar = new zacb(new zae(i, apiMethodImpl), this.zaq.get(), googleApi);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(4, zacbVar));
    }

    public final void zal(GoogleApi googleApi, int i, TaskApiCall taskApiCall, TaskCompletionSource taskCompletionSource, StatusExceptionMapper statusExceptionMapper) {
        zaN(taskCompletionSource, taskApiCall.zab(), googleApi);
        zacb zacbVar = new zacb(new zag(i, taskApiCall, taskCompletionSource, statusExceptionMapper), this.zaq.get(), googleApi);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(4, zacbVar));
    }

    final boolean zam() {
        if (this.zae) {
            return false;
        }
        RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
        if (config != null && !config.getMethodInvocationTelemetryEnabled()) {
            return false;
        }
        int iZab = this.zao.zab(this.zam, 203400000);
        return iZab == -1 || iZab == 0;
    }

    public final Task zan(GoogleApi googleApi, RegisterListenerMethod registerListenerMethod, UnregisterListenerMethod unregisterListenerMethod, Runnable runnable) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaN(taskCompletionSource, registerListenerMethod.zab(), googleApi);
        zacb zacbVar = new zacb(new zaf(new zacc(registerListenerMethod, unregisterListenerMethod, runnable), taskCompletionSource), this.zaq.get(), googleApi);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(8, zacbVar));
        return taskCompletionSource.getTask();
    }

    public final Task zao(GoogleApi googleApi, ListenerHolder.ListenerKey listenerKey, int i) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        zaN(taskCompletionSource, i, googleApi);
        zacb zacbVar = new zacb(new zah(listenerKey, taskCompletionSource), this.zaq.get(), googleApi);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(13, zacbVar));
        return taskCompletionSource.getTask();
    }

    public final Handler zap() {
        return this.zax;
    }

    final boolean zaq(ConnectionResult connectionResult, int i) {
        GoogleApiAvailability googleApiAvailability = this.zan;
        if (googleApiAvailability.zaj(connectionResult.getErrorCode())) {
            return googleApiAvailability.zad(this.zam, connectionResult, i);
        }
        String strValueOf = String.valueOf(connectionResult);
        String.valueOf(strValueOf);
        Log.w("GoogleApiManager", "Not showing notification since connectionResult is not user-facing: ".concat(String.valueOf(strValueOf)));
        return false;
    }

    public final void zar(ConnectionResult connectionResult, int i) {
        if (zaq(connectionResult, i)) {
            return;
        }
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(5, i, 0, connectionResult));
    }

    final void zas(MethodInvocation methodInvocation, int i, long j, int i2) {
        zaby zabyVar = new zaby(methodInvocation, i, j, i2);
        Handler handler = this.zax;
        handler.sendMessage(handler.obtainMessage(18, zabyVar));
    }

    final /* synthetic */ boolean zau(ApiKey apiKey) {
        boolean z;
        synchronized (zaf) {
            z = false;
            if (this.zas != null && this.zat.contains(apiKey)) {
                z = true;
            }
        }
        return z;
    }

    final /* synthetic */ long zay() {
        return this.zad;
    }

    final /* synthetic */ void zaz(boolean z) {
        this.zae = true;
    }
}
