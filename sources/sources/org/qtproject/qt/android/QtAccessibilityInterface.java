package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
interface QtAccessibilityInterface {
    default void notifyAnnouncementEvent(int i, String str) {
    }

    default void notifyDescriptionOrNameChanged(int i, String str) {
    }

    default void notifyLocationChange(int i) {
    }

    default void notifyObjectFocus(int i) {
    }

    default void notifyObjectHide(int i, int i2) {
    }

    default void notifyObjectShow(int i) {
    }

    default void notifyScrolledEvent(int i) {
    }

    default void notifyTextChanged(int i, String str, String str2, int i2, int i3, int i4) {
    }

    default void notifyValueChanged(int i, String str) {
    }
}
