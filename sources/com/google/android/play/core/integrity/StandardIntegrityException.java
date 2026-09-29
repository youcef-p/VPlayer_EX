package com.google.android.play.core.integrity;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;

/* JADX INFO: compiled from: com.google.android.play:integrity@@1.6.0 */
/* JADX INFO: loaded from: classes.dex */
public class StandardIntegrityException extends ApiException {
    private final Throwable a;
    private final boolean b;
    private boolean c;
    private final Object d;

    StandardIntegrityException(int i, boolean z, Throwable th) {
        super(new Status(i, String.format(Locale.ROOT, "Standard Integrity API error (%d): %s.", Integer.valueOf(i), com.google.android.play.core.integrity.model.b.a(i))));
        this.d = new Object();
        if (i == 0) {
            throw new IllegalArgumentException("ErrorCode should not be 0.");
        }
        this.a = th;
        this.b = z;
    }

    final void a(boolean z) {
        synchronized (this.d) {
            this.c = true;
        }
    }

    final boolean b() {
        boolean z;
        synchronized (this.d) {
            z = false;
            if (!this.c && this.b) {
                z = true;
            }
        }
        return z;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable getCause() {
        return this.a;
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }

    public boolean isRemediable() {
        return this.b;
    }
}
