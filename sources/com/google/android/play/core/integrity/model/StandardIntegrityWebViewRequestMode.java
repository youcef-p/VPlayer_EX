package com.google.android.play.core.integrity.model;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
@Retention(RetentionPolicy.SOURCE)
public @interface StandardIntegrityWebViewRequestMode {
    public static final int UNSPECIFIED = 0;
    public static final int WITHOUT_APP_BINDING = 2;
    public static final int WITH_APP_BINDING = 1;
}
