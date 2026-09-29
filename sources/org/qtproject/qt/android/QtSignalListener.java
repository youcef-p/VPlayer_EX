package org.qtproject.qt.android;

/* JADX INFO: loaded from: classes.dex */
@FunctionalInterface
public interface QtSignalListener<T> {
    void onSignalEmitted(String str, T t);
}
