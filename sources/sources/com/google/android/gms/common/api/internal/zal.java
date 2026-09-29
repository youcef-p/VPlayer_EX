package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.10.1 */
/* JADX INFO: loaded from: classes.dex */
public final class zal {
    private int zae;
    private final ArrayMap zab = new ArrayMap();
    private final ArrayMap zac = new ArrayMap();
    private final TaskCompletionSource zad = new TaskCompletionSource();
    private boolean zaf = false;
    private final ArrayMap zaa = new ArrayMap();

    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            HasApiKey hasApiKey = (HasApiKey) it.next();
            ApiKey apiKey = hasApiKey.getApiKey();
            this.zaa.put(apiKey, null);
            this.zab.put(apiKey, hasApiKey);
        }
        this.zae = this.zaa.getSize();
    }

    public final Set zaa() {
        return this.zaa.keySet();
    }

    public final HasApiKey zab(ApiKey apiKey) {
        return (HasApiKey) this.zab.get(apiKey);
    }

    public final Task zac() {
        return this.zad.getTask();
    }

    public final void zad(ApiKey apiKey, ConnectionResult connectionResult, String str) {
        ArrayMap arrayMap = this.zaa;
        arrayMap.put(apiKey, connectionResult);
        ArrayMap arrayMap2 = this.zac;
        arrayMap2.put(apiKey, str);
        this.zae--;
        if (!connectionResult.isSuccess()) {
            this.zaf = true;
        }
        if (this.zae == 0) {
            if (this.zaf) {
                this.zad.setException(new AvailabilityException(arrayMap));
            } else {
                this.zad.setResult(arrayMap2);
            }
            this.zab.clear();
        }
    }
}
