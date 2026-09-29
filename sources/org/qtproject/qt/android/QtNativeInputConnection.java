package org.qtproject.qt.android;

/* JADX INFO: compiled from: QtInputConnection.java */
/* JADX INFO: loaded from: classes.dex */
class QtNativeInputConnection {
    static native boolean beginBatchEdit();

    static native boolean commitCompletion(String str, int i);

    static native boolean commitText(String str, int i);

    static native boolean copy();

    static native boolean copyURL();

    static native boolean cut();

    static native boolean deleteSurroundingText(int i, int i2);

    static native boolean endBatchEdit();

    static native boolean finishComposingText();

    static native boolean fullscreenMode();

    static native int getCursorCapsMode(int i);

    static native QtExtractedText getExtractedText(int i, int i2, int i3);

    static native String getSelectedText(int i);

    static native String getTextAfterCursor(int i, int i2);

    static native String getTextBeforeCursor(int i, int i2);

    static native boolean paste();

    static native boolean replaceText(int i, int i2, String str, int i3);

    static native void reportFullscreenMode(boolean z);

    static native boolean selectAll();

    static native boolean setComposingRegion(int i, int i2);

    static native boolean setComposingText(String str, int i);

    static native boolean setSelection(int i, int i2);

    static native boolean updateCursorPosition();

    QtNativeInputConnection() {
    }
}
