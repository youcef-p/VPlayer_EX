package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.graphics.Point;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import org.qtproject.qt.android.EditContextView;

/* JADX INFO: loaded from: classes.dex */
class EditPopupMenu implements ViewTreeObserver.OnPreDrawListener, View.OnLayoutChangeListener, EditContextView.OnClickListener {
    private final Activity m_activity;
    private int m_buttons;
    private final QtEditText m_editText;
    private PopupWindow m_popup = null;
    private int m_posX;
    private int m_posY;
    private final EditContextView m_view;

    EditPopupMenu(QtEditText qtEditText) {
        Activity activity = (Activity) qtEditText.getContext();
        this.m_activity = activity;
        EditContextView editContextView = new EditContextView(activity, this);
        this.m_view = editContextView;
        editContextView.addOnLayoutChangeListener(this);
        this.m_editText = qtEditText;
        qtEditText.getViewTreeObserver().addOnPreDrawListener(this);
    }

    private void initOverlay() {
        if (this.m_popup != null) {
            return;
        }
        PopupWindow popupWindow = new PopupWindow(this.m_activity, (AttributeSet) null, R.attr.textSelectHandleWindowStyle);
        this.m_popup = popupWindow;
        popupWindow.setSplitTouchEnabled(true);
        this.m_popup.setClippingEnabled(false);
        this.m_popup.setContentView(this.m_view);
        this.m_popup.setWidth(-2);
        this.m_popup.setHeight(-2);
    }

    void setPosition(int i, int i2, int i3) {
        initOverlay();
        this.m_view.updateButtons(i3);
        Point calculatedSize = this.m_view.getCalculatedSize();
        int[] iArr = new int[2];
        View view = (View) this.m_editText.getParent();
        if (view == null) {
            view = this.m_editText;
        }
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        int[] iArr3 = new int[2];
        this.m_activity.getWindow().getDecorView().getLocationOnScreen(iArr2);
        this.m_activity.getWindow().getDecorView().getLocationInWindow(iArr3);
        int i4 = (iArr[0] + i) - iArr2[0];
        int i5 = iArr[1] + i2 + (iArr3[1] - iArr2[1]);
        int width = i4 - (calculatedSize.x / 2);
        int selectionHandleBottom = i5 - calculatedSize.y;
        if (selectionHandleBottom < 0) {
            selectionHandleBottom = this.m_editText.getSelectionHandleBottom();
        }
        if (selectionHandleBottom <= 0) {
            try {
                ((QtLayout) this.m_editText.getParent()).requestLayout();
            } catch (ClassCastException unused) {
                Log.w("Qt JAVA", "QtEditText " + this.m_editText + " parent is not a QtLayout, requestLayout() skipped");
            } catch (NullPointerException unused2) {
                Log.w("Qt JAVA", "QtEditText " + this.m_editText + " does not have a parent, requestLayout() skipped");
            }
        }
        if (view.getWidth() < (calculatedSize.x / 2) + i) {
            width = view.getWidth() - calculatedSize.x;
        }
        if (width < 0) {
            width = 0;
        }
        if (this.m_popup.isShowing()) {
            this.m_popup.update(width, selectionHandleBottom, -1, -1);
        } else {
            this.m_popup.showAtLocation(view, 0, width, selectionHandleBottom);
        }
        this.m_posX = i;
        this.m_posY = i2;
        this.m_buttons = i3;
    }

    void hide() {
        PopupWindow popupWindow = this.m_popup;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.m_popup = null;
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        PopupWindow popupWindow = this.m_popup;
        if (popupWindow == null || !popupWindow.isShowing()) {
            return true;
        }
        setPosition(this.m_posX, this.m_posY, this.m_buttons);
        return true;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        PopupWindow popupWindow;
        if ((i3 - i == i7 - i5 && i4 - i2 == i8 - i6) || (popupWindow = this.m_popup) == null || !popupWindow.isShowing()) {
            return;
        }
        setPosition(this.m_posX, this.m_posY, this.m_buttons);
    }

    @Override // org.qtproject.qt.android.EditContextView.OnClickListener
    public void contextButtonClicked(int i) {
        switch (i) {
            case R.string.copy:
                QtNativeInputConnection.copy();
                break;
            case R.string.cut:
                QtNativeInputConnection.cut();
                break;
            case R.string.paste:
                QtNativeInputConnection.paste();
                break;
            case R.string.selectAll:
                QtNativeInputConnection.selectAll();
                break;
        }
        hide();
    }
}
