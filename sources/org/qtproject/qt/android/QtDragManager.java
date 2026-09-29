package org.qtproject.qt.android;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipDescription;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.net.Uri;
import android.util.Log;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.View;
import androidx.core.view.InputDeviceCompat;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
class QtDragManager implements View.OnDragListener {
    private static final String DEFAULT_MIME_TYPE = "application/octet-stream";
    private static final String TAG = "QtDragManager";
    private static QtDragManager m_instance;
    private volatile long m_nativePointer = 0;
    private volatile View m_sourceView = null;
    private DragAndDropPermissions m_dragPermissions = null;

    static native boolean onDragEvent(long j, int i, int i2, float f, float f2, String[] strArr, String[] strArr2, boolean z);

    QtDragManager() {
    }

    static synchronized QtDragManager getInstance() {
        if (m_instance == null) {
            m_instance = new QtDragManager();
        }
        return m_instance;
    }

    static synchronized void setNativePointer(long j) {
        getInstance().m_nativePointer = j;
    }

    static synchronized void clearNativePointer(long j) {
        QtDragManager qtDragManager = getInstance();
        if (qtDragManager.m_nativePointer == j) {
            qtDragManager.m_nativePointer = 0L;
            qtDragManager.m_sourceView = null;
        }
    }

    void startDrag(final QtWindow qtWindow, final String[] strArr, final String[] strArr2, final Bitmap bitmap, final int i, final int i2) {
        if (qtWindow == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1920lambda$startDrag$0$orgqtprojectqtandroidQtDragManager(strArr, strArr2, qtWindow, bitmap, i, i2);
            }
        }, false);
    }

    /* JADX INFO: renamed from: lambda$startDrag$0$org-qtproject-qt-android-QtDragManager, reason: not valid java name */
    /* synthetic */ void m1920lambda$startDrag$0$orgqtprojectqtandroidQtDragManager(String[] strArr, String[] strArr2, QtWindow qtWindow, Bitmap bitmap, int i, int i2) {
        boolean zStartDragAndDrop;
        String[] strArr3 = strArr;
        boolean zEquals = false;
        String str = null;
        String str2 = null;
        Uri uri = null;
        String str3 = null;
        for (int i3 = 0; i3 < strArr3.length; i3++) {
            try {
                String str4 = strArr2[i3];
                String str5 = strArr3[i3];
                if (str5.equals("text/html")) {
                    str2 = str4;
                } else if (str5.equals("text/plain")) {
                    str = str4;
                } else if (str5.equals("text/uri-list") && !str4.isEmpty()) {
                    String strTrim = str4.split("[\\r\\n]+", 2)[0].trim();
                    if (!strTrim.isEmpty()) {
                        uri = Uri.parse(strTrim);
                        zEquals = "content".equals(uri.getScheme());
                        str3 = str4;
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "startDragAndDrop() failed on window id " + qtWindow.getId(), e);
                zStartDragAndDrop = false;
            }
        }
        if (!(strArr3.length > 0)) {
            strArr3 = new String[]{DEFAULT_MIME_TYPE};
        }
        ClipData clipData = new ClipData(new ClipDescription("DragClip", strArr3), new ClipData.Item(str, str2, null, uri));
        if (str3 != null) {
            String[] strArrSplit = str3.split("[\\r\\n]+");
            for (int i4 = 1; i4 < strArrSplit.length; i4++) {
                String strTrim2 = strArrSplit[i4].trim();
                if (!strTrim2.isEmpty()) {
                    Uri uri2 = Uri.parse(strTrim2);
                    zEquals |= "content".equals(uri2.getScheme());
                    clipData.addItem(new ClipData.Item(uri2));
                }
            }
        }
        QtDragShadowBuilder qtDragShadowBuilder = new QtDragShadowBuilder(qtWindow, bitmap, i, i2);
        this.m_sourceView = qtWindow;
        zStartDragAndDrop = qtWindow.startDragAndDrop(clipData, qtDragShadowBuilder, this, zEquals ? InputDeviceCompat.SOURCE_KEYBOARD : 256);
        if (zStartDragAndDrop) {
            return;
        }
        this.m_sourceView = null;
        long j = this.m_nativePointer;
        if (j != 0) {
            String[] strArr4 = new String[0];
            onDragEvent(j, qtWindow.getId(), 4, 0.0f, 0.0f, strArr4, strArr4, false);
        }
    }

    void cancelDrag() {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtDragManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1919lambda$cancelDrag$0$orgqtprojectqtandroidQtDragManager();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$cancelDrag$0$org-qtproject-qt-android-QtDragManager, reason: not valid java name */
    /* synthetic */ void m1919lambda$cancelDrag$0$orgqtprojectqtandroidQtDragManager() {
        if (this.m_sourceView != null) {
            this.m_sourceView.cancelDragAndDrop();
        }
    }

    private void releaseDragPermissions() {
        DragAndDropPermissions dragAndDropPermissions = this.m_dragPermissions;
        if (dragAndDropPermissions != null) {
            dragAndDropPermissions.release();
            this.m_dragPermissions = null;
        }
    }

    void onSourceWindowDetached(View view) {
        if (this.m_sourceView != view) {
            return;
        }
        this.m_sourceView = null;
        long j = this.m_nativePointer;
        if (j != 0) {
            String[] strArr = new String[0];
            onDragEvent(j, view.getId(), 4, 0.0f, 0.0f, strArr, strArr, false);
        }
    }

    @Override // android.view.View.OnDragListener
    public boolean onDrag(View view, DragEvent dragEvent) {
        String[] strArr;
        int action = dragEvent.getAction();
        if (action == 4) {
            this.m_sourceView = null;
            releaseDragPermissions();
        }
        long j = this.m_nativePointer;
        if (j == 0) {
            return false;
        }
        if (action == 1) {
            return true;
        }
        String[] strArr2 = new String[0];
        String[] strArr3 = new String[0];
        ClipDescription clipDescription = dragEvent.getClipDescription();
        if (clipDescription != null) {
            int mimeTypeCount = clipDescription.getMimeTypeCount();
            String[] strArr4 = new String[mimeTypeCount];
            for (int i = 0; i < mimeTypeCount; i++) {
                strArr4[i] = clipDescription.getMimeType(i);
            }
            strArr = strArr4;
        } else {
            strArr = strArr2;
        }
        if (action == 3) {
            try {
                ClipData clipData = dragEvent.getClipData();
                if (clipData != null && clipData.getItemCount() > 0) {
                    strArr3 = new String[strArr.length];
                    Arrays.fill(strArr3, "");
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 0; i2 < clipData.getItemCount(); i2++) {
                        Uri uri = clipData.getItemAt(i2).getUri();
                        if (uri != null) {
                            if (sb.length() > 0) {
                                sb.append('\n');
                            }
                            sb.append(uri.toString());
                        }
                    }
                    if (sb.length() > 0) {
                        releaseDragPermissions();
                        Activity activity = QtNative.activity();
                        if (activity != null) {
                            DragAndDropPermissions dragAndDropPermissionsRequestDragAndDropPermissions = activity.requestDragAndDropPermissions(dragEvent);
                            this.m_dragPermissions = dragAndDropPermissionsRequestDragAndDropPermissions;
                            if (dragAndDropPermissionsRequestDragAndDropPermissions == null) {
                                Log.w(TAG, "Drag and drop reading permissions denied.");
                            }
                        }
                    }
                    ClipData.Item itemAt = clipData.getItemAt(0);
                    for (int i3 = 0; i3 < strArr.length; i3++) {
                        if ("text/html".equals(strArr[i3])) {
                            String htmlText = itemAt.getHtmlText();
                            if (htmlText == null) {
                                htmlText = "";
                            }
                            strArr3[i3] = htmlText;
                        } else if ("text/uri-list".equals(strArr[i3])) {
                            strArr3[i3] = sb.toString();
                        } else if ("text/plain".equals(strArr[i3])) {
                            CharSequence text = itemAt.getText();
                            if (text == null) {
                                text = itemAt.coerceToText(view.getContext());
                            }
                            strArr3[i3] = text != null ? text.toString() : "";
                        } else {
                            Uri uri2 = itemAt.getUri();
                            if (uri2 != null) {
                                strArr3[i3] = uri2.toString();
                            } else {
                                CharSequence charSequenceCoerceToText = itemAt.coerceToText(view.getContext());
                                strArr3[i3] = charSequenceCoerceToText != null ? charSequenceCoerceToText.toString() : "";
                            }
                        }
                    }
                }
            } catch (Exception e) {
                Log.e(TAG, "Failed to read dropped clip data", e);
            }
        }
        return onDragEvent(j, view.getId(), action, dragEvent.getX(), dragEvent.getY(), strArr, strArr3, dragEvent.getResult());
    }

    private static class QtDragShadowBuilder extends View.DragShadowBuilder {
        private final Bitmap m_bitmap;
        private final int m_hotSpotX;
        private final int m_hotSpotY;

        QtDragShadowBuilder(View view, Bitmap bitmap, int i, int i2) {
            super(view);
            this.m_bitmap = bitmap;
            this.m_hotSpotX = i;
            this.m_hotSpotY = i2;
        }

        @Override // android.view.View.DragShadowBuilder
        public void onProvideShadowMetrics(Point point, Point point2) {
            Bitmap bitmap = this.m_bitmap;
            if (bitmap == null) {
                super.onProvideShadowMetrics(point, point2);
            } else {
                point.set(bitmap.getWidth(), this.m_bitmap.getHeight());
                point2.set(this.m_hotSpotX, this.m_hotSpotY);
            }
        }

        @Override // android.view.View.DragShadowBuilder
        public void onDrawShadow(Canvas canvas) {
            Bitmap bitmap = this.m_bitmap;
            if (bitmap != null) {
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
        }
    }
}
