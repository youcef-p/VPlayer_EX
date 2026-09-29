package com.android.billingclient.api;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.android.billingclient:billing@@9.1.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzec {
    zzec(JSONObject jSONObject) throws JSONException {
        jSONObject.getString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
    }
}
