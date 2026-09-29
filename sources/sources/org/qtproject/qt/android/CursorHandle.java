package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
class CursorHandle implements ViewTreeObserver.OnPreDrawListener {
    static final int IdCursorHandle = 1;
    static final int IdLeftHandle = 2;
    static final int IdRightHandle = 3;
    private static final String QtTag = "QtCursorHandle";
    private final Activity m_activity;
    private final int m_attr;
    private final int m_id;
    private int m_lastX;
    private int m_lastY;
    private final View m_layout;
    private final boolean m_rtl;
    int m_yShift;
    int tolerance;
    private CursorView m_cursorView = null;
    private PopupWindow m_popup = null;
    private int m_posX = 0;
    private int m_posY = 0;

    CursorHandle(Activity activity, View view, int i, int i2, boolean z) {
        this.m_activity = activity;
        this.m_id = i;
        this.m_attr = i2;
        this.m_layout = view;
        int iApplyDimension = (int) TypedValue.applyDimension(5, 1.0f, activity.getResources().getDisplayMetrics());
        this.m_yShift = iApplyDimension;
        int iMin = Math.min(1, (int) (iApplyDimension / 2.0f));
        this.tolerance = iMin;
        int i3 = (-1) - iMin;
        this.m_lastY = i3;
        this.m_lastX = i3;
        this.m_rtl = z;
    }

    private void initOverlay() {
        if (this.m_popup != null) {
            return;
        }
        Context context = this.m_layout.getContext();
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{this.m_attr});
        try {
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
            typedArrayObtainStyledAttributes.recycle();
            CursorView cursorView = new CursorView(context, this);
            this.m_cursorView = cursorView;
            cursorView.setImageDrawable(drawable);
            PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
            this.m_popup = popupWindow;
            popupWindow.setSplitTouchEnabled(true);
            this.m_popup.setClippingEnabled(false);
            this.m_popup.setContentView(this.m_cursorView);
            if (drawable != null) {
                this.m_popup.setWidth(drawable.getIntrinsicWidth());
                this.m_popup.setHeight(drawable.getIntrinsicHeight());
            } else {
                Log.w(QtTag, "initOverlay(): cannot get width/height for popup from null drawable for attribute " + this.m_attr);
            }
            this.m_layout.getViewTreeObserver().addOnPreDrawListener(this);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    void setPosition(int i, int i2) {
        int width;
        int width2;
        initOverlay();
        int[] iArr = new int[2];
        View view = (View) this.m_layout.getParent();
        if (view == null) {
            view = this.m_layout;
        }
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        this.m_activity.getWindow().getDecorView().getLocationOnScreen(iArr2);
        this.m_activity.getWindow().getDecorView().getLocationInWindow(iArr3);
        int i3 = (iArr[0] + i) - iArr2[0];
        int i4 = iArr[1] + i2 + this.m_yShift + (iArr3[1] - iArr2[1]);
        int i5 = this.m_id;
        if (i5 == 1) {
            width2 = i3 - (this.m_popup.getWidth() / 2);
        } else {
            if ((i5 == 2 && !this.m_rtl) || (i5 == 3 && this.m_rtl)) {
                width = (this.m_popup.getWidth() * 3) / 4;
            } else {
                width = this.m_popup.getWidth() / 4;
            }
            width2 = i3 - width;
        }
        if (this.m_popup.isShowing()) {
            this.m_popup.update(width2, i4, -1, -1);
            this.m_cursorView.adjusted(i - this.m_posX, i2 - this.m_posY);
        } else {
            this.m_popup.showAtLocation(view, 0, width2, i4);
        }
        this.m_posX = i;
        this.m_posY = i2;
    }

    int bottom() {
        initOverlay();
        int[] iArr = new int[2];
        this.m_cursorView.getLocationOnScreen(iArr);
        return iArr[1] + this.m_cursorView.getHeight();
    }

    void hide() {
        PopupWindow popupWindow = this.m_popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    int width() {
        CursorView cursorView = this.m_cursorView;
        if (cursorView == null) {
            return 0;
        }
        return cursorView.getDrawable().getIntrinsicWidth();
    }

    void updatePosition(int i, int i2) {
        int i3 = i2 - this.m_yShift;
        if (Math.abs(this.m_lastX - i) > this.tolerance || Math.abs(this.m_lastY - i3) > this.tolerance) {
            QtInputDelegate.handleLocationChanged(this.m_id, this.m_posX + i, this.m_posY + i3);
            this.m_lastX = i;
            this.m_lastY = i3;
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        PopupWindow popupWindow = this.m_popup;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return true;
        }
        setPosition(this.m_posX, this.m_posY);
        return true;
    }
}
