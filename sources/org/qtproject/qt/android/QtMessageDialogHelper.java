package org.qtproject.qt.android;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class QtMessageDialogHelper {
    private static final String QtTAG = "QtMessageDialogHelper";
    private final Activity m_activity;
    private ArrayList<ButtonStruct> m_buttonsList;
    private Spanned m_detailedText;
    private AlertDialog m_dialog;
    private Spanned m_informativeText;
    private Spanned m_text;
    private Resources.Theme m_theme;
    private Spanned m_title;
    private int m_standardIcon = 0;
    private long m_handler = 0;

    QtMessageDialogHelper(Activity activity) {
        this.m_activity = activity;
    }

    void setStandardIcon(int i) {
        this.m_standardIcon = i;
    }

    private Drawable getIconDrawable() {
        int i = this.m_standardIcon;
        if (i == 0) {
            return null;
        }
        if (i == 1) {
            return this.m_activity.getResources().getDrawable(R.drawable.ic_dialog_info, this.m_activity.getTheme());
        }
        if (i == 2) {
            return this.m_activity.getResources().getDrawable(R.drawable.stat_sys_warning, this.m_activity.getTheme());
        }
        if (i == 3) {
            return this.m_activity.getResources().getDrawable(R.drawable.ic_dialog_alert, this.m_activity.getTheme());
        }
        if (i != 4) {
            return null;
        }
        return this.m_activity.getResources().getDrawable(R.drawable.ic_menu_help, this.m_activity.getTheme());
    }

    void setTile(String str) {
        this.m_title = Html.fromHtml(str, 0);
    }

    void setText(String str) {
        this.m_text = Html.fromHtml(str, 0);
    }

    void setInformativeText(String str) {
        this.m_informativeText = Html.fromHtml(str, 0);
    }

    void setDetailedText(String str) {
        this.m_detailedText = Html.fromHtml(str, 0);
    }

    void addButton(int i, String str) {
        if (this.m_buttonsList == null) {
            this.m_buttonsList = new ArrayList<>();
        }
        this.m_buttonsList.add(new ButtonStruct(this, i, str));
    }

    private Drawable getStyledDrawable(int i) {
        TypedArray typedArrayObtainStyledAttributes = this.m_theme.obtainStyledAttributes(new int[]{i});
        try {
            return typedArrayObtainStyledAttributes.getDrawable(0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    void show(long j) {
        this.m_handler = j;
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1937lambda$show$0$orgqtprojectqtandroidQtMessageDialogHelper();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$show$0$org-qtproject-qt-android-QtMessageDialogHelper, reason: not valid java name */
    /* synthetic */ void m1937lambda$show$0$orgqtprojectqtandroidQtMessageDialogHelper() {
        int i;
        View view;
        View view2;
        Button button;
        AlertDialog alertDialog = this.m_dialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.m_dialog.dismiss();
        }
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this.m_activity).create();
        this.m_dialog = alertDialogCreate;
        Window window = alertDialogCreate.getWindow();
        if (window != null) {
            this.m_theme = window.getContext().getTheme();
        } else {
            Log.w(QtTAG, "show(): cannot set theme from null window!");
        }
        Spanned spanned = this.m_title;
        if (spanned != null) {
            this.m_dialog.setTitle(spanned);
        }
        this.m_dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.m1938lambda$show$1$orgqtprojectqtandroidQtMessageDialogHelper(dialogInterface);
            }
        });
        this.m_dialog.setCancelable(this.m_buttonsList == null);
        this.m_dialog.setCanceledOnTouchOutside(this.m_buttonsList == null);
        this.m_dialog.setIcon(getIconDrawable());
        ScrollView scrollView = new ScrollView(this.m_activity);
        RelativeLayout relativeLayout = new RelativeLayout(this.m_activity);
        View.OnLongClickListener onLongClickListener = new View.OnLongClickListener() { // from class: org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda3
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view3) {
                return this.f$0.m1939lambda$show$2$orgqtprojectqtandroidQtMessageDialogHelper(view3);
            }
        };
        if (this.m_text != null) {
            TextView textView = new TextView(this.m_activity);
            textView.setId(1);
            textView.setOnLongClickListener(onLongClickListener);
            textView.setLongClickable(true);
            textView.setText(this.m_text);
            textView.setTextAppearance(R.style.TextAppearance.Medium);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(16, 8, 16, 8);
            layoutParams.addRule(10);
            relativeLayout.addView(textView, layoutParams);
            i = 2;
            view = textView;
        } else {
            i = 1;
            view = null;
        }
        View view3 = view;
        if (this.m_informativeText != null) {
            TextView textView2 = new TextView(this.m_activity);
            int i2 = i + 1;
            textView2.setId(i);
            textView2.setOnLongClickListener(onLongClickListener);
            textView2.setLongClickable(true);
            textView2.setText(this.m_informativeText);
            textView2.setTextAppearance(R.style.TextAppearance.Medium);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(16, 8, 16, 8);
            if (view != null) {
                layoutParams2.addRule(3, view.getId());
            } else {
                layoutParams2.addRule(10);
            }
            relativeLayout.addView(textView2, layoutParams2);
            i = i2;
            view3 = textView2;
        }
        View view4 = view3;
        if (this.m_detailedText != null) {
            TextView textView3 = new TextView(this.m_activity);
            int i3 = i + 1;
            textView3.setId(i);
            textView3.setOnLongClickListener(onLongClickListener);
            textView3.setLongClickable(true);
            textView3.setText(this.m_detailedText);
            textView3.setTextAppearance(R.style.TextAppearance.Small);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.setMargins(16, 8, 16, 8);
            if (view3 != null) {
                layoutParams3.addRule(3, view3.getId());
            } else {
                layoutParams3.addRule(10);
            }
            relativeLayout.addView(textView3, layoutParams3);
            view4 = textView3;
            i = i3;
        }
        if (this.m_buttonsList != null) {
            LinearLayout linearLayout = new LinearLayout(this.m_activity);
            linearLayout.setOrientation(0);
            int i4 = i + 1;
            linearLayout.setId(i);
            boolean z = true;
            for (ButtonStruct buttonStruct : this.m_buttonsList) {
                try {
                    try {
                        button = new Button(this.m_activity, null, R.attr.borderlessButtonStyle);
                    } catch (Exception e) {
                        e = e;
                        button = new Button(this.m_activity);
                        e.printStackTrace();
                    }
                } catch (Exception e2) {
                    e = e2;
                }
                button.setText(buttonStruct.m_text);
                button.setOnClickListener(buttonStruct);
                if (!z) {
                    View view5 = new View(this.m_activity);
                    try {
                        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(1, -1);
                        view5.setBackground(getStyledDrawable(R.attr.dividerVertical));
                        linearLayout.addView(view5, layoutParams4);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                }
                linearLayout.addView(button, new LinearLayout.LayoutParams(-1, -2, 1.0f));
                z = false;
            }
            try {
                View view6 = new View(this.m_activity);
                view6.setId(i4);
                view6.setBackground(getStyledDrawable(R.attr.dividerHorizontal));
                RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, 1);
                layoutParams5.setMargins(0, 10, 0, 0);
                if (view4 != null) {
                    layoutParams5.addRule(3, view4.getId());
                } else {
                    layoutParams5.addRule(10);
                }
                relativeLayout.addView(view6, layoutParams5);
                view2 = view6;
            } catch (Exception e4) {
                e4.printStackTrace();
                view2 = view4;
            }
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -2);
            if (view2 != null) {
                layoutParams6.addRule(3, view2.getId());
            } else {
                layoutParams6.addRule(10);
            }
            layoutParams6.setMargins(2, 0, 2, 0);
            relativeLayout.addView(linearLayout, layoutParams6);
        }
        scrollView.addView(relativeLayout);
        this.m_dialog.setView(scrollView);
        this.m_dialog.show();
    }

    /* JADX INFO: renamed from: lambda$show$1$org-qtproject-qt-android-QtMessageDialogHelper, reason: not valid java name */
    /* synthetic */ void m1938lambda$show$1$orgqtprojectqtandroidQtMessageDialogHelper(DialogInterface dialogInterface) {
        QtNativeDialogHelper.dialogResult(handler(), -1);
    }

    /* JADX INFO: renamed from: lambda$show$2$org-qtproject-qt-android-QtMessageDialogHelper, reason: not valid java name */
    /* synthetic */ boolean m1939lambda$show$2$orgqtprojectqtandroidQtMessageDialogHelper(View view) {
        TextView textView = (TextView) view;
        if (textView == null) {
            return true;
        }
        ((ClipboardManager) this.m_activity.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(textView.getText(), textView.getText()));
        return true;
    }

    void hide() {
        this.m_activity.runOnUiThread(new Runnable() { // from class: org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1936lambda$hide$0$orgqtprojectqtandroidQtMessageDialogHelper();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$hide$0$org-qtproject-qt-android-QtMessageDialogHelper, reason: not valid java name */
    /* synthetic */ void m1936lambda$hide$0$orgqtprojectqtandroidQtMessageDialogHelper() {
        AlertDialog alertDialog = this.m_dialog;
        if (alertDialog != null && alertDialog.isShowing()) {
            this.m_dialog.dismiss();
        }
        reset();
    }

    long handler() {
        return this.m_handler;
    }

    void reset() {
        this.m_standardIcon = 0;
        this.m_title = null;
        this.m_text = null;
        this.m_informativeText = null;
        this.m_detailedText = null;
        this.m_buttonsList = null;
        this.m_dialog = null;
        this.m_handler = 0L;
    }
}
