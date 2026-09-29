###### Class org.qtproject.qt.android.QtInputConnection (org.qtproject.qt.android.QtInputConnection)
.class Lorg/qtproject/qt/android/QtInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "QtInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;,
        Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;
    }
.end annotation


# static fields
.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final KEYBOARD_CHECK_DELAY_MS:I = 0x64

.field private static final QtTAG:Ljava/lang/String; = "QtInputConnection"


# instance fields
.field private m_duringBatchEdit:Z

.field private m_extractedRequestToken:I

.field private final m_imm:Landroid/view/inputmethod/InputMethodManager;

.field private m_isComposing:Z

.field private final m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

.field private final m_view:Lorg/qtproject/qt/android/QtEditText;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtEditText;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
    .registers 4

    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_extractedRequestToken:I

    .line 71
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_isComposing:Z

    .line 72
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    .line 123
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    .line 124
    invoke-virtual {p1}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    .line 126
    iput-object p2, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;
    .registers 1

    .line 57
    iget-object p0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    return-object p0
.end method

.method static synthetic access$100(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtEditText;
    .registers 1

    .line 57
    iget-object p0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    return-object p0
.end method

.method private setClosing(Z)V
    .registers 5

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1d

    if-eqz p1, :cond_15

    .line 114
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    new-instance v0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;

    invoke-direct {v0, p0}, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;-><init>(Lorg/qtproject/qt/android/QtInputConnection;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 115
    :cond_15
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    .line 116
    invoke-interface {p1, v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onSetClosing(Z)V

    :cond_1d
    return-void
.end method

.method private updateFullScreenExtractedText()V
    .registers 5

    .line 140
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->fullscreenMode()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_27

    .line 143
    :cond_7
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    if-nez v0, :cond_27

    iget v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_extractedRequestToken:I

    if-nez v0, :cond_10

    goto :goto_27

    .line 146
    :cond_10
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 147
    iget v1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_extractedRequestToken:I

    iput v1, v0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    const/4 v1, 0x1

    .line 148
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/QtInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    iget v3, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_extractedRequestToken:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 2

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    .line 157
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->beginBatchEdit()Z

    move-result v0

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 185
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    .line 186
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitCompletion(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 192
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->commitText(Ljava/lang/String;I)Z

    move-result p1

    .line 194
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    return p1
.end method

.method public commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 362
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public deleteSurroundingText(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 202
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->deleteSurroundingText(II)Z

    move-result p1

    .line 203
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    return p1
.end method

.method public endBatchEdit()Z
    .registers 4

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 173
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->endBatchEdit()Z

    move-result v1

    .line 174
    iget-boolean v2, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    if-eqz v2, :cond_11

    .line 175
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    .line 176
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    :cond_11
    return v1
.end method

.method public finishComposingText()Z
    .registers 2

    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_isComposing:Z

    .line 213
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    .line 214
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->finishComposingText()Z

    move-result v0

    return v0
.end method

.method public getCursorCapsMode(I)I
    .registers 2

    .line 220
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getCursorCapsMode(I)I

    move-result p1

    return p1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 6

    .line 226
    iget v0, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-static {v0, v1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getExtractedText(III)Lorg/qtproject/qt/android/QtExtractedText;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 232
    :cond_c
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 233
    iget v2, v0, Lorg/qtproject/qt/android/QtExtractedText;->partialEndOffset:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 234
    iget v2, v0, Lorg/qtproject/qt/android/QtExtractedText;->partialStartOffset:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 235
    iget v2, v0, Lorg/qtproject/qt/android/QtExtractedText;->selectionEnd:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 236
    iget v2, v0, Lorg/qtproject/qt/android/QtExtractedText;->selectionStart:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 237
    iget v2, v0, Lorg/qtproject/qt/android/QtExtractedText;->startOffset:I

    iput v2, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 238
    iget-object v0, v0, Lorg/qtproject/qt/android/QtExtractedText;->text:Ljava/lang/String;

    iput-object v0, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_30

    .line 241
    iget p1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iput p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_extractedRequestToken:I

    :cond_30
    return-object v1
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 2

    .line 248
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getSelectedText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 3

    .line 254
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextAfterCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 3

    .line 260
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->getTextBeforeCursor(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performContextMenuAction(I)Z
    .registers 4

    const v0, 0x102002a

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2f

    packed-switch p1, :pswitch_data_30

    .line 293
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->performContextMenuAction(I)Z

    move-result p1

    return p1

    .line 278
    :pswitch_e
    iget-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_15

    .line 279
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_15
    return v1

    .line 272
    :pswitch_16
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copyURL()Z

    move-result p1

    return p1

    .line 276
    :pswitch_1b
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->paste()Z

    move-result p1

    return p1

    .line 270
    :pswitch_20
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->copy()Z

    move-result p1

    return p1

    .line 274
    :pswitch_25
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->cut()Z

    move-result p1

    return p1

    .line 268
    :pswitch_2a
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->selectAll()Z

    move-result p1

    return p1

    :cond_2f
    return v1

    :pswitch_data_30
    .packed-switch 0x102001f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_16
        :pswitch_e
    .end packed-switch
.end method

.method public replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 6

    const/4 p5, 0x0

    .line 369
    invoke-direct {p0, p5}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 370
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    .line 371
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lorg/qtproject/qt/android/QtNativeInputConnection;->replaceText(IILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public reportFullscreenMode(Z)Z
    .registers 2

    .line 163
    invoke-static {p1}, Lorg/qtproject/qt/android/QtNativeInputConnection;->reportFullscreenMode(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method restartImmInput()V
    .registers 3

    .line 131
    invoke-static {}, Lorg/qtproject/qt/android/QtNativeInputConnection;->fullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_duringBatchEdit:Z

    if-nez v0, :cond_13

    .line 132
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_13

    .line 133
    iget-object v1, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 12

    .line 302
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->finishComposingText()Z

    .line 303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_64

    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_view:Lorg/qtproject/qt/android/QtEditText;

    if-eqz v0, :cond_64

    .line 305
    iget v0, v0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_44

    const/4 v1, 0x7

    if-eq v0, v1, :cond_27

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_23

    .line 326
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    if-eqz v0, :cond_64

    .line 327
    invoke-interface {v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onSendKeyEventDefaultCase()V

    goto :goto_64

    .line 323
    :cond_23
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    goto :goto_64

    .line 315
    :cond_27
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    const/4 v9, 0x1

    const/16 v7, 0x3d

    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 321
    invoke-super {p0, v1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 307
    :cond_44
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    .line 308
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 309
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v8

    const/16 v6, 0x3d

    invoke-direct/range {v0 .. v8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 313
    invoke-super {p0, v0}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 331
    :cond_64
    :goto_64
    invoke-super {p0, p1}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 377
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 378
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    .line 379
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 355
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtInputConnection;->setComposingRegion(II)Z

    move-result p1

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_isComposing:Z

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setComposingText(Ljava/lang/String;I)Z

    move-result p1

    .line 340
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    return p1
.end method

.method public setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z
    .registers 4

    .line 348
    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/QtInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public setSelection(II)Z
    .registers 4

    const/4 v0, 0x0

    .line 385
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtInputConnection;->setClosing(Z)V

    .line 386
    iget-boolean v0, p0, Lorg/qtproject/qt/android/QtInputConnection;->m_isComposing:Z

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 388
    :cond_a
    invoke-static {p1, p2}, Lorg/qtproject/qt/android/QtNativeInputConnection;->setSelection(II)Z

    move-result p1

    .line 389
    invoke-direct {p0}, Lorg/qtproject/qt/android/QtInputConnection;->updateFullScreenExtractedText()V

    return p1
.end method

###### Class org.qtproject.qt.android.QtInputConnection.HideKeyboardRunnable (org.qtproject.qt.android.QtInputConnection$HideKeyboardRunnable)
.class Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;
.super Ljava/lang/Object;
.source "QtInputConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideKeyboardRunnable"
.end annotation


# instance fields
.field private m_numberOfAttempts:I

.field final synthetic this$0:Lorg/qtproject/qt/android/QtInputConnection;


# direct methods
.method constructor <init>(Lorg/qtproject/qt/android/QtInputConnection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 76
    iput p1, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->m_numberOfAttempts:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 81
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    move-result-object v0

    if-nez v0, :cond_10

    .line 82
    const-string v0, "QtInputConnection"

    const-string v1, "HideKeyboardRunnable: QtInputConnectionListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_10
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->keyboardTransitionInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->m_numberOfAttempts:I

    if-lez v0, :cond_30

    add-int/lit8 v0, v0, -0x1

    .line 88
    iput v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->m_numberOfAttempts:I

    .line 89
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$100(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtEditText;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lorg/qtproject/qt/android/QtEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 93
    :cond_30
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->isKeyboardHidden()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 94
    iget-object v0, p0, Lorg/qtproject/qt/android/QtInputConnection$HideKeyboardRunnable;->this$0:Lorg/qtproject/qt/android/QtInputConnection;

    invoke-static {v0}, Lorg/qtproject/qt/android/QtInputConnection;->access$000(Lorg/qtproject/qt/android/QtInputConnection;)Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;->onHideKeyboardRunnableDone(ZJ)V

    :cond_4a
    return-void
.end method

###### Class org.qtproject.qt.android.QtInputConnection.QtInputConnectionListener (org.qtproject.qt.android.QtInputConnection$QtInputConnectionListener)
.class interface abstract Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;
.super Ljava/lang/Object;
.source "QtInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/QtInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "QtInputConnectionListener"
.end annotation


# virtual methods
.method public abstract isKeyboardHidden()Z
.end method

.method public abstract keyboardTransitionInProgress()Z
.end method

.method public abstract onEditTextChanged(Lorg/qtproject/qt/android/QtEditText;)V
.end method

.method public abstract onHideKeyboardRunnableDone(ZJ)V
.end method

.method public abstract onSendKeyEventDefaultCase()V
.end method

.method public abstract onSetClosing(Z)V
.end method
