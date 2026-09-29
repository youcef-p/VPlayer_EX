package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
public enum QtQmlStatus {
    NULL(0),
    READY(1),
    LOADING(2),
    ERROR(3);

    private final int m_value;

    QtQmlStatus(int i) {
        this.m_value = i;
    }

    QtQmlStatus() {
        this.m_value = ordinal();
    }

    static QtQmlStatus fromInt(int i) throws IllegalArgumentException {
        for (QtQmlStatus qtQmlStatus : values()) {
            if (qtQmlStatus.m_value == i) {
                return qtQmlStatus;
            }
        }
        throw new IllegalArgumentException("No QtQmlStatus enum with value " + i);
    }
}
