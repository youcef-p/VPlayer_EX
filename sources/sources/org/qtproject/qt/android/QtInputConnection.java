package org.qtproject.qt.android;

import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.TextAttribute;

/* JADX INFO: loaded from: classes.dex */
class QtInputConnection extends BaseInputConnection {
    private static final int ID_ADD_TO_DICTIONARY = 16908330;
    private static final int ID_COPY = 16908321;
    private static final int ID_COPY_URL = 16908323;
    private static final int ID_CUT = 16908320;
    private static final int ID_PASTE = 16908322;
    private static final int ID_SELECT_ALL = 16908319;
    private static final int ID_SWITCH_INPUT_METHOD = 16908324;
    private static final int KEYBOARD_CHECK_DELAY_MS = 100;
    private static final String QtTAG = "QtInputConnection";
    private boolean m_duringBatchEdit;
    private int m_extractedRequestToken;
    private final InputMethodManager m_imm;
    private boolean m_isComposing;
    private final QtInputConnectionListener m_qtInputConnectionListener;
    private final QtEditText m_view;

    interface QtInputConnectionListener {
        boolean isKeyboardHidden();

        boolean keyboardTransitionInProgress();

        void onEditTextChanged(QtEditText qtEditText);

        void onHideKeyboardRunnableDone(boolean z, long j);

        void onSendKeyEventDefaultCase();

        void onSetClosing(boolean z);
    }

    class HideKeyboardRunnable implements Runnable {
        private int m_numberOfAttempts = 10;

        HideKeyboardRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            if (QtInputConnection.this.m_qtInputConnectionListener != null) {
                if (!QtInputConnection.this.m_qtInputConnectionListener.keyboardTransitionInProgress() || (i = this.m_numberOfAttempts) <= 0) {
                    if (QtInputConnection.this.m_qtInputConnectionListener.isKeyboardHidden()) {
                        QtInputConnection.this.m_qtInputConnectionListener.onHideKeyboardRunnableDone(false, System.nanoTime());
                        return;
                    }
                    return;
                } else {
                    this.m_numberOfAttempts = i - 1;
                    QtInputConnection.this.m_view.postDelayed(this, 100L);
                    return;
                }
            }
            Log.w(QtInputConnection.QtTAG, "HideKeyboardRunnable: QtInputConnectionListener is null");
        }
    }

    private void setClosing(boolean z) {
        if (Build.VERSION.SDK_INT < 30) {
            if (z) {
                this.m_view.postDelayed(new HideKeyboardRunnable(), 100L);
                return;
            }
            QtInputConnectionListener qtInputConnectionListener = this.m_qtInputConnectionListener;
            if (qtInputConnectionListener != null) {
                qtInputConnectionListener.onSetClosing(false);
            }
        }
    }

    QtInputConnection(QtEditText qtEditText, QtInputConnectionListener qtInputConnectionListener) {
        super(qtEditText, true);
        this.m_extractedRequestToken = 0;
        this.m_isComposing = false;
        this.m_duringBatchEdit = false;
        this.m_view = qtEditText;
        this.m_imm = (InputMethodManager) qtEditText.getContext().getSystemService("input_method");
        this.m_qtInputConnectionListener = qtInputConnectionListener;
    }

    void restartImmInput() {
        InputMethodManager inputMethodManager;
        if (!QtNativeInputConnection.fullscreenMode() || this.m_duringBatchEdit || (inputMethodManager = this.m_imm) == null) {
            return;
        }
        inputMethodManager.restartInput(this.m_view);
    }

    private void updateFullScreenExtractedText() {
        if (!QtNativeInputConnection.fullscreenMode() || this.m_duringBatchEdit || this.m_extractedRequestToken == 0) {
            return;
        }
        ExtractedTextRequest extractedTextRequest = new ExtractedTextRequest();
        extractedTextRequest.token = this.m_extractedRequestToken;
        this.m_imm.updateExtractedText(this.m_view, this.m_extractedRequestToken, getExtractedText(extractedTextRequest, 1));
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean beginBatchEdit() {
        setClosing(false);
        this.m_duringBatchEdit = true;
        return QtNativeInputConnection.beginBatchEdit();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean reportFullscreenMode(boolean z) {
        QtNativeInputConnection.reportFullscreenMode(z);
        return false;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        setClosing(false);
        boolean zEndBatchEdit = QtNativeInputConnection.endBatchEdit();
        if (this.m_duringBatchEdit) {
            this.m_duringBatchEdit = false;
            updateFullScreenExtractedText();
        }
        return zEndBatchEdit;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        setClosing(false);
        updateFullScreenExtractedText();
        return QtNativeInputConnection.commitCompletion(completionInfo.getText().toString(), completionInfo.getPosition());
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        setClosing(false);
        boolean zCommitText = QtNativeInputConnection.commitText(charSequence.toString(), i);
        updateFullScreenExtractedText();
        return zCommitText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        setClosing(false);
        boolean zDeleteSurroundingText = QtNativeInputConnection.deleteSurroundingText(i, i2);
        updateFullScreenExtractedText();
        return zDeleteSurroundingText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        setClosing(true);
        this.m_isComposing = false;
        updateFullScreenExtractedText();
        return QtNativeInputConnection.finishComposingText();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public int getCursorCapsMode(int i) {
        return QtNativeInputConnection.getCursorCapsMode(i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        QtExtractedText extractedText = QtNativeInputConnection.getExtractedText(extractedTextRequest.hintMaxChars, extractedTextRequest.hintMaxLines, i);
        if (extractedText == null) {
            return null;
        }
        ExtractedText extractedText2 = new ExtractedText();
        extractedText2.partialEndOffset = extractedText.partialEndOffset;
        extractedText2.partialStartOffset = extractedText.partialStartOffset;
        extractedText2.selectionEnd = extractedText.selectionEnd;
        extractedText2.selectionStart = extractedText.selectionStart;
        extractedText2.startOffset = extractedText.startOffset;
        extractedText2.text = extractedText.text;
        if (i == 1) {
            this.m_extractedRequestToken = extractedTextRequest.token;
        }
        return extractedText2;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i) {
        return QtNativeInputConnection.getSelectedText(i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i, int i2) {
        return QtNativeInputConnection.getTextAfterCursor(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i, int i2) {
        return QtNativeInputConnection.getTextBeforeCursor(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performContextMenuAction(int i) {
        if (i == 16908330) {
            return true;
        }
        switch (i) {
            case 16908319:
                return QtNativeInputConnection.selectAll();
            case 16908320:
                return QtNativeInputConnection.cut();
            case 16908321:
                return QtNativeInputConnection.copy();
            case 16908322:
                return QtNativeInputConnection.paste();
            case 16908323:
                return QtNativeInputConnection.copyURL();
            case 16908324:
                InputMethodManager inputMethodManager = this.m_imm;
                if (inputMethodManager != null) {
                    inputMethodManager.showInputMethodPicker();
                }
                return true;
            default:
                return super.performContextMenuAction(i);
        }
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        QtEditText qtEditText;
        finishComposingText();
        if (keyEvent.getKeyCode() == 66 && (qtEditText = this.m_view) != null) {
            int i = qtEditText.m_imeOptions;
            if (i == 5) {
                return super.sendKeyEvent(new KeyEvent(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), 61, keyEvent.getRepeatCount(), keyEvent.getMetaState()));
            }
            if (i == 7) {
                return super.sendKeyEvent(new KeyEvent(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), 61, keyEvent.getRepeatCount(), 1));
            }
            if (i == 1073741824) {
                restartImmInput();
            } else {
                QtInputConnectionListener qtInputConnectionListener = this.m_qtInputConnectionListener;
                if (qtInputConnectionListener != null) {
                    qtInputConnectionListener.onSendKeyEventDefaultCase();
                }
            }
        }
        return super.sendKeyEvent(keyEvent);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        setClosing(false);
        this.m_isComposing = true;
        boolean composingText = QtNativeInputConnection.setComposingText(charSequence.toString(), i);
        updateFullScreenExtractedText();
        return composingText;
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i, TextAttribute textAttribute) {
        return setComposingText(charSequence, i);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i, int i2, TextAttribute textAttribute) {
        return setComposingRegion(i, i2);
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i, TextAttribute textAttribute) {
        return commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean replaceText(int i, int i2, CharSequence charSequence, int i3, TextAttribute textAttribute) {
        setClosing(false);
        updateFullScreenExtractedText();
        return QtNativeInputConnection.replaceText(i, i2, charSequence.toString(), i3);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i, int i2) {
        setClosing(false);
        updateFullScreenExtractedText();
        return QtNativeInputConnection.setComposingRegion(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setSelection(int i, int i2) {
        setClosing(false);
        if (this.m_isComposing) {
            return true;
        }
        boolean selection = QtNativeInputConnection.setSelection(i, i2);
        updateFullScreenExtractedText();
        return selection;
    }
}
