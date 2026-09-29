package org.qtproject.qt.android;

import android.text.Html;
import android.text.Spanned;
import android.view.View;

/* JADX INFO: compiled from: QtMessageDialogHelper.java */
/* JADX INFO: loaded from: classes.dex */
class ButtonStruct implements View.OnClickListener {
    final QtMessageDialogHelper m_dialog;
    private final int m_id;
    final Spanned m_text;

    ButtonStruct(QtMessageDialogHelper qtMessageDialogHelper, int i, String str) {
        this.m_dialog = qtMessageDialogHelper;
        this.m_id = i;
        this.m_text = Html.fromHtml(str, 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        QtNativeDialogHelper.dialogResult(this.m_dialog.handler(), this.m_id);
    }
}
