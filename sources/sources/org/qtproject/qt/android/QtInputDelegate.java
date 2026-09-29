package org.qtproject.qt.android;

import android.app.Activity;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ResultReceiver;
import android.text.method.MetaKeyKeyListener;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.inputmethod.InputMethodManager;
import java.util.List;
import org.qtproject.qt.android.QtInputConnection;
import org.qtproject.qt.android.QtLayout;

/* JADX INFO: loaded from: classes.dex */
class QtInputDelegate implements QtInputConnection.QtInputConnectionListener, QtInputInterface {
    private static final float KEYBOARD_TO_SCREEN_RATIO = 0.15f;
    private static final String TAG = "QtInputDelegate";
    private static int m_oldX;
    private static int m_oldY;
    private static Boolean m_tabletEventSupported;
    private InputMethodManager m_imm;
    private final KeyboardVisibilityListener m_keyboardVisibilityListener;
    private long m_metaState;
    private QtEditText m_currentEditText = null;
    private boolean m_keyboardTransitionInProgress = false;
    private boolean m_keyboardIsVisible = false;
    private boolean m_isKeyboardHidingAnimationOngoing = false;
    private long m_showHideTimeStamp = System.nanoTime();
    private int m_portraitKeyboardHeight = 0;
    private int m_landscapeKeyboardHeight = 0;
    private int m_probeKeyboardHeightDelayMs = 50;
    private int m_softInputMode = 0;
    private int m_lastChar = 0;
    private boolean m_backKeyPressedSent = false;

    interface KeyboardVisibilityListener {
        void onKeyboardVisibilityChange();
    }

    static native boolean dispatchGenericMotionEvent(MotionEvent motionEvent);

    static native boolean dispatchKeyEvent(KeyEvent keyEvent);

    static native void handleLocationChanged(int i, int i2, int i3);

    static native boolean isTabletEventSupported();

    static native void keyDown(int i, int i2, int i3, boolean z);

    static native void keyUp(int i, int i2, int i3, boolean z);

    static native void keyboardGeometryChanged(int i, int i2, int i3, int i4);

    static native void keyboardVisibilityChanged(boolean z);

    static native void longPress(int i, int i2, int i3);

    static native void mouseDown(int i, int i2, int i3, int i4);

    static native void mouseMove(int i, int i2, int i3, int i4);

    static native void mouseUp(int i, int i2, int i3, int i4);

    static native void mouseWheel(int i, int i2, int i3, float f, float f2);

    static native void tabletEvent(int i, int i2, long j, int i3, int i4, int i5, float f, float f2, float f3);

    static native void touchAdd(int i, int i2, int i3, boolean z, int i4, int i5, float f, float f2, float f3, float f4);

    static native void touchBegin(int i);

    static native void touchCancel(int i);

    static native void touchEnd(int i, int i2);

    @Override // org.qtproject.qt.android.QtInputInterface
    public QtInputConnection.QtInputConnectionListener getInputConnectionListener() {
        return this;
    }

    QtInputDelegate(KeyboardVisibilityListener keyboardVisibilityListener) {
        this.m_keyboardVisibilityListener = keyboardVisibilityListener;
    }

    void initInputMethodManager(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        this.m_imm = inputMethodManager;
        if (inputMethodManager == null) {
            Log.w(TAG, "getSystemService() returned a null InputMethodManager instance");
        }
        if (Build.VERSION.SDK_INT >= 30) {
            final View decorView = activity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener(this) { // from class: org.qtproject.qt.android.QtInputDelegate.1
                private boolean m_lastImeVisibility = false;
                final /* synthetic */ QtInputDelegate this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    WindowInsets rootWindowInsets = decorView.getRootWindowInsets();
                    if (rootWindowInsets == null) {
                        return;
                    }
                    boolean zIsVisible = rootWindowInsets.isVisible(WindowInsets.Type.ime());
                    if (this.m_lastImeVisibility != zIsVisible) {
                        this.m_lastImeVisibility = zIsVisible;
                        this.this$0.setKeyboardVisibility_internal(zIsVisible, System.nanoTime());
                    }
                    if (this.this$0.isKeyboardHidden()) {
                        return;
                    }
                    this.this$0.setKeyboardTransitionInProgress(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKeyboardTransitionInProgress(boolean z) {
        if (this.m_currentEditText == null || this.m_keyboardTransitionInProgress == z) {
            return;
        }
        this.m_keyboardTransitionInProgress = z;
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public void updateSelection(final int i, final int i2, final int i3, final int i4) {
        if (this.m_imm != null) {
            QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1933lambda$updateSelection$0$orgqtprojectqtandroidQtInputDelegate(i, i2, i3, i4);
                }
            });
        }
    }

    /* JADX INFO: renamed from: lambda$updateSelection$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1933lambda$updateSelection$0$orgqtprojectqtandroidQtInputDelegate(int i, int i2, int i3, int i4) {
        InputMethodManager inputMethodManager = this.m_imm;
        if (inputMethodManager != null) {
            inputMethodManager.updateSelection(this.m_currentEditText, i, i2, i3, i4);
        }
    }

    private void showKeyboard(final Activity activity, final int i, final int i2, final int i3, final int i4, final int i5, final int i6) {
        if (Build.VERSION.SDK_INT >= 30) {
            Window window = activity.getWindow();
            final View decorView = window.getDecorView();
            decorView.setWindowInsetsAnimationCallback(new WindowInsetsAnimation.Callback(this, 1) { // from class: org.qtproject.qt.android.QtInputDelegate.2
                final /* synthetic */ QtInputDelegate this$0;

                @Override // android.view.WindowInsetsAnimation.Callback
                public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
                    return windowInsets;
                }

                {
                    this.this$0 = this;
                }

                @Override // android.view.WindowInsetsAnimation.Callback
                public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                    decorView.setWindowInsetsAnimationCallback(null);
                    if ((windowInsetsAnimation.getTypeMask() & WindowInsets.Type.ime()) == 0) {
                        QtNativeInputConnection.updateCursorPosition();
                        if (this.this$0.m_softInputMode == 0) {
                            this.this$0.probeForKeyboardHeight(activity, i, i2, i3, i4, i5, i6);
                        }
                    }
                }
            });
            window.getInsetsController().show(WindowInsets.Type.ime());
            return;
        }
        InputMethodManager inputMethodManager = this.m_imm;
        if (inputMethodManager == null) {
            return;
        }
        inputMethodManager.showSoftInput(this.m_currentEditText, 0, new ResultReceiver(this, new Handler(Looper.getMainLooper())) { // from class: org.qtproject.qt.android.QtInputDelegate.3
            final /* synthetic */ QtInputDelegate this$0;

            {
                this.this$0 = this;
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i7, Bundle bundle) {
                if (i7 != 0) {
                    if (i7 != 1) {
                        if (i7 == 2) {
                            QtNativeInputConnection.updateCursorPosition();
                        } else if (i7 != 3) {
                            return;
                        }
                    }
                    this.this$0.setKeyboardVisibility(false, System.nanoTime());
                    return;
                }
                this.this$0.setKeyboardVisibility(true, System.nanoTime());
                if (this.this$0.m_softInputMode == 0) {
                    this.this$0.probeForKeyboardHeight(activity, i, i2, i3, i4, i5, i6);
                }
            }
        });
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public void showSoftwareKeyboard(final Activity activity, final int i, final int i2, final int i3, final int i4, final int i5, final int i6) {
        if (this.m_imm == null) {
            return;
        }
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1930lambda$showSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate(activity, i4, i6, i5, i3, i, i2);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$showSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1930lambda$showSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate(final Activity activity, final int i, final int i2, final int i3, final int i4, final int i5, final int i6) {
        if (this.m_imm == null || this.m_currentEditText == null || updateSoftInputMode(activity, i)) {
            return;
        }
        this.m_currentEditText.setEditTextOptions(i2, i3);
        this.m_currentEditText.setLayoutParams(new QtLayout.LayoutParams(i4, i, i5, i6));
        this.m_currentEditText.requestFocus();
        this.m_currentEditText.postDelayed(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1931lambda$showSoftwareKeyboard$1$orgqtprojectqtandroidQtInputDelegate(activity, i5, i6, i4, i, i3, i2);
            }
        }, 15L);
    }

    /* JADX INFO: renamed from: lambda$showSoftwareKeyboard$1$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1931lambda$showSoftwareKeyboard$1$orgqtprojectqtandroidQtInputDelegate(Activity activity, int i, int i2, int i3, int i4, int i5, int i6) {
        showKeyboard(activity, i, i2, i3, i4, i5, i6);
        if (this.m_currentEditText.m_optionsChanged) {
            this.m_imm.restartInput(this.m_currentEditText);
            this.m_currentEditText.m_optionsChanged = false;
        }
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public int getSelectionHandleWidth() {
        QtEditText qtEditText = this.m_currentEditText;
        if (qtEditText == null) {
            return 0;
        }
        return qtEditText.getSelectionHandleWidth();
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public void updateHandles(final int i, final int i2, final int i3, final int i4, final int i5, final int i6, final int i7, final int i8, final boolean z) {
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1932lambda$updateHandles$0$orgqtprojectqtandroidQtInputDelegate(i, i2, i3, i4, i5, i6, i7, i8, z);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$updateHandles$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1932lambda$updateHandles$0$orgqtprojectqtandroidQtInputDelegate(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        QtEditText qtEditText = this.m_currentEditText;
        if (qtEditText != null) {
            qtEditText.updateHandles(i, i2, i3, i4, i5, i6, i7, i8, z);
        }
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public void resetSoftwareKeyboard() {
        QtEditText qtEditText;
        if (this.m_imm == null || (qtEditText = this.m_currentEditText) == null) {
            return;
        }
        qtEditText.postDelayed(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1929lambda$resetSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate();
            }
        }, 5L);
    }

    /* JADX INFO: renamed from: lambda$resetSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1929lambda$resetSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate() {
        QtEditText qtEditText;
        InputMethodManager inputMethodManager = this.m_imm;
        if (inputMethodManager == null || (qtEditText = this.m_currentEditText) == null) {
            return;
        }
        inputMethodManager.restartInput(qtEditText);
        this.m_currentEditText.m_optionsChanged = false;
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public void hideSoftwareKeyboard() {
        if (this.m_imm == null || this.m_currentEditText == null) {
            return;
        }
        this.m_isKeyboardHidingAnimationOngoing = true;
        QtNative.runAction(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1927lambda$hideSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate();
            }
        });
    }

    /* JADX INFO: renamed from: lambda$hideSoftwareKeyboard$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1927lambda$hideSoftwareKeyboard$0$orgqtprojectqtandroidQtInputDelegate() {
        if (this.m_imm == null || this.m_currentEditText == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            Activity activity = QtNative.activity();
            if (activity == null) {
                Log.w(TAG, "hideSoftwareKeyboard: The activity reference is null");
                return;
            } else {
                activity.getWindow().getInsetsController().hide(WindowInsets.Type.ime());
                return;
            }
        }
        this.m_imm.hideSoftInputFromWindow(this.m_currentEditText.getWindowToken(), 0, new ResultReceiver(new Handler(Looper.getMainLooper())) { // from class: org.qtproject.qt.android.QtInputDelegate.4
            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                return;
                            }
                        }
                    }
                    QtInputDelegate.this.setKeyboardVisibility(false, System.nanoTime());
                    return;
                }
                QtInputDelegate.this.setKeyboardVisibility(true, System.nanoTime());
            }
        });
    }

    @Override // org.qtproject.qt.android.QtInputInterface
    public boolean isSoftwareKeyboardVisible() {
        return isKeyboardVisible() && !this.m_isKeyboardHidingAnimationOngoing;
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public boolean keyboardTransitionInProgress() {
        return this.m_keyboardTransitionInProgress;
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public boolean isKeyboardHidden() {
        Activity activity = QtNative.activity();
        if (activity == null) {
            Log.w(TAG, "isKeyboardHidden: The activity reference is null");
            return true;
        }
        if (Build.VERSION.SDK_INT < 30) {
            Rect rect = new Rect();
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            DisplayMetrics displayMetrics = new DisplayMetrics();
            QtDisplayManager.getDisplay(activity).getMetrics(displayMetrics);
            int i = displayMetrics.heightPixels;
            return ((float) (i - rect.bottom)) < ((float) i) * KEYBOARD_TO_SCREEN_RATIO;
        }
        return !this.m_keyboardIsVisible;
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public void onSetClosing(boolean z) {
        if (z) {
            return;
        }
        setKeyboardVisibility(true, System.nanoTime());
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public void onHideKeyboardRunnableDone(boolean z, long j) {
        setKeyboardVisibility(z, j);
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public void onSendKeyEventDefaultCase() {
        hideSoftwareKeyboard();
    }

    @Override // org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener
    public void onEditTextChanged(QtEditText qtEditText) {
        setFocusedView(qtEditText);
    }

    boolean isKeyboardVisible() {
        return this.m_keyboardIsVisible;
    }

    void setSoftInputMode(int i) {
        this.m_softInputMode = i;
    }

    QtEditText getCurrentQtEditText() {
        return this.m_currentEditText;
    }

    private void keyboardVisibilityUpdated(boolean z) {
        this.m_isKeyboardHidingAnimationOngoing = false;
        keyboardVisibilityChanged(z);
    }

    void setKeyboardVisibility(boolean z, long j) {
        if (Build.VERSION.SDK_INT < 30) {
            setKeyboardVisibility_internal(z, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setKeyboardVisibility_internal(boolean z, long j) {
        if (this.m_showHideTimeStamp > j) {
            return;
        }
        this.m_showHideTimeStamp = j;
        if (this.m_keyboardIsVisible == z) {
            return;
        }
        this.m_keyboardIsVisible = z;
        keyboardVisibilityUpdated(z);
        setKeyboardTransitionInProgress(z);
        if (z) {
            return;
        }
        this.m_keyboardVisibilityListener.onKeyboardVisibilityChange();
        QtEditText qtEditText = this.m_currentEditText;
        if (qtEditText != null) {
            qtEditText.clearFocus();
        }
    }

    void setFocusedView(QtEditText qtEditText) {
        setKeyboardTransitionInProgress(false);
        this.m_currentEditText = qtEditText;
    }

    private boolean updateSoftInputMode(Activity activity, int i) {
        int i2;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        QtDisplayManager.getDisplay(activity).getMetrics(displayMetrics);
        if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
            i2 = this.m_portraitKeyboardHeight;
            if (i2 == 0) {
                i2 = (displayMetrics.heightPixels * 3) / 5;
            }
        } else {
            i2 = this.m_landscapeKeyboardHeight;
            if (i2 == 0) {
                i2 = displayMetrics.heightPixels / 3;
            }
        }
        if (this.m_softInputMode != 0) {
            activity.getWindow().setSoftInputMode(this.m_softInputMode);
            return (this.m_softInputMode & 2) != 0;
        }
        if (i > i2) {
            activity.getWindow().setSoftInputMode(17);
        } else {
            activity.getWindow().setSoftInputMode(33);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void probeForKeyboardHeight(final Activity activity, final int i, final int i2, final int i3, final int i4, final int i5, final int i6) {
        QtEditText qtEditText = this.m_currentEditText;
        if (qtEditText == null) {
            Log.w(TAG, "probeForKeyboardHeight: null QtEditText");
        } else {
            qtEditText.postDelayed(new Runnable() { // from class: org.qtproject.qt.android.QtInputDelegate$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m1928lambda$probeForKeyboardHeight$0$orgqtprojectqtandroidQtInputDelegate(activity, i, i2, i3, i4, i5, i6);
                }
            }, this.m_probeKeyboardHeightDelayMs);
        }
    }

    /* JADX INFO: renamed from: lambda$probeForKeyboardHeight$0$org-qtproject-qt-android-QtInputDelegate, reason: not valid java name */
    /* synthetic */ void m1928lambda$probeForKeyboardHeight$0$orgqtprojectqtandroidQtInputDelegate(Activity activity, int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.m_keyboardIsVisible) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            QtDisplayManager.getDisplay(activity).getMetrics(displayMetrics);
            Rect rect = new Rect();
            activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
            if (displayMetrics.heightPixels != rect.bottom) {
                if (displayMetrics.widthPixels > displayMetrics.heightPixels) {
                    if (this.m_landscapeKeyboardHeight != rect.bottom) {
                        this.m_landscapeKeyboardHeight = rect.bottom;
                        showSoftwareKeyboard(activity, i, i2, i3, i4, i5, i6);
                    }
                } else if (this.m_portraitKeyboardHeight != rect.bottom) {
                    this.m_portraitKeyboardHeight = rect.bottom;
                    showSoftwareKeyboard(activity, i, i2, i3, i4, i5, i6);
                }
            } else {
                int i7 = this.m_probeKeyboardHeightDelayMs;
                if (i7 < 1000) {
                    this.m_probeKeyboardHeightDelayMs = i7 * 2;
                }
            }
        }
    }

    boolean onKeyDown(int i, KeyEvent keyEvent) {
        long jHandleKeyDown = MetaKeyKeyListener.handleKeyDown(this.m_metaState, i, keyEvent);
        this.m_metaState = jHandleKeyDown;
        int unicodeChar = keyEvent.getUnicodeChar(MetaKeyKeyListener.getMetaState(jHandleKeyDown) | keyEvent.getMetaState());
        this.m_metaState = MetaKeyKeyListener.adjustMetaAfterKeypress(this.m_metaState);
        int deadChar = (Integer.MIN_VALUE & unicodeChar) != 0 ? KeyEvent.getDeadChar(this.m_lastChar, Integer.MAX_VALUE & unicodeChar) : unicodeChar;
        if ((i == 24 || i == 25 || i == 91) && System.getenv("QT_ANDROID_VOLUME_KEYS") == null) {
            return false;
        }
        this.m_lastChar = unicodeChar;
        if (i == 4) {
            boolean zIsKeyboardVisible = isKeyboardVisible();
            this.m_backKeyPressedSent = !zIsKeyboardVisible;
            if (zIsKeyboardVisible) {
                return true;
            }
        }
        keyDown(i, deadChar, keyEvent.getMetaState(), keyEvent.getRepeatCount() > 0);
        return true;
    }

    boolean onKeyUp(int i, KeyEvent keyEvent) {
        if ((i == 24 || i == 25 || i == 91) && System.getenv("QT_ANDROID_VOLUME_KEYS") == null) {
            return false;
        }
        if (i == 4 && !this.m_backKeyPressedSent) {
            hideSoftwareKeyboard();
            setKeyboardVisibility(false, System.nanoTime());
            return true;
        }
        this.m_metaState = MetaKeyKeyListener.handleKeyUp(this.m_metaState, i, keyEvent);
        keyUp(i, keyEvent.getUnicodeChar(), keyEvent.getMetaState(), keyEvent.getRepeatCount() > 0);
        return true;
    }

    boolean handleDispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 2 && keyEvent.getCharacters() != null) {
            if (keyEvent.getCharacters().length() == 1 && keyEvent.getKeyCode() == 0) {
                keyDown(0, keyEvent.getCharacters().charAt(0), keyEvent.getMetaState(), keyEvent.getRepeatCount() > 0);
                keyUp(0, keyEvent.getCharacters().charAt(0), keyEvent.getMetaState(), keyEvent.getRepeatCount() > 0);
            }
        }
        return dispatchKeyEvent(keyEvent);
    }

    boolean handleDispatchGenericMotionEvent(MotionEvent motionEvent) {
        return dispatchGenericMotionEvent(motionEvent);
    }

    private static int getAction(int i, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 2) {
            int historySize = motionEvent.getHistorySize();
            if (historySize <= 0) {
                return 1;
            }
            float x = motionEvent.getX(i);
            float y = motionEvent.getY(i);
            for (int i2 = 0; i2 < historySize; i2++) {
                if (motionEvent.getHistoricalX(i, i2) != x || motionEvent.getHistoricalY(i, i2) != y) {
                    return 1;
                }
            }
            return 2;
        }
        if (actionMasked == 0 || (actionMasked == 5 && i == motionEvent.getActionIndex())) {
            return 0;
        }
        if (actionMasked != 1) {
            return (actionMasked == 6 && i == motionEvent.getActionIndex()) ? 3 : 2;
        }
        return 3;
    }

    static void sendTouchEvent(MotionEvent motionEvent, int i) {
        if (m_tabletEventSupported == null) {
            m_tabletEventSupported = Boolean.valueOf(isTabletEventSupported());
        }
        int toolType = motionEvent.getToolType(0);
        int i2 = toolType != 2 ? toolType != 4 ? 0 : 3 : 1;
        if (motionEvent.getToolType(0) == 3) {
            sendMouseEvent(motionEvent, i);
            return;
        }
        if (m_tabletEventSupported.booleanValue() && i2 != 0) {
            tabletEvent(i, motionEvent.getDeviceId(), motionEvent.getEventTime(), motionEvent.getActionMasked(), i2, motionEvent.getButtonState(), motionEvent.getX(), motionEvent.getY(), motionEvent.getPressure());
            return;
        }
        touchBegin(i);
        int i3 = 0;
        while (i3 < motionEvent.getPointerCount()) {
            touchAdd(i, motionEvent.getPointerId(i3), getAction(i3, motionEvent), i3 == 0, (int) motionEvent.getX(i3), (int) motionEvent.getY(i3), motionEvent.getTouchMajor(i3), motionEvent.getTouchMinor(i3), motionEvent.getOrientation(i3), motionEvent.getPressure(i3));
            i3++;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            touchEnd(i, 0);
            return;
        }
        if (action == 1) {
            touchEnd(i, 2);
        } else if (action == 3) {
            touchCancel(i);
        } else {
            touchEnd(i, 1);
        }
    }

    static void sendTrackballEvent(MotionEvent motionEvent, int i) {
        sendMouseEvent(motionEvent, i);
    }

    static boolean sendGenericMotionEvent(MotionEvent motionEvent, int i) {
        boolean z = (motionEvent.getSource() & 2) == 2;
        if ((motionEvent.getAction() & 15) == 0 || !z) {
            return false;
        }
        return sendMouseEvent(motionEvent, i);
    }

    static boolean sendMouseEvent(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            mouseDown(i, (int) motionEvent.getX(), (int) motionEvent.getY(), motionEvent.getButtonState());
            m_oldX = (int) motionEvent.getX();
            m_oldY = (int) motionEvent.getY();
        } else if (actionMasked == 1) {
            mouseUp(i, (int) motionEvent.getX(), (int) motionEvent.getY(), motionEvent.getButtonState());
        } else if (actionMasked == 2 || actionMasked == 7) {
            if (motionEvent.getToolType(0) == 3) {
                mouseMove(i, (int) motionEvent.getX(), (int) motionEvent.getY(), motionEvent.getButtonState());
            } else {
                int x = (int) (motionEvent.getX() - m_oldX);
                int y = (int) (motionEvent.getY() - m_oldY);
                if (Math.abs(x) > 5 || Math.abs(y) > 5) {
                    mouseMove(i, (int) motionEvent.getX(), (int) motionEvent.getY(), motionEvent.getButtonState());
                    m_oldX = (int) motionEvent.getX();
                    m_oldY = (int) motionEvent.getY();
                }
            }
        } else {
            if (actionMasked != 8) {
                return false;
            }
            mouseWheel(i, (int) motionEvent.getX(), (int) motionEvent.getY(), motionEvent.getAxisValue(10), motionEvent.getAxisValue(9));
        }
        return true;
    }
}
