package org.qtproject.qt.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;

/* JADX INFO: loaded from: classes.dex */
class QtRootLayout extends QtLayout {
    QtRootLayout(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (((Activity) getContext()) != null) {
            if (i == i3 && i2 == i4) {
                return;
            }
            QtDisplayManager.handleLayoutSizeChanged(i, i2);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        final Activity activity = (Activity) getContext();
        if (activity == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtRootLayout$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                QtDisplayManager.handleOrientationChange(activity);
            }
        });
    }
}
