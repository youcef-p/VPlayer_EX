package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.lifecycle.CoroutineLiveDataKt;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.ConnectionThrottlingConfig;
import com.google.android.gms.common.internal.InternalClientFlagRegistry;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zabk implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zat {
    final /* synthetic */ GoogleApiManager zaa;
    private final Queue zab;
    private final Api.Client zac;
    private final ApiKey zad;
    private final zaaa zae;
    private final Set zaf;
    private final Map zag;
    private final int zah;
    private final zacl zai;
    private volatile ConnectionThrottlingConfig zaj;
    private boolean zak;
    private final List zal;
    private ConnectionResult zam;
    private int zan;

    public zabk(GoogleApiManager googleApiManager, GoogleApi googleApi) {
        Objects.requireNonNull(googleApiManager);
        this.zaa = googleApiManager;
        this.zab = new LinkedList();
        this.zaf = new HashSet();
        this.zag = new HashMap();
        this.zal = new ArrayList();
        this.zam = null;
        this.zan = 0;
        Api.Client clientZaf = googleApi.zaf(googleApiManager.zaK().getLooper(), this);
        this.zac = clientZaf;
        this.zad = googleApi.getApiKey();
        this.zae = new zaaa();
        this.zah = googleApi.zab();
        if (clientZaf.requiresSignIn()) {
            this.zai = googleApi.zac(googleApiManager.zaB(), googleApiManager.zaK());
        } else {
            this.zai = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zaC, reason: merged with bridge method [inline-methods] */
    public final void zat(Bundle bundle) {
        zah();
        zaN(ConnectionResult.RESULT_SUCCESS);
        zaK();
        if (bundle == null || !bundle.containsKey("com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG")) {
            this.zaj = null;
        } else {
            byte[] byteArray = bundle.getByteArray("com.google.android.gms.common.internal.CONNECTION_THROTTLING_CONFIG");
            this.zaj = byteArray != null ? (ConnectionThrottlingConfig) SafeParcelableSerializer.deserializeFromBytes(byteArray, ConnectionThrottlingConfig.CREATOR) : null;
        }
        Iterator it = this.zag.values().iterator();
        while (it.hasNext()) {
            RegisterListenerMethod registerListenerMethod = ((zacc) it.next()).zaa;
            if (zaO(registerListenerMethod.getRequiredFeatures()) != null) {
                it.remove();
            } else {
                try {
                    registerListenerMethod.registerListener(this.zac, new TaskCompletionSource<>());
                } catch (DeadObjectException unused) {
                    onConnectionSuspended(3);
                    this.zac.disconnect("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException e) {
                    e = e;
                    Log.e("GoogleApiManager", "Failed to register listener on re-connection.", e);
                    it.remove();
                } catch (RuntimeException e2) {
                    e = e2;
                    Log.e("GoogleApiManager", "Failed to register listener on re-connection.", e);
                    it.remove();
                }
            }
        }
        zaF();
        zaL();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zaD, reason: merged with bridge method [inline-methods] */
    public final void zau(int i) {
        zah();
        this.zak = true;
        Api.Client client = this.zac;
        this.zae.zae(i, client.getLastDisconnectMessage());
        String lastDisconnectMessage = client.getLastDisconnectMessage();
        String.valueOf(lastDisconnectMessage);
        new Status(20, "Connection suspended: ".concat(String.valueOf(lastDisconnectMessage)));
        ApiKey apiKey = this.zad;
        GoogleApiManager googleApiManager = this.zaa;
        googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 9, apiKey), CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 11, apiKey), 120000L);
        googleApiManager.zaD().zac();
        Iterator it = this.zag.values().iterator();
        while (it.hasNext()) {
            ((zacc) it.next()).zac.run();
        }
    }

    private final boolean zaE(ConnectionResult connectionResult) {
        synchronized (GoogleApiManager.zaf) {
            GoogleApiManager googleApiManager = this.zaa;
            if (googleApiManager.zaF() == null || !googleApiManager.zaG().contains(this.zad)) {
                return false;
            }
            googleApiManager.zaF().zaf(connectionResult, this.zah);
            return true;
        }
    }

    private final void zaF() {
        Queue queue = this.zab;
        ArrayList arrayList = new ArrayList(queue);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            zai zaiVar = (zai) arrayList.get(i);
            if (!this.zac.isConnected()) {
                return;
            }
            if (zaG(zaiVar)) {
                queue.remove(zaiVar);
            }
        }
    }

    private final boolean zaG(zai zaiVar) {
        if (!(zaiVar instanceof zac)) {
            zaH(zaiVar);
            return true;
        }
        zac zacVar = (zac) zaiVar;
        Feature featureZaO = zaO(zacVar.zaa(this));
        if (featureZaO == null) {
            zaH(zaiVar);
            return true;
        }
        String name = this.zac.getClass().getName();
        String name2 = featureZaO.getName();
        long version = featureZaO.getVersion();
        int length = String.valueOf(name).length();
        StringBuilder sb = new StringBuilder(length + 53 + String.valueOf(name2).length() + 2 + String.valueOf(version).length() + 2);
        sb.append(name);
        sb.append(" could not execute call because it requires feature (");
        sb.append(name2);
        sb.append(", ");
        sb.append(version);
        sb.append(").");
        Log.w("GoogleApiManager", sb.toString());
        GoogleApiManager googleApiManager = this.zaa;
        if (!googleApiManager.zaL() || !zacVar.zab(this)) {
            if (InternalClientFlagRegistry.getClientFlags().useApiExceptionOnMissingFeature()) {
                zacVar.zad(GoogleApiManager.zaw(this.zad, featureZaO));
            } else {
                zacVar.zae(new UnsupportedApiCallException(featureZaO));
            }
            return true;
        }
        int iZac = zacVar.zac(this);
        zabl zablVar = new zabl(this.zad, featureZaO, null);
        List list = this.zal;
        int iIndexOf = list.indexOf(zablVar);
        if (iIndexOf >= 0) {
            zabl zablVar2 = (zabl) list.get(iIndexOf);
            googleApiManager.zaK().removeMessages(15, zablVar2);
            googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 15, zablVar2), CoroutineLiveDataKt.DEFAULT_TIMEOUT);
            return false;
        }
        list.add(zablVar);
        googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 15, zablVar), CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 16, zablVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null, null, Integer.valueOf(iZac));
        if (zaE(connectionResult)) {
            String name3 = featureZaO.getName();
            long version2 = featureZaO.getVersion();
            StringBuilder sb2 = new StringBuilder(String.valueOf(name3).length() + 61 + String.valueOf(version2).length());
            sb2.append("A dialog should be displayed for missing feature: ");
            sb2.append(name3);
            sb2.append(", version: ");
            sb2.append(version2);
            Log.w("GoogleApiManager", sb2.toString());
            return false;
        }
        if (!googleApiManager.zaq(connectionResult, this.zah)) {
            return false;
        }
        String name4 = featureZaO.getName();
        long version3 = featureZaO.getVersion();
        StringBuilder sb3 = new StringBuilder(String.valueOf(name4).length() + 55 + String.valueOf(version3).length());
        sb3.append("Notification displayed for missing feature: ");
        sb3.append(name4);
        sb3.append(", version: ");
        sb3.append(version3);
        Log.w("GoogleApiManager", sb3.toString());
        return false;
    }

    private final void zaH(zai zaiVar) {
        zaiVar.zaf(this.zae, zap());
        try {
            zaiVar.zag(this);
        } catch (DeadObjectException unused) {
            onConnectionSuspended(1);
            this.zac.disconnect("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final void zaI(Status status, Exception exc, boolean z) {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.zab.iterator();
        while (it.hasNext()) {
            zai zaiVar = (zai) it.next();
            if (!z || zaiVar.zac == 2) {
                if (status != null) {
                    zaiVar.zad(status);
                } else {
                    zaiVar.zae(exc);
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zaJ, reason: merged with bridge method [inline-methods] */
    public final void zav(Status status) {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        zaI(status, null, false);
    }

    private final void zaK() {
        if (this.zak) {
            GoogleApiManager googleApiManager = this.zaa;
            ApiKey apiKey = this.zad;
            googleApiManager.zaK().removeMessages(11, apiKey);
            googleApiManager.zaK().removeMessages(9, apiKey);
            this.zak = false;
        }
    }

    private final void zaL() {
        ApiKey apiKey = this.zad;
        GoogleApiManager googleApiManager = this.zaa;
        googleApiManager.zaK().removeMessages(12, apiKey);
        googleApiManager.zaK().sendMessageDelayed(googleApiManager.zaK().obtainMessage(12, apiKey), googleApiManager.zay());
    }

    private final boolean zaM(boolean z) {
        GoogleApiManager googleApiManager = this.zaa;
        Preconditions.checkHandlerThread(googleApiManager.zaK());
        Api.Client client = this.zac;
        if (!client.isConnected() || !this.zag.isEmpty()) {
            return false;
        }
        if (this.zae.zac()) {
            if (z) {
                zaL();
            }
            return false;
        }
        client.disconnect("Timing out service connection.");
        if (!this.zab.isEmpty() || !this.zaf.isEmpty() || !this.zal.isEmpty()) {
            return true;
        }
        ApiKey apiKey = this.zad;
        if (googleApiManager.zau(apiKey)) {
            return true;
        }
        googleApiManager.zaE().remove(apiKey);
        if (!zap()) {
            googleApiManager.zaJ().add(apiKey);
            return true;
        }
        googleApiManager.zaH().remove(apiKey);
        googleApiManager.zaI().add(apiKey);
        return true;
    }

    private final void zaN(ConnectionResult connectionResult) {
        Set set = this.zaf;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((zal) it.next()).zad(this.zad, connectionResult, com.google.android.gms.common.internal.Objects.equal(connectionResult, ConnectionResult.RESULT_SUCCESS) ? this.zac.getEndpointPackageName() : null);
        }
        set.clear();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Feature zaO(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] availableFeatures = this.zac.getAvailableFeatures();
            if (availableFeatures == null) {
                availableFeatures = new Feature[0];
            }
            ArrayMap arrayMap = new ArrayMap(availableFeatures.length);
            for (Feature feature : availableFeatures) {
                arrayMap.put(feature.getName(), Long.valueOf(feature.getVersion()));
            }
            for (Feature feature2 : featureArr) {
                Long l = (Long) arrayMap.get(feature2.getName());
                if (l == null || l.longValue() < feature2.getVersion()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        GoogleApiManager googleApiManager = this.zaa;
        if (Looper.myLooper() == googleApiManager.zaK().getLooper()) {
            zat(bundle);
        } else {
            googleApiManager.zaK().post(new zabg(this, bundle));
        }
    }

    @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zac(connectionResult, null);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        GoogleApiManager googleApiManager = this.zaa;
        if (Looper.myLooper() == googleApiManager.zaK().getLooper()) {
            zau(i);
        } else {
            googleApiManager.zaK().post(new zabh(this, i));
        }
    }

    final /* synthetic */ ApiKey zaA() {
        return this.zad;
    }

    final /* synthetic */ boolean zaB() {
        return this.zak;
    }

    @Override // com.google.android.gms.common.api.internal.zat
    public final void zaa(ConnectionResult connectionResult, Api api, boolean z) {
        throw null;
    }

    public final void zab(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        Api.Client client = this.zac;
        String name = client.getClass().getName();
        String strValueOf = String.valueOf(connectionResult);
        StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 25 + String.valueOf(strValueOf).length());
        sb.append("onSignInFailed for ");
        sb.append(name);
        sb.append(" with ");
        sb.append(strValueOf);
        client.disconnect(sb.toString());
        zac(connectionResult, null);
    }

    public final void zac(ConnectionResult connectionResult, Exception exc) {
        GoogleApiManager googleApiManager = this.zaa;
        Preconditions.checkHandlerThread(googleApiManager.zaK());
        zacl zaclVar = this.zai;
        if (zaclVar != null) {
            zaclVar.zad();
        }
        zah();
        googleApiManager.zaD().zac();
        zaN(connectionResult);
        if ((this.zac instanceof com.google.android.gms.common.internal.service.zaz) && connectionResult.getErrorCode() != 24) {
            googleApiManager.zaz(true);
            googleApiManager.zaK().sendMessageDelayed(googleApiManager.zaK().obtainMessage(19), 300000L);
        }
        if (connectionResult.getErrorCode() == 4) {
            zav(GoogleApiManager.zac);
            return;
        }
        if (connectionResult.getErrorCode() == 25) {
            zav(GoogleApiManager.zaO(this.zad, connectionResult));
            return;
        }
        Queue queue = this.zab;
        if (queue.isEmpty()) {
            this.zam = connectionResult;
            return;
        }
        if (exc != null) {
            Preconditions.checkHandlerThread(googleApiManager.zaK());
            zaI(null, exc, false);
            return;
        }
        if (!googleApiManager.zaL()) {
            zav(GoogleApiManager.zaO(this.zad, connectionResult));
            return;
        }
        ApiKey apiKey = this.zad;
        zaI(GoogleApiManager.zaO(apiKey, connectionResult), null, true);
        if (queue.isEmpty() || zaE(connectionResult) || googleApiManager.zaq(connectionResult, this.zah)) {
            return;
        }
        if (connectionResult.getErrorCode() == 18) {
            this.zak = true;
        }
        if (this.zak) {
            googleApiManager.zaK().sendMessageDelayed(Message.obtain(googleApiManager.zaK(), 9, apiKey), CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        } else {
            zav(GoogleApiManager.zaO(apiKey, connectionResult));
        }
    }

    public final void zad(zai zaiVar) {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        if (this.zac.isConnected()) {
            if (zaG(zaiVar)) {
                zaL();
                return;
            } else {
                this.zab.add(zaiVar);
                return;
            }
        }
        this.zab.add(zaiVar);
        ConnectionResult connectionResult = this.zam;
        if (connectionResult == null || !connectionResult.hasResolution()) {
            zam();
        } else {
            zac(this.zam, null);
        }
    }

    public final void zae() {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        zav(GoogleApiManager.zaa);
        this.zae.zad();
        for (ListenerHolder.ListenerKey listenerKey : (ListenerHolder.ListenerKey[]) this.zag.keySet().toArray(new ListenerHolder.ListenerKey[0])) {
            zad(new zah(listenerKey, new TaskCompletionSource()));
        }
        zaN(new ConnectionResult(4));
        Api.Client client = this.zac;
        if (client.isConnected()) {
            client.onUserSignOut(new zabj(this));
        }
    }

    public final Api.Client zaf() {
        return this.zac;
    }

    public final Map zag() {
        return this.zag;
    }

    public final void zah() {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        this.zam = null;
    }

    public final ConnectionResult zai() {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        return this.zam;
    }

    public final void zaj() {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        if (this.zak) {
            zam();
        }
    }

    public final void zak() {
        GoogleApiManager googleApiManager = this.zaa;
        Preconditions.checkHandlerThread(googleApiManager.zaK());
        if (this.zak) {
            zaK();
            zav(googleApiManager.zaC().isGooglePlayServicesAvailable(googleApiManager.zaB()) == 18 ? new Status(21, "Connection timed out waiting for Google Play services update to complete.") : new Status(22, "API failed to connect while resuming due to an unknown error."));
            this.zac.disconnect("Timing out connection while resuming.");
        }
    }

    public final boolean zal() {
        return zaM(true);
    }

    public final void zam() {
        GoogleApiManager googleApiManager = this.zaa;
        Preconditions.checkHandlerThread(googleApiManager.zaK());
        Api.Client client = this.zac;
        if (client.isConnected() || client.isConnecting()) {
            return;
        }
        try {
            int iZaa = googleApiManager.zaD().zaa(googleApiManager.zaB(), client);
            if (iZaa == 0) {
                zabn zabnVar = new zabn(googleApiManager, client, this.zad);
                if (client.requiresSignIn()) {
                    ((zacl) Preconditions.checkNotNull(this.zai)).zac(zabnVar);
                }
                try {
                    client.connect(zabnVar);
                    return;
                } catch (SecurityException e) {
                    zac(new ConnectionResult(10), e);
                    return;
                }
            }
            ConnectionResult connectionResult = new ConnectionResult(iZaa, null);
            String name = this.zac.getClass().getName();
            String string = connectionResult.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 35 + string.length());
            sb.append("The service for ");
            sb.append(name);
            sb.append(" is not available: ");
            sb.append(string);
            Log.w("GoogleApiManager", sb.toString());
            zac(connectionResult, null);
        } catch (IllegalStateException e2) {
            zac(new ConnectionResult(10), e2);
        }
    }

    public final void zan(zal zalVar) {
        Preconditions.checkHandlerThread(this.zaa.zaK());
        this.zaf.add(zalVar);
    }

    final boolean zao() {
        return this.zac.isConnected();
    }

    public final boolean zap() {
        return this.zac.requiresSignIn();
    }

    public final int zaq() {
        return this.zah;
    }

    final int zar() {
        return this.zan;
    }

    final void zas() {
        this.zan++;
    }

    final /* synthetic */ boolean zaw(boolean z) {
        return zaM(false);
    }

    final /* synthetic */ void zax(zabl zablVar) {
        if (this.zal.contains(zablVar) && !this.zak) {
            if (this.zac.isConnected()) {
                zaF();
            } else {
                zam();
            }
        }
    }

    final /* synthetic */ void zay(zabl zablVar) {
        Feature[] featureArrZaa;
        if (this.zal.remove(zablVar)) {
            GoogleApiManager googleApiManager = this.zaa;
            googleApiManager.zaK().removeMessages(15, zablVar);
            googleApiManager.zaK().removeMessages(16, zablVar);
            Feature featureZab = zablVar.zab();
            Queue<zai> queue = this.zab;
            ArrayList arrayList = new ArrayList(queue.size());
            for (zai zaiVar : queue) {
                if ((zaiVar instanceof zac) && (featureArrZaa = ((zac) zaiVar).zaa(this)) != null && ArrayUtils.contains(featureArrZaa, featureZab)) {
                    arrayList.add(zaiVar);
                }
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                zai zaiVar2 = (zai) arrayList.get(i);
                queue.remove(zaiVar2);
                if (InternalClientFlagRegistry.getClientFlags().useApiExceptionOnMissingFeature()) {
                    zaiVar2.zad(GoogleApiManager.zaw(this.zad, featureZab));
                } else {
                    zaiVar2.zae(new UnsupportedApiCallException(featureZab));
                }
            }
        }
    }

    final /* synthetic */ Api.Client zaz() {
        return this.zac;
    }
}
