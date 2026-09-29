package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
public interface QtQmlStatusChangeListener {
    default void onStatusChanged(QtQmlStatus qtQmlStatus) {
    }

    default void onStatusChanged(QtQmlStatus qtQmlStatus, QtQuickViewContent qtQuickViewContent) {
        onStatusChanged(qtQmlStatus);
    }
}
