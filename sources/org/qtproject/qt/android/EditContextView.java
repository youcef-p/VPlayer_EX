package org.qtproject.qt.android;

import android.R;
import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
class EditContextView extends LinearLayout implements View.OnClickListener {
    static final int COPY_BUTTON = 2;
    static final int CUT_BUTTON = 1;
    static final int PASTE_BUTTON = 4;
    static final int SELECT_ALL_BUTTON = 8;
    final HashMap<Integer, ContextButton> m_buttons;
    final OnClickListener m_onClickListener;

    interface OnClickListener {
        void contextButtonClicked(int i);
    }

    private class ContextButton extends TextView {
        int m_buttonId;

        ContextButton(Context context, int i) {
            super(context);
            this.m_buttonId = i;
            setText(i);
            setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 1.0f));
            setGravity(17);
            setTextColor(getResources().getColor(R.color.widget_edittext_dark, context.getTheme()));
            EditContextView.this.setBackground(getResources().getDrawable(R.drawable.editbox_background_normal, context.getTheme()));
            float f = getResources().getDisplayMetrics().density;
            int i2 = (int) ((16.0f * f) + 0.5f);
            int i3 = (int) ((f * 8.0f) + 0.5f);
            setPadding(i2, i3, i2, i3);
            setSingleLine();
            setEllipsize(TextUtils.TruncateAt.END);
            setOnClickListener(EditContextView.this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.m_onClickListener.contextButtonClicked(((ContextButton) view).m_buttonId);
    }

    void addButton(int i) {
        ContextButton contextButton = new ContextButton(getContext(), i);
        this.m_buttons.put(Integer.valueOf(i), contextButton);
        addView(contextButton);
    }

    void updateButtons(int i) {
        ContextButton contextButton = this.m_buttons.get(Integer.valueOf(R.string.cut));
        if (contextButton != null) {
            contextButton.setVisibility((i & 1) != 0 ? 0 : 8);
        }
        ContextButton contextButton2 = this.m_buttons.get(Integer.valueOf(R.string.copy));
        if (contextButton2 != null) {
            contextButton2.setVisibility((i & 2) != 0 ? 0 : 8);
        }
        ContextButton contextButton3 = this.m_buttons.get(Integer.valueOf(R.string.paste));
        if (contextButton3 != null) {
            contextButton3.setVisibility((i & 4) != 0 ? 0 : 8);
        }
        ContextButton contextButton4 = this.m_buttons.get(Integer.valueOf(R.string.selectAll));
        if (contextButton4 != null) {
            contextButton4.setVisibility((i & 8) == 0 ? 8 : 0);
        }
    }

    Point getCalculatedSize() {
        Point point = new Point(0, 0);
        for (ContextButton contextButton : this.m_buttons.values()) {
            if (contextButton.getVisibility() == 0) {
                contextButton.measure(0, 0);
                point.x += contextButton.getMeasuredWidth();
                point.y = Math.max(point.y, contextButton.getMeasuredHeight());
            }
        }
        point.x += getPaddingLeft() + getPaddingRight();
        point.y += getPaddingTop() + getPaddingBottom();
        return point;
    }

    EditContextView(Context context, OnClickListener onClickListener) {
        super(context);
        this.m_buttons = new HashMap<>(4);
        this.m_onClickListener = onClickListener;
        setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        addButton(R.string.cut);
        addButton(R.string.copy);
        addButton(R.string.paste);
        addButton(R.string.selectAll);
    }
}
