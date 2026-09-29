###### Class androidx.appcompat.widget.AppCompatTextView (androidx.appcompat.widget.AppCompatTextView)
.class public Landroidx/appcompat/widget/AppCompatTextView;
.super Landroid/widget/TextView;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/core/view/TintableBackgroundView;
.implements Landroidx/core/widget/TintableCompoundDrawablesView;
.implements Landroidx/core/widget/AutoSizeableTextView;
.implements Landroidx/appcompat/widget/EmojiCompatConfigurationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;,
        Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;,
        Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;,
        Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;
    }
.end annotation


# instance fields
.field private final mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

.field private mEmojiTextViewHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

.field private mIsSetTypefaceProcessing:Z

.field private mPrecomputedTextFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

.field private final mTextClassifierHelper:Landroidx/appcompat/widget/AppCompatTextClassifierHelper;

.field private final mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    .line 110
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 115
    invoke-static {p1}, Landroidx/appcompat/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    .line 117
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/appcompat/widget/ThemeUtils;->checkAppCompatTheme(Landroid/view/View;Landroid/content/Context;)V

    .line 119
    new-instance p1, Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    .line 120
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 122
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 123
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 126
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextClassifierHelper;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/AppCompatTextClassifierHelper;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextClassifierHelper:Landroidx/appcompat/widget/AppCompatTextClassifierHelper;

    .line 128
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object p1

    .line 129
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$001(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$1001(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    return-void
.end method

.method static synthetic access$101(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result p0

    return p0
.end method

.method static synthetic access$1101(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    return-void
.end method

.method static synthetic access$1201(Landroidx/appcompat/widget/AppCompatTextView;IF)V
    .registers 3

    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineHeight(IF)V

    return-void
.end method

.method static synthetic access$201(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result p0

    return p0
.end method

.method static synthetic access$301(Landroidx/appcompat/widget/AppCompatTextView;)[I
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$401(Landroidx/appcompat/widget/AppCompatTextView;)I
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result p0

    return p0
.end method

.method static synthetic access$501(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;
    .registers 1

    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$601(Landroidx/appcompat/widget/AppCompatTextView;IIII)V
    .registers 5

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method static synthetic access$701(Landroidx/appcompat/widget/AppCompatTextView;[II)V
    .registers 3

    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method static synthetic access$801(Landroidx/appcompat/widget/AppCompatTextView;I)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method static synthetic access$901(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method private consumeTextFutureAndSetBlocking()V
    .registers 3

    .line 545
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 548
    :try_start_5
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    .line 549
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/text/PrecomputedTextCompat;

    invoke-static {p0, v0}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_10} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method

.method private getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
    .registers 2

    .line 138
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    if-nez v0, :cond_b

    .line 139
    new-instance v0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    .line 141
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mEmojiTextViewHelper:Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    return-object v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .line 243
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 244
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 245
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 247
    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_11

    .line 248
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_11
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    .line 411
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_d

    .line 412
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    .line 414
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_16

    .line 415
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    .line 393
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_d

    .line 394
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    .line 396
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_16

    .line 397
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    .line 375
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_d

    .line 376
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    .line 378
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_16

    .line 379
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_16
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 429
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_d

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    .line 432
    :cond_d
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_16

    .line 433
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v0, 0x0

    .line 436
    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4

    .line 354
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 355
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    return v1

    .line 360
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_1b

    .line 361
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getAutoSizeTextType()I

    move-result v0

    return v0

    :cond_1b
    return v1
.end method

.method public getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .registers 2

    .line 505
    invoke-super {p0}, Landroid/widget/TextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object v0

    .line 504
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->unwrapCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getFirstBaselineToTopHeight()I
    .registers 2

    .line 468
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getFirstBaselineToTopHeight(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .registers 2

    .line 473
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getLastBaselineToBottomHeight(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;
    .registers 3

    .line 798
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    if-nez v0, :cond_19

    .line 799
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_12

    .line 800
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    goto :goto_19

    .line 802
    :cond_12
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    .line 807
    :cond_19
    :goto_19
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mSuperCaller:Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    return-object v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 182
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 183
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 208
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    .line 209
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 693
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getSupportCompoundDrawablesTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 734
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 558
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 559
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 2

    .line 587
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 2

    .line 517
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    move-result-object v0

    return-object v0
.end method

.method public isEmojiCompatEnabled()Z
    .registers 2

    .line 238
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    .line 441
    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 442
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v1, p0, v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 443
    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/AppCompatHintHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 782
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_24

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_24

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 784
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 791
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    :cond_24
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 254
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    move v1, p1

    move-object p1, p0

    .line 255
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_10

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->onLayout(ZIIII)V

    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 613
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->consumeTextFutureAndSetBlocking()V

    .line 614
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 274
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_18

    sget-boolean p1, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    .line 275
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 277
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_18
    return-void
.end method

.method public setAllCaps(Z)V
    .registers 3

    .line 227
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 228
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setAllCaps(Z)V

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 313
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_c

    .line 314
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void

    .line 317
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_13

    .line 318
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    :cond_13
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 334
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_c

    .line 335
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void

    .line 337
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_13

    .line 338
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_13
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 291
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_c

    .line 292
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    .line 294
    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_13

    .line 295
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAutoSizeTextTypeWithDefaults(I)V

    :cond_13
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 154
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 156
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    .line 146
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_a

    .line 148
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_a
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 621
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_a

    .line 622
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 629
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 630
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_a

    .line 631
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_a
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .registers 7

    .line 669
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 671
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    if-eqz p2, :cond_14

    .line 672
    invoke-static {v0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    if-eqz p3, :cond_1c

    .line 673
    invoke-static {v0, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1d

    :cond_1c
    move-object p3, v1

    :goto_1d
    if-eqz p4, :cond_23

    .line 674
    invoke-static {v0, p4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 670
    :cond_23
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_2d

    .line 676
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_2d
    return-void
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 660
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 661
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_a

    .line 662
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_a
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .registers 7

    .line 646
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    .line 648
    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_d

    :cond_c
    move-object p1, v1

    :goto_d
    if-eqz p2, :cond_14

    .line 649
    invoke-static {v0, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_15

    :cond_14
    move-object p2, v1

    :goto_15
    if-eqz p3, :cond_1c

    .line 650
    invoke-static {v0, p3}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1d

    :cond_1c
    move-object p3, v1

    :goto_1d
    if-eqz p4, :cond_23

    .line 651
    invoke-static {v0, p4}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 647
    :cond_23
    invoke-virtual {p0, p1, p2, p3, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_2d

    .line 653
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_2d
    return-void
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz p1, :cond_a

    .line 640
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetCompoundDrawables()V

    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    .line 498
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 497
    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiCompatEnabled(Z)V
    .registers 3

    .line 233
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .registers 3

    .line 222
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getEmojiTextViewHelper()Landroidx/appcompat/widget/AppCompatEmojiTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .registers 3

    .line 449
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setFirstBaselineToTopHeight(I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 3

    .line 459
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setLastBaselineToBottomHeight(I)V

    return-void
.end method

.method public setLineHeight(I)V
    .registers 2

    .line 478
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setLineHeight(IF)V
    .registers 5

    .line 483
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_e

    .line 484
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setLineHeight(IF)V

    return-void

    .line 486
    :cond_e
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;IF)V

    return-void
.end method

.method public setPrecomputedText(Landroidx/core/text/PrecomputedTextCompat;)V
    .registers 2

    .line 541
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 168
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 194
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mBackgroundTintHelper:Landroidx/appcompat/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 715
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 716
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method

.method public setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 753
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 754
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    .line 214
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 215
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_a

    .line 216
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 3

    .line 569
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getSuperCaller()Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;)V"
        }
    .end annotation

    .line 605
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mPrecomputedTextFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_7

    .line 607
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->requestLayout()V

    :cond_7
    return-void
.end method

.method public setTextMetricsParamsCompat(Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .registers 2

    .line 528
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    .line 262
    sget-boolean v0, Landroidx/appcompat/widget/ViewUtils;->SDK_LEVEL_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_8

    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    .line 265
    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mTextHelper:Landroidx/appcompat/widget/AppCompatTextHelper;

    if-eqz v0, :cond_f

    .line 266
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSize(IF)V

    :cond_f
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 5

    .line 759
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_12

    if-lez p2, :cond_12

    .line 768
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/TypefaceCompat;->create(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    const/4 v1, 0x1

    .line 771
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    if-eqz v0, :cond_19

    move-object p1, v0

    :cond_19
    const/4 v0, 0x0

    .line 773
    :try_start_1a
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_20

    .line 775
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    return-void

    :catchall_20
    move-exception p1

    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView;->mIsSetTypefaceProcessing:Z

    .line 776
    throw p1
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.InspectionCompanion (androidx.appcompat.widget.AppCompatTextView$InspectionCompanion)
.class public final Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "AppCompatTextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoSizeMaxTextSizeId:I

.field private mAutoSizeMinTextSizeId:I

.field private mAutoSizeStepGranularityId:I

.field private mAutoSizeTextTypeId:I

.field private mBackgroundTintId:I

.field private mBackgroundTintModeId:I

.field private mDrawableTintId:I

.field private mDrawableTintModeId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 5

    .line 42
    const-string v0, "autoSizeMaxTextSize"

    sget v1, Landroidx/appcompat/R$attr;->autoSizeMaxTextSize:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    .line 43
    const-string v0, "autoSizeMinTextSize"

    sget v1, Landroidx/appcompat/R$attr;->autoSizeMinTextSize:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    .line 44
    const-string v0, "autoSizeStepGranularity"

    sget v1, Landroidx/appcompat/R$attr;->autoSizeStepGranularity:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    .line 45
    sget v0, Landroidx/appcompat/R$attr;->autoSizeTextType:I

    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;-><init>(Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;)V

    const-string v2, "autoSizeTextType"

    invoke-interface {p1, v2, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    .line 58
    const-string v0, "backgroundTint"

    sget v1, Landroidx/appcompat/R$attr;->backgroundTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mBackgroundTintId:I

    .line 59
    const-string v0, "backgroundTintMode"

    sget v1, Landroidx/appcompat/R$attr;->backgroundTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mBackgroundTintModeId:I

    .line 60
    const-string v0, "drawableTint"

    sget v1, Landroidx/appcompat/R$attr;->drawableTint:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mDrawableTintId:I

    .line 61
    const-string v0, "drawableTintMode"

    sget v1, Landroidx/appcompat/R$attr;->drawableTintMode:I

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mDrawableTintModeId:I

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    .line 68
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_4d

    .line 71
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeMaxTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 72
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeMinTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 73
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeStepGranularity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    .line 74
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getAutoSizeTextType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    .line 75
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mBackgroundTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 76
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mBackgroundTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 77
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mDrawableTintId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    .line 78
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mDrawableTintModeId:I

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    .line 69
    :cond_4d
    new-instance p1, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {p1}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw p1
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 19
    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->readProperties(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.InspectionCompanion.AnonymousClass1 (androidx.appcompat.widget.AppCompatTextView$InspectionCompanion$1)
.class Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;
.super Ljava/lang/Object;
.source "AppCompatTextView$InspectionCompanion.java"

# interfaces
.implements Ljava/util/function/IntFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;->mapProperties(Landroid/view/inspector/PropertyMapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/IntFunction<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 45
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->this$0:Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$InspectionCompanion$1;->apply(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_a
    const-string p1, "uniform"

    return-object p1

    .line 50
    :cond_d
    const-string p1, "none"

    return-object p1
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.SuperCaller (androidx.appcompat.widget.AppCompatTextView$SuperCaller)
.class interface abstract Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;
.super Ljava/lang/Object;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SuperCaller"
.end annotation


# virtual methods
.method public abstract getAutoSizeMaxTextSize()I
.end method

.method public abstract getAutoSizeMinTextSize()I
.end method

.method public abstract getAutoSizeStepGranularity()I
.end method

.method public abstract getAutoSizeTextAvailableSizes()[I
.end method

.method public abstract getAutoSizeTextType()I
.end method

.method public abstract getTextClassifier()Landroid/view/textclassifier/TextClassifier;
.end method

.method public abstract setAutoSizeTextTypeUniformWithConfiguration(IIII)V
.end method

.method public abstract setAutoSizeTextTypeUniformWithPresetSizes([II)V
.end method

.method public abstract setAutoSizeTextTypeWithDefaults(I)V
.end method

.method public abstract setFirstBaselineToTopHeight(I)V
.end method

.method public abstract setLastBaselineToBottomHeight(I)V
.end method

.method public abstract setLineHeight(IF)V
.end method

.method public abstract setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.SuperCallerApi26 (androidx.appcompat.widget.AppCompatTextView$SuperCallerApi26)
.class Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;
.super Ljava/lang/Object;
.source "AppCompatTextView.java"

# interfaces
.implements Landroidx/appcompat/widget/AppCompatTextView$SuperCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi26"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 835
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoSizeMaxTextSize()I
    .registers 2

    .line 838
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$001(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    .line 843
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$101(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    .line 848
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$201(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 853
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$301(Landroidx/appcompat/widget/AppCompatTextView;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 2

    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$401(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v0

    return v0
.end method

.method public getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .registers 2

    .line 863
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0}, Landroidx/appcompat/widget/AppCompatTextView;->access$501(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    .line 869
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextView;->access$601(Landroidx/appcompat/widget/AppCompatTextView;IIII)V

    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    .line 875
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->access$701(Landroidx/appcompat/widget/AppCompatTextView;[II)V

    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 880
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$801(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .registers 2

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 2

    return-void
.end method

.method public setLineHeight(IF)V
    .registers 3

    return-void
.end method

.method public setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .registers 3

    .line 885
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$901(Landroidx/appcompat/widget/AppCompatTextView;Landroid/view/textclassifier/TextClassifier;)V

    return-void
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.SuperCallerApi28 (androidx.appcompat.widget.AppCompatTextView$SuperCallerApi28)
.class Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;
.super Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi28"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 899
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi26;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method


# virtual methods
.method public setFirstBaselineToTopHeight(I)V
    .registers 3

    .line 903
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$1001(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 3

    .line 908
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$1101(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

###### Class androidx.appcompat.widget.AppCompatTextView.SuperCallerApi34 (androidx.appcompat.widget.AppCompatTextView$SuperCallerApi34)
.class Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;
.super Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;
.source "AppCompatTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuperCallerApi34"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 913
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi28;-><init>(Landroidx/appcompat/widget/AppCompatTextView;)V

    return-void
.end method


# virtual methods
.method public setLineHeight(IF)V
    .registers 4

    .line 916
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextView$SuperCallerApi34;->this$0:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->access$1201(Landroidx/appcompat/widget/AppCompatTextView;IF)V

    return-void
.end method
