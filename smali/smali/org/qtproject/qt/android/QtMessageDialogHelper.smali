###### Class org.qtproject.qt.android.QtMessageDialogHelper (org.qtproject.qt.android.QtMessageDialogHelper)
.class Lorg/qtproject/qt/android/QtMessageDialogHelper;
.super Ljava/lang/Object;
.source "QtMessageDialogHelper.java"


# static fields
.field private static final QtTAG:Ljava/lang/String; = "QtMessageDialogHelper"


# instance fields
.field private final m_activity:Landroid/app/Activity;

.field private m_buttonsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/qtproject/qt/android/ButtonStruct;",
            ">;"
        }
    .end annotation
.end field

.field private m_detailedText:Landroid/text/Spanned;

.field private m_dialog:Landroid/app/AlertDialog;

.field private m_handler:J

.field private m_informativeText:Landroid/text/Spanned;

.field private m_standardIcon:I

.field private m_text:Landroid/text/Spanned;

.field private m_theme:Landroid/content/res/Resources$Theme;

.field private m_title:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 333
    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    const-wide/16 v0, 0x0

    .line 337
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 55
    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    return-void
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 67
    iget v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3b

    const/4 v2, 0x3

    if-eq v0, v2, :cond_27

    const/4 v2, 0x4

    if-eq v0, v2, :cond_13

    return-object v1

    .line 83
    :cond_13
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 84
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1080040

    .line 83
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 80
    :cond_27
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 81
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1080027

    .line 80
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 77
    :cond_3b
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 78
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x108008a

    .line 77
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 74
    :cond_4f
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    .line 75
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x108009b

    .line 74
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getStyledDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 123
    filled-new-array {p1}, [I

    move-result-object p1

    .line 125
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 127
    :try_start_b
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_13

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    :catchall_13
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    throw v0
.end method


# virtual methods
.method addButton(ILjava/lang/String;)V
    .registers 5

    .line 116
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 118
    :cond_b
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    new-instance v1, Lorg/qtproject/qt/android/ButtonStruct;

    invoke-direct {v1, p0, p1, p2}, Lorg/qtproject/qt/android/ButtonStruct;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method handler()J
    .registers 3

    .line 316
    iget-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    return-wide v0
.end method

.method hide()V
    .registers 3

    .line 307
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance v1, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$hide$0$org-qtproject-qt-android-QtMessageDialogHelper()V
    .registers 2

    .line 308
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 309
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    :cond_f
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->reset()V

    return-void
.end method

.method synthetic lambda$show$0$org-qtproject-qt-android-QtMessageDialogHelper()V
    .registers 17

    .line 0
    move-object/from16 v1, p0

    .line 140
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 141
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 143
    :cond_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_theme:Landroid/content/res/Resources$Theme;

    goto :goto_36

    .line 148
    :cond_2f
    const-string v0, "QtMessageDialogHelper"

    const-string v2, "show(): cannot set theme from null window!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_36
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    if-eqz v0, :cond_3f

    .line 151
    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    :cond_3f
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    new-instance v2, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 153
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    if-nez v2, :cond_52

    move v2, v4

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 154
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    iget-object v2, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-nez v2, :cond_5e

    move v2, v4

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 155
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-direct {v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 156
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v5, Landroid/widget/RelativeLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    .line 169
    iget-object v6, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    const v7, 0x1030044

    const/4 v10, -0x2

    const/16 v11, 0xa

    const/16 v12, 0x8

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz v6, :cond_b5

    .line 171
    new-instance v6, Landroid/widget/TextView;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v6, v15}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setId(I)V

    .line 173
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 174
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 176
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 179
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v15, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 182
    invoke-virtual {v15, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    invoke-virtual {v15, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 184
    invoke-virtual {v5, v6, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x2

    goto :goto_b7

    :cond_b5
    move v15, v4

    const/4 v6, 0x0

    .line 188
    :goto_b7
    iget-object v9, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    const/4 v8, 0x3

    if-eqz v9, :cond_f0

    .line 190
    new-instance v9, Landroid/widget/TextView;

    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v9, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v15, 0x1

    .line 191
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setId(I)V

    .line 192
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 193
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 195
    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 198
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v7, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_e8

    .line 203
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_eb

    .line 205
    :cond_e8
    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    :goto_eb
    invoke-virtual {v5, v9, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v15, v3

    move-object v6, v9

    .line 210
    :cond_f0
    iget-object v3, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    if-eqz v3, :cond_12b

    .line 212
    new-instance v3, Landroid/widget/TextView;

    iget-object v7, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    add-int/lit8 v7, v15, 0x1

    .line 213
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setId(I)V

    .line 214
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 217
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x1030046

    .line 218
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 220
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v0, v13, v12, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_123

    .line 225
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_126

    .line 227
    :cond_123
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 228
    :goto_126
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v3

    move v15, v7

    .line 232
    :cond_12b
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1fa

    .line 234
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    .line 235
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    add-int/lit8 v7, v15, 0x1

    .line 236
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setId(I)V

    .line 238
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v12, v4

    :goto_146
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/qtproject/qt/android/ButtonStruct;

    .line 242
    :try_start_153
    new-instance v0, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_157} :catch_162

    const v8, 0x101032b

    const/4 v11, 0x0

    :try_start_15b
    invoke-direct {v0, v15, v11, v8}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_160

    move-object v8, v0

    goto :goto_16e

    :catch_160
    move-exception v0

    goto :goto_164

    :catch_162
    move-exception v0

    const/4 v11, 0x0

    .line 244
    :goto_164
    new-instance v8, Landroid/widget/Button;

    iget-object v15, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v8, v15}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :goto_16e
    iget-object v0, v13, Lorg/qtproject/qt/android/ButtonStruct;->m_text:Landroid/text/Spanned;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 249
    invoke-virtual {v8, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v12, :cond_196

    .line 252
    new-instance v0, Landroid/view/View;

    iget-object v12, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v12}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 254
    :try_start_17f
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v4, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v13, 0x101030a

    .line 256
    invoke-direct {v1, v13}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getStyledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {v3, v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_191
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_191} :catch_192

    goto :goto_196

    :catch_192
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    :cond_196
    :goto_196
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v0, v14, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 265
    invoke-virtual {v3, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x3

    const/16 v11, 0xa

    const/4 v12, 0x0

    goto :goto_146

    .line 270
    :cond_1a5
    :try_start_1a5
    new-instance v0, Landroid/view/View;

    iget-object v8, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 271
    invoke-virtual {v0, v7}, Landroid/view/View;->setId(I)V

    const v7, 0x101032c

    .line 272
    invoke-direct {v1, v7}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->getStyledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 274
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xa

    const/4 v8, 0x0

    .line 276
    invoke-virtual {v7, v8, v4, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_1cf

    .line 278
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1d4

    :cond_1cf
    const/16 v4, 0xa

    .line 281
    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 282
    :goto_1d4
    invoke-virtual {v5, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1d7
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1d7} :catch_1d9

    move-object v6, v0

    goto :goto_1dd

    :catch_1d9
    move-exception v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 287
    :goto_1dd
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v6, :cond_1ed

    .line 291
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1f2

    :cond_1ed
    const/16 v4, 0xa

    .line 294
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1f2
    const/4 v4, 0x2

    const/4 v7, 0x0

    .line 295
    invoke-virtual {v0, v4, v7, v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 296
    invoke-virtual {v5, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_1fa
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 299
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 300
    iget-object v0, v1, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method synthetic lambda$show$1$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/content/DialogInterface;)V
    .registers 4

    .line 152
    invoke-virtual {p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->handler()J

    move-result-wide v0

    const/4 p1, -0x1

    invoke-static {v0, v1, p1}, Lorg/qtproject/qt/android/QtNativeDialogHelper;->dialogResult(JI)V

    return-void
.end method

.method synthetic lambda$show$2$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/view/View;)Z
    .registers 4

    .line 161
    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1d

    .line 163
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 165
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method reset()V
    .registers 3

    const/4 v0, 0x0

    .line 321
    iput v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    .line 323
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    .line 324
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    .line 325
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    .line 326
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_buttonsList:Ljava/util/ArrayList;

    .line 327
    iput-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_dialog:Landroid/app/AlertDialog;

    const-wide/16 v0, 0x0

    .line 328
    iput-wide v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    return-void
.end method

.method setDetailedText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 110
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_detailedText:Landroid/text/Spanned;

    return-void
.end method

.method setInformativeText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 104
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_informativeText:Landroid/text/Spanned;

    return-void
.end method

.method setStandardIcon(I)V
    .registers 2

    .line 61
    iput p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_standardIcon:I

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_text:Landroid/text/Spanned;

    return-void
.end method

.method setTile(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_title:Landroid/text/Spanned;

    return-void
.end method

.method show(J)V
    .registers 3

    .line 138
    iput-wide p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_handler:J

    .line 139
    iget-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper;->m_activity:Landroid/app/Activity;

    new-instance p2, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;-><init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda0 (org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda0)
.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda0;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$hide$0$org-qtproject-qt-android-QtMessageDialogHelper()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda1 (org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda1)
.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda1;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$show$0$org-qtproject-qt-android-QtMessageDialogHelper()V

    return-void
.end method

###### Class org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda2 (org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda2)
.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda2;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$show$1$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda3 (org.qtproject.qt.android.QtMessageDialogHelper$$ExternalSyntheticLambda3)
.class public final synthetic Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/qtproject/qt/android/QtMessageDialogHelper;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Lorg/qtproject/qt/android/QtMessageDialogHelper$$ExternalSyntheticLambda3;->f$0:Lorg/qtproject/qt/android/QtMessageDialogHelper;

    invoke-virtual {v0, p1}, Lorg/qtproject/qt/android/QtMessageDialogHelper;->lambda$show$2$org-qtproject-qt-android-QtMessageDialogHelper(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
