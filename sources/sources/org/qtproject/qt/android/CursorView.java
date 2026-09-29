package org.qtproject.qt.android;

import android.content.Context;
import android.widget.ImageView;

/* JADX INFO: compiled from: CursorHandle.java */
/* JADX INFO: loaded from: classes.dex */
class CursorView extends ImageView {
    private final CursorHandle mHandle;
    private float m_offsetX;
    private float m_offsetY;
    private boolean m_pressed;

    CursorView(Context context, CursorHandle cursorHandle) {
        super(context);
        this.m_pressed = false;
        this.mHandle = cursorHandle;
    }

    void adjusted(int i, int i2) {
        this.m_offsetX += i;
        this.m_offsetY += i2;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) {
        /*
            r4 = this;
            int r0 = r5.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L35
            r2 = 0
            if (r0 == r1) goto L32
            r3 = 2
            if (r0 == r3) goto L11
            r5 = 3
            if (r0 == r5) goto L32
            goto L4c
        L11:
            boolean r0 = r4.m_pressed
            if (r0 != 0) goto L16
            return r2
        L16:
            org.qtproject.qt.android.CursorHandle r0 = r4.mHandle
            float r2 = r5.getRawX()
            float r3 = r4.m_offsetX
            float r2 = r2 - r3
            int r2 = java.lang.Math.round(r2)
            float r5 = r5.getRawY()
            float r3 = r4.m_offsetY
            float r5 = r5 - r3
            int r5 = java.lang.Math.round(r5)
            r0.updatePosition(r2, r5)
            goto L4c
        L32:
            r4.m_pressed = r2
            goto L4c
        L35:
            float r0 = r5.getRawX()
            r4.m_offsetX = r0
            float r5 = r5.getRawY()
            int r0 = r4.getHeight()
            float r0 = (float) r0
            r2 = 1073741824(0x40000000, float:2.0)
            float r0 = r0 / r2
            float r5 = r5 + r0
            r4.m_offsetY = r5
            r4.m_pressed = r1
        L4c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.qtproject.qt.android.CursorView.onTouchEvent(android.view.MotionEvent):boolean");
    }
}
