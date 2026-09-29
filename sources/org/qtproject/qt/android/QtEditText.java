package org.qtproject.qt.android;

import android.content.Context;
import android.graphics.Canvas;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputConnection;
import org.qtproject.qt.android.QtInputConnection;

/* JADX INFO: loaded from: classes.dex */
class QtEditText extends View {
    static final int CursorHandleNotShown = 0;
    static final int CursorHandleShowEdit = 256;
    static final int CursorHandleShowNormal = 1;
    static final int CursorHandleShowSelection = 2;
    private final int ImhDate;
    private final int ImhDialableCharactersOnly;
    private final int ImhDigitsOnly;
    private final int ImhEmailCharactersOnly;
    private final int ImhFormattedNumbersOnly;
    private final int ImhHiddenText;
    private final int ImhLatinOnly;
    private final int ImhLowercaseOnly;
    private final int ImhMultiLine;
    private final int ImhNoAutoUppercase;
    private final int ImhNoPredictiveText;
    private final int ImhPreferLatin;
    private final int ImhPreferLowercase;
    private final int ImhPreferNumbers;
    private final int ImhPreferUppercase;
    private final int ImhSensitiveData;
    private final int ImhTime;
    private final int ImhUppercaseOnly;
    private final int ImhUrlCharactersOnly;
    private CursorHandle m_cursorHandle;
    private final EditPopupMenu m_editPopupMenu;
    int m_imeOptions;
    int m_initialCapsMode;
    QtInputConnection m_inputConnection;
    int m_inputType;
    private CursorHandle m_leftSelectionHandle;
    boolean m_optionsChanged;
    private final QtInputConnection.QtInputConnectionListener m_qtInputConnectionListener;
    private CursorHandle m_rightSelectionHandle;

    private int imeOptionsFromEnterKeyType(int i) {
        if (i == 1) {
            return 1073741824;
        }
        if (i == 3) {
            return 2;
        }
        if (i == 4) {
            return 4;
        }
        int i2 = 5;
        if (i == 5) {
            return 3;
        }
        if (i != 6) {
            i2 = 7;
            if (i != 7) {
                return 6;
            }
        }
        return i2;
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return true;
    }

    QtEditText(Context context, QtInputConnection.QtInputConnectionListener qtInputConnectionListener) {
        super(context);
        this.m_initialCapsMode = 0;
        this.m_imeOptions = 0;
        this.m_inputType = 1;
        this.m_optionsChanged = false;
        this.m_inputConnection = null;
        this.ImhHiddenText = 1;
        this.ImhSensitiveData = 2;
        this.ImhNoAutoUppercase = 4;
        this.ImhPreferNumbers = 8;
        this.ImhPreferUppercase = 16;
        this.ImhPreferLowercase = 32;
        this.ImhNoPredictiveText = 64;
        this.ImhDate = 128;
        this.ImhTime = 256;
        this.ImhPreferLatin = 512;
        this.ImhMultiLine = 1024;
        this.ImhDigitsOnly = 65536;
        this.ImhFormattedNumbersOnly = 131072;
        this.ImhUppercaseOnly = 262144;
        this.ImhLowercaseOnly = 524288;
        this.ImhDialableCharactersOnly = 1048576;
        this.ImhEmailCharactersOnly = 2097152;
        this.ImhUrlCharactersOnly = 4194304;
        this.ImhLatinOnly = 8388608;
        setFocusable(true);
        setFocusableInTouchMode(true);
        this.m_qtInputConnectionListener = qtInputConnectionListener;
        this.m_editPopupMenu = new EditPopupMenu(this);
    }

    private void setImeOptions(int i) {
        if (this.m_imeOptions == i) {
            return;
        }
        this.m_imeOptions = i;
        this.m_optionsChanged = true;
    }

    private void setInitialCapsMode(int i) {
        if (this.m_initialCapsMode == i) {
            return;
        }
        this.m_initialCapsMode = i;
        this.m_optionsChanged = true;
    }

    private void setInputType(int i) {
        if (this.m_inputType == i) {
            return;
        }
        this.m_inputType = i;
        this.m_optionsChanged = true;
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        int i;
        editorInfo.inputType = this.m_inputType;
        if (System.getenv("QT_ANDROID_NO_FULLSCREEN_KEYBOARD") != null) {
            i = this.m_imeOptions | 33554432;
        } else {
            i = this.m_imeOptions;
        }
        editorInfo.imeOptions = i;
        editorInfo.initialCapsMode = this.m_initialCapsMode;
        QtInputConnection qtInputConnection = new QtInputConnection(this, this.m_qtInputConnectionListener);
        this.m_inputConnection = qtInputConnection;
        ExtractedText extractedText = qtInputConnection.getExtractedText(new ExtractedTextRequest(), 0);
        if (extractedText != null) {
            editorInfo.initialSelStart = extractedText.selectionStart;
            editorInfo.initialSelEnd = extractedText.selectionEnd;
        }
        return this.m_inputConnection;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        QtInputConnection qtInputConnection = this.m_inputConnection;
        if (qtInputConnection != null) {
            qtInputConnection.restartImmInput();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    void setEditTextOptions(int i, int i2) {
        int i3;
        int i4;
        int iImeOptionsFromEnterKeyType = imeOptionsFromEnterKeyType(i);
        int i5 = 0;
        if ((196616 & i2) != 0) {
            i4 = (i2 & 131072) != 0 ? 12290 : 2;
            if ((i2 & 1) != 0) {
                i4 |= 16;
            }
        } else if ((1048576 & i2) != 0) {
            i4 = 3;
        } else {
            int i6 = i2 & 384;
            if (i6 != 0) {
                i4 = i6 != 384 ? (i2 & 128) != 0 ? 20 : 36 : 4;
            } else {
                if ((i2 & 1) != 0) {
                    i3 = 129;
                } else if ((i2 & 2) != 0 || isDisablePredictiveTextWorkaround(i2)) {
                    i3 = 145;
                } else if ((4194304 & i2) != 0) {
                    i3 = 17;
                    if (i == 0) {
                        iImeOptionsFromEnterKeyType = 2;
                    }
                } else {
                    i3 = (2097152 & i2) != 0 ? 33 : 1;
                }
                if ((i2 & 1024) != 0) {
                    i3 |= 131072;
                    iImeOptionsFromEnterKeyType = 6;
                }
                if ((i2 & 67) != 0) {
                    i3 |= 524288;
                }
                if ((262144 & i2) != 0) {
                    i4 = i3 | 4096;
                    i5 = 4096;
                } else if ((i2 & 524288) == 0 && (i2 & 4) == 0) {
                    i4 = i3 | 16384;
                    i5 = 16384;
                } else {
                    i4 = i3;
                }
            }
        }
        if (i == 0 && (i2 & 1024) != 0) {
            iImeOptionsFromEnterKeyType = 1073741824;
        }
        setInitialCapsMode(i5);
        setImeOptions(iImeOptionsFromEnterKeyType);
        setInputType(i4);
    }

    int getSelectionHandleBottom() {
        CursorHandle cursorHandle = this.m_cursorHandle;
        if (cursorHandle != null) {
            return cursorHandle.bottom();
        }
        CursorHandle cursorHandle2 = this.m_leftSelectionHandle;
        if (cursorHandle2 == null || this.m_rightSelectionHandle == null) {
            return 0;
        }
        return Math.max(cursorHandle2.bottom(), this.m_rightSelectionHandle.bottom());
    }

    int getSelectionHandleWidth() {
        CursorHandle cursorHandle = this.m_leftSelectionHandle;
        if (cursorHandle != null && this.m_rightSelectionHandle != null) {
            return Math.max(cursorHandle.width(), this.m_rightSelectionHandle.width());
        }
        CursorHandle cursorHandle2 = this.m_cursorHandle;
        if (cursorHandle2 != null) {
            return cursorHandle2.width();
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void updateHandles(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: org.qtproject.qt.android.QtEditText.updateHandles(int, int, int, int, int, int, int, int, boolean):void");
    }

    private boolean isDisablePredictiveTextWorkaround(int i) {
        return ((i & 64) == 0 || System.getenv("QT_ANDROID_ENABLE_WORKAROUND_TO_DISABLE_PREDICTIVE_TEXT") == null) ? false : true;
    }
}
