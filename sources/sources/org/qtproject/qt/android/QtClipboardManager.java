package org.qtproject.qt.android;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
class QtClipboardManager {
    private static final String TAG = "QtClipboardManager";
    private final long m_nativePointer;
    private ClipboardManager m_clipboardManager = null;
    private boolean m_usePrimaryClip = false;

    static native void onClipboardDataChanged(long j);

    QtClipboardManager(Context context, long j) {
        this.m_nativePointer = j;
        registerClipboardManager(context);
    }

    private void registerClipboardManager(final Context context) {
        if (context != null) {
            final Semaphore semaphore = new Semaphore(0);
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1917lambda$registerClipboardManager$0$orgqtprojectqtandroidQtClipboardManager(context, semaphore);
                }
            });
            try {
                semaphore.acquire();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: lambda$registerClipboardManager$0$org-qtproject-qt-android-QtClipboardManager, reason: not valid java name */
    /* synthetic */ void m1917lambda$registerClipboardManager$0$orgqtprojectqtandroidQtClipboardManager(Context context, Semaphore semaphore) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        this.m_clipboardManager = clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.addPrimaryClipChangedListener(new ClipboardManager.OnPrimaryClipChangedListener() { // from class: org.qtproject.qt.android.QtClipboardManager$$ExternalSyntheticLambda0
                @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
                public final void onPrimaryClipChanged() {
                    this.f$0.m1918lambda$registerClipboardManager$1$orgqtprojectqtandroidQtClipboardManager();
                }
            });
        }
        semaphore.release();
    }

    /* JADX INFO: renamed from: lambda$registerClipboardManager$1$org-qtproject-qt-android-QtClipboardManager, reason: not valid java name */
    /* synthetic */ void m1918lambda$registerClipboardManager$1$orgqtprojectqtandroidQtClipboardManager() {
        onClipboardDataChanged(this.m_nativePointer);
    }

    void clearClipData() {
        if (this.m_clipboardManager != null) {
            this.m_clipboardManager.clearPrimaryClip();
        }
        this.m_usePrimaryClip = false;
    }

    void setClipboardText(Context context, String str) {
        if (this.m_clipboardManager != null) {
            updatePrimaryClip(ClipData.newPlainText("text/plain", str), context);
        }
    }

    static boolean hasClipboardText(Context context) {
        ClipDescription primaryClipDescription;
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null || (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) == null) {
            return false;
        }
        for (int i = 0; i < primaryClipDescription.getMimeTypeCount(); i++) {
            if (primaryClipDescription.getMimeType(i).matches("text/(.*)")) {
                return true;
            }
        }
        return false;
    }

    boolean hasClipboardText() {
        return hasClipboardMimeType("text/(.*)");
    }

    String getClipboardText() {
        ClipData primaryClip;
        try {
            ClipboardManager clipboardManager = this.m_clipboardManager;
            if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = this.m_clipboardManager.getPrimaryClip()) != null) {
                for (int i = 0; i < primaryClip.getItemCount(); i++) {
                    if (primaryClip.getItemAt(i).getText() != null) {
                        return primaryClip.getItemAt(i).getText().toString();
                    }
                }
                return "";
            }
            return "";
        } catch (Exception e) {
            Log.e(TAG, "Failed to get clipboard data", e);
            return "";
        }
    }

    private void updatePrimaryClip(ClipData clipData, Context context) {
        try {
            if (this.m_usePrimaryClip) {
                ClipData primaryClip = this.m_clipboardManager.getPrimaryClip();
                ((ClipData) Objects.requireNonNull(primaryClip)).addItem(context.getContentResolver(), clipData.getItemAt(0));
                this.m_clipboardManager.setPrimaryClip(primaryClip);
            } else {
                this.m_clipboardManager.setPrimaryClip(clipData);
                this.m_usePrimaryClip = true;
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to set clipboard data", e);
        }
    }

    void setClipboardHtml(Context context, String str, String str2) {
        if (this.m_clipboardManager != null) {
            updatePrimaryClip(ClipData.newHtmlText("text/html", str, str2), context);
        }
    }

    private boolean hasClipboardMimeType(String str) {
        ClipDescription primaryClipDescription;
        ClipboardManager clipboardManager = this.m_clipboardManager;
        if (clipboardManager == null || (primaryClipDescription = clipboardManager.getPrimaryClipDescription()) == null) {
            return false;
        }
        for (int i = 0; i < primaryClipDescription.getMimeTypeCount(); i++) {
            if (primaryClipDescription.getMimeType(i).matches(str)) {
                return true;
            }
        }
        return false;
    }

    boolean hasClipboardHtml() {
        return hasClipboardMimeType("text/html");
    }

    String getClipboardHtml() {
        ClipData primaryClip;
        try {
            ClipboardManager clipboardManager = this.m_clipboardManager;
            if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = this.m_clipboardManager.getPrimaryClip()) != null) {
                for (int i = 0; i < primaryClip.getItemCount(); i++) {
                    if (primaryClip.getItemAt(i).getHtmlText() != null) {
                        return primaryClip.getItemAt(i).getHtmlText();
                    }
                }
                return "";
            }
            return "";
        } catch (Exception e) {
            Log.e(TAG, "Failed to get clipboard data", e);
            return "";
        }
    }

    void setClipboardUri(Context context, String str) {
        if (this.m_clipboardManager != null) {
            updatePrimaryClip(ClipData.newUri(context.getContentResolver(), "text/uri-list", Uri.parse(str)), context);
        }
    }

    boolean hasClipboardUri() {
        return hasClipboardMimeType("text/uri-list");
    }

    private String[] getClipboardUris() {
        ClipData primaryClip;
        ArrayList arrayList = new ArrayList();
        try {
            ClipboardManager clipboardManager = this.m_clipboardManager;
            if (clipboardManager != null && clipboardManager.hasPrimaryClip() && (primaryClip = this.m_clipboardManager.getPrimaryClip()) != null) {
                for (int i = 0; i < primaryClip.getItemCount(); i++) {
                    if (primaryClip.getItemAt(i).getUri() != null) {
                        arrayList.add(primaryClip.getItemAt(i).getUri().toString());
                    }
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to get clipboard data", e);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
