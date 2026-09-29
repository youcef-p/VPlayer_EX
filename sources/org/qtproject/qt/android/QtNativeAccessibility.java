package org.qtproject.qt.android;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: classes.dex */
class QtNativeAccessibility {
    static native boolean accessibilitySupported();

    static native int[] childIdListForAccessibleObject(int i);

    static native boolean clickAction(int i);

    static native String descriptionForAccessibleObject(int i);

    static native boolean focusAction(int i);

    static native int hitTest(float f, float f2);

    static native String languageTag(int i);

    static native int parentId(int i);

    static native boolean populateNode(int i, AccessibilityNodeInfo accessibilityNodeInfo);

    static native Rect screenRect(int i);

    static native boolean scrollBackward(int i);

    static native boolean scrollForward(int i);

    static native void setActive(boolean z);

    QtNativeAccessibility() {
    }
}
