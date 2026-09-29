###### Class org.qtproject.qt.android.QtEditText (org.qtproject.qt.android.QtEditText)
.class Lorg/qtproject/qt/android/QtEditText;
.super Landroid/view/View;
.source "QtEditText.java"


# static fields
.field static final CursorHandleNotShown:I = 0x0

.field static final CursorHandleShowEdit:I = 0x100

.field static final CursorHandleShowNormal:I = 0x1

.field static final CursorHandleShowSelection:I = 0x2


# instance fields
.field private final ImhDate:I

.field private final ImhDialableCharactersOnly:I

.field private final ImhDigitsOnly:I

.field private final ImhEmailCharactersOnly:I

.field private final ImhFormattedNumbersOnly:I

.field private final ImhHiddenText:I

.field private final ImhLatinOnly:I

.field private final ImhLowercaseOnly:I

.field private final ImhMultiLine:I

.field private final ImhNoAutoUppercase:I

.field private final ImhNoPredictiveText:I

.field private final ImhPreferLatin:I

.field private final ImhPreferLowercase:I

.field private final ImhPreferNumbers:I

.field private final ImhPreferUppercase:I

.field private final ImhSensitiveData:I

.field private final ImhTime:I

.field private final ImhUppercaseOnly:I

.field private final ImhUrlCharactersOnly:I

.field private m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

.field private final m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

.field m_imeOptions:I

.field m_initialCapsMode:I

.field m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

.field m_inputType:I

.field private m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

.field m_optionsChanged:Z

.field private final m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

.field private m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V
    .registers 4

    .line 73
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    .line 26
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    .line 28
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    .line 32
    iput v0, p0, Lorg/qtproject/qt/android/QtEditText;->ImhHiddenText:I

    const/4 p1, 0x2

    .line 33
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhSensitiveData:I

    const/4 p1, 0x4

    .line 34
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhNoAutoUppercase:I

    const/16 p1, 0x8

    .line 35
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferNumbers:I

    const/16 p1, 0x10

    .line 36
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferUppercase:I

    const/16 p1, 0x20

    .line 37
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferLowercase:I

    const/16 p1, 0x40

    .line 38
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhNoPredictiveText:I

    const/16 p1, 0x80

    .line 40
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDate:I

    const/16 p1, 0x100

    .line 41
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhTime:I

    const/16 p1, 0x200

    .line 43
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhPreferLatin:I

    const/16 p1, 0x400

    .line 45
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhMultiLine:I

    const/high16 p1, 0x10000

    .line 47
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDigitsOnly:I

    const/high16 p1, 0x20000

    .line 48
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhFormattedNumbersOnly:I

    const/high16 p1, 0x40000

    .line 49
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhUppercaseOnly:I

    const/high16 p1, 0x80000

    .line 50
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhLowercaseOnly:I

    const/high16 p1, 0x100000

    .line 51
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhDialableCharactersOnly:I

    const/high16 p1, 0x200000

    .line 52
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhEmailCharactersOnly:I

    const/high16 p1, 0x400000

    .line 53
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhUrlCharactersOnly:I

    const/high16 p1, 0x800000

    .line 54
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->ImhLatinOnly:I

    .line 74
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusable(Z)V

    .line 75
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setFocusableInTouchMode(Z)V

    .line 76
    iput-object p2, p0, Lorg/qtproject/qt/android/QtEditText;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    .line 77
    new-instance p1, Lorg/qtproject/qt/android/EditPopupMenu;

    invoke-direct {p1, p0}, Lorg/qtproject/qt/android/EditPopupMenu;-><init>(Lorg/qtproject/qt/android/QtEditText;)V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    return-void
.end method

.method private imeOptionsFromEnterKeyType(I)I
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v1, 0x4

    if-eq p1, v1, :cond_15

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    const/4 v0, 0x6

    if-eq p1, v0, :cond_13

    const/4 v1, 0x7

    if-eq p1, v1, :cond_13

    return v0

    :cond_13
    return v1

    :cond_14
    return v0

    :cond_15
    return v1

    :cond_16
    const/4 p1, 0x2

    return p1

    :cond_18
    const/high16 p1, 0x40000000    # 2.0f

    return p1
.end method

.method private isDisablePredictiveTextWorkaround(I)Z
    .registers 2

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_e

    .line 332
    const-string p1, "QT_ANDROID_ENABLE_WORKAROUND_TO_DISABLE_PREDICTIVE_TEXT"

    .line 333
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method private setImeOptions(I)V
    .registers 3

    .line 82
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    if-ne v0, p1, :cond_5

    return-void

    .line 84
    :cond_5
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method

.method private setInitialCapsMode(I)V
    .registers 3

    .line 90
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 92
    :cond_5
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method

.method private setInputType(I)V
    .registers 3

    .line 99
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 101
    :cond_5
    iput p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_optionsChanged:Z

    return-void
.end method


# virtual methods
.method getSelectionHandleBottom()I
    .registers 3

    .line 247
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_9

    .line 248
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v0

    return v0

    .line 249
    :cond_9
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v1, :cond_20

    .line 250
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorHandle;->bottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method getSelectionHandleWidth()I
    .registers 3

    .line 257
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v1, :cond_17

    .line 258
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v1}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 259
    :cond_17
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_20

    .line 260
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->width()I

    move-result v0

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckIsTextEditor()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    .line 108
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputType:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 109
    const-string v0, "QT_ANDROID_NO_FULLSCREEN_KEYBOARD"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 110
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    goto :goto_14

    .line 111
    :cond_12
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_imeOptions:I

    :goto_14
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 112
    iget v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_initialCapsMode:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 113
    new-instance v0, Lorg/qtproject/qt/android/QtInputConnection;

    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_qtInputConnectionListener:Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;

    invoke-direct {v0, p0, v1}, Lorg/qtproject/qt/android/QtInputConnection;-><init>(Lorg/qtproject/qt/android/QtEditText;Lorg/qtproject/qt/android/QtInputConnection$QtInputConnectionListener;)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    .line 115
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/qtproject/qt/android/QtInputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 117
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 118
    iget v0, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 121
    :cond_37
    iget-object p1, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 133
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_inputConnection:Lorg/qtproject/qt/android/QtInputConnection;

    if-eqz v0, :cond_7

    .line 134
    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtInputConnection;->restartImmInput()V

    .line 136
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method setEditTextOptions(II)V
    .registers 8

    .line 150
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/QtEditText;->imeOptionsFromEnterKeyType(I)I

    move-result v0

    const v1, 0x30008

    and-int/2addr v1, p2

    const/high16 v2, 0x20000

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_1c

    and-int v1, p2, v2

    if-eqz v1, :cond_14

    const/16 v3, 0x3002

    :cond_14
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_86

    or-int/lit8 v3, v3, 0x10

    goto/16 :goto_86

    :cond_1c
    const/high16 v1, 0x100000

    and-int/2addr v1, p2

    if-eqz v1, :cond_24

    const/4 v3, 0x3

    goto/16 :goto_86

    :cond_24
    and-int/lit16 v1, p2, 0x180

    if-eqz v1, :cond_38

    const/16 v2, 0x180

    if-eq v1, v2, :cond_36

    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_33

    const/16 v3, 0x14

    goto :goto_86

    :cond_33
    const/16 v3, 0x24

    goto :goto_86

    :cond_36
    const/4 v3, 0x4

    goto :goto_86

    :cond_38
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_3f

    const/16 v1, 0x81

    goto :goto_61

    :cond_3f
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_5f

    .line 176
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/QtEditText;->isDisablePredictiveTextWorkaround(I)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_5f

    :cond_4a
    const/high16 v1, 0x400000

    and-int/2addr v1, p2

    if-eqz v1, :cond_55

    const/16 v1, 0x11

    if-nez p1, :cond_61

    move v0, v3

    goto :goto_61

    :cond_55
    const/high16 v1, 0x200000

    and-int/2addr v1, p2

    if-eqz v1, :cond_5d

    const/16 v1, 0x21

    goto :goto_61

    :cond_5d
    const/4 v1, 0x1

    goto :goto_61

    :cond_5f
    :goto_5f
    const/16 v1, 0x91

    :cond_61
    :goto_61
    and-int/lit16 v3, p2, 0x400

    if-eqz v3, :cond_67

    or-int/2addr v1, v2

    const/4 v0, 0x6

    :cond_67
    and-int/lit8 v2, p2, 0x43

    const/high16 v3, 0x80000

    if-eqz v2, :cond_6e

    or-int/2addr v1, v3

    :cond_6e
    const/high16 v2, 0x40000

    and-int/2addr v2, p2

    if-eqz v2, :cond_78

    or-int/lit16 v3, v1, 0x1000

    const/16 v4, 0x1000

    goto :goto_86

    :cond_78
    and-int v2, p2, v3

    if-nez v2, :cond_85

    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_85

    or-int/lit16 v3, v1, 0x4000

    const/16 v4, 0x4000

    goto :goto_86

    :cond_85
    move v3, v1

    :cond_86
    :goto_86
    if-nez p1, :cond_8e

    and-int/lit16 p1, p2, 0x400

    if-eqz p1, :cond_8e

    const/high16 v0, 0x40000000    # 2.0f

    .line 208
    :cond_8e
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/QtEditText;->setInitialCapsMode(I)V

    .line 209
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/QtEditText;->setImeOptions(I)V

    .line 210
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/QtEditText;->setInputType(I)V

    return-void
.end method

.method updateHandles(IIIIIIIIZ)V
    .registers 22

    move/from16 v7, p5

    move/from16 v8, p6

    and-int/lit16 v0, p1, 0xff

    const/4 v9, 0x0

    if-eqz v0, :cond_8f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_62

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto/16 :goto_a8

    .line 297
    :cond_11
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v0, :cond_47

    .line 298
    new-instance v0, Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v10, 0x10102c5

    const v11, 0x10102c6

    if-nez p9, :cond_27

    move v4, v10

    goto :goto_28

    :cond_27
    move v4, v11

    :goto_28
    const/4 v3, 0x2

    move-object v2, p0

    move/from16 v5, p9

    .line 301
    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 303
    new-instance v0, Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez p9, :cond_3d

    move v4, v11

    goto :goto_3e

    :cond_3d
    move v4, v10

    :goto_3e
    const/4 v3, 0x3

    move-object v2, p0

    move/from16 v5, p9

    .line 306
    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 309
    :cond_47
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v0, v7, v8}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 310
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    move/from16 v1, p7

    move/from16 v3, p8

    invoke-virtual {v0, v1, v3}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 311
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_5e

    .line 312
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 313
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    :cond_5e
    or-int/lit16 v0, p1, 0x100

    move v6, v0

    goto :goto_a9

    .line 283
    :cond_62
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-nez v0, :cond_79

    .line 284
    new-instance v0, Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v4, 0x10102c7

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/qtproject/qt/android/CursorHandle;-><init>(Landroid/app/Activity;Landroid/view/View;IIZ)V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 288
    :cond_79
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v0, v7, v8}, Lorg/qtproject/qt/android/CursorHandle;->setPosition(II)V

    .line 289
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_a8

    .line 290
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 291
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 292
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 293
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    goto :goto_a8

    .line 271
    :cond_8f
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_98

    .line 272
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 273
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_cursorHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 275
    :cond_98
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    if-eqz v0, :cond_a8

    .line 276
    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 277
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/CursorHandle;->hide()V

    .line 278
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_rightSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    .line 279
    iput-object v9, p0, Lorg/qtproject/qt/android/QtEditText;->m_leftSelectionHandle:Lorg/qtproject/qt/android/CursorHandle;

    :cond_a8
    :goto_a8
    move v6, p1

    .line 319
    :goto_a9
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt/android/QtClipboardManager;->hasClipboardText(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b6

    and-int/lit8 v0, p4, -0x5

    goto :goto_b8

    :cond_b6
    move/from16 v0, p4

    :goto_b8
    const/16 v1, 0x100

    and-int/lit16 v3, v6, 0x100

    if-ne v3, v1, :cond_c6

    if-eqz v0, :cond_c6

    .line 325
    iget-object v1, p0, Lorg/qtproject/qt/android/QtEditText;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    invoke-virtual {v1, p2, p3, v0}, Lorg/qtproject/qt/android/EditPopupMenu;->setPosition(III)V

    return-void

    .line 327
    :cond_c6
    iget-object v0, p0, Lorg/qtproject/qt/android/QtEditText;->m_editPopupMenu:Lorg/qtproject/qt/android/EditPopupMenu;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/EditPopupMenu;->hide()V

    return-void
.end method
