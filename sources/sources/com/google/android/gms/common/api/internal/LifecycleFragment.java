package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.11.0 */
/* JADX INFO: loaded from: classes.dex */
public interface LifecycleFragment {
    void addCallback(String str, LifecycleCallback lifecycleCallback);

    <T extends LifecycleCallback> T getCallbackOrNull(String str, Class<T> cls);

    Activity getLifecycleActivity();

    boolean isCreated();

    boolean isStarted();

    void startActivityForResult(Intent intent, int i);

    default void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        throw new UnsupportedOperationException();
    }
}
