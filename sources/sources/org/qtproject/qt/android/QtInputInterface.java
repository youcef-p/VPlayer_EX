package org.qtproject.qt.android;

import android.app.Activity;
import org.qtproject.qt.android.QtInputConnection;

/* JADX INFO: loaded from: classes.dex */
interface QtInputInterface {
    QtInputConnection.QtInputConnectionListener getInputConnectionListener();

    int getSelectionHandleWidth();

    void hideSoftwareKeyboard();

    boolean isSoftwareKeyboardVisible();

    void resetSoftwareKeyboard();

    void showSoftwareKeyboard(Activity activity, int i, int i2, int i3, int i4, int i5, int i6);

    void updateHandles(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z);

    void updateSelection(int i, int i2, int i3, int i4);
}
