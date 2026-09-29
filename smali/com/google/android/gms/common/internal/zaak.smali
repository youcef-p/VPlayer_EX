###### Class com.google.android.gms.common.internal.zaak (com.google.android.gms.common.internal.zaak)
.class public final Lcom/google/android/gms/common/internal/zaak;
.super Landroid/widget/Button;
.source "com.google.android.gms:play-services-base@@18.10.1"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 p2, 0x0

    const v0, 0x1010048

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final zab(IIII)I
    .registers 4

    if-eqz p0, :cond_2b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_9

    return p3

    .line 1
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x16

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Unknown color scheme: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    return p2

    :cond_2b
    return p1
.end method


# virtual methods
.method public final zaa(Landroid/content/res/Resources;II)V
    .registers 10

    .line 1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zaak;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zaak;->setTextSize(F)V

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zaak;->setMinHeight(I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zaak;->setMinWidth(I)V

    .line 6
    sget v0, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_icon_light:I

    .line 7
    invoke-static {p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zaak;->zab(IIII)I

    move-result v0

    sget v1, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_dark:I

    sget v2, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/base/R$drawable;->common_google_signin_btn_text_light:I

    .line 8
    invoke-static {p3, v1, v2, v3}, Lcom/google/android/gms/common/internal/zaak;->zab(IIII)I

    move-result v1

    const-string v2, "Unknown button size: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p2, :cond_5b

    if-eq p2, v4, :cond_5b

    if-ne p2, v3, :cond_3c

    goto :goto_5c

    .line 23
    :cond_3c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    move v0, v1

    .line 9
    :goto_5c
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 10
    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_tint:I

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 12
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zaak;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    sget v0, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    sget v5, Lcom/google/android/gms/base/R$color;->common_google_signin_btn_text_light:I

    .line 15
    invoke-static {p3, v0, v1, v5}, Lcom/google/android/gms/common/internal/zaak;->zab(IIII)I

    move-result p3

    .line 16
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zaak;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 p3, 0x0

    if-eqz p2, :cond_c0

    if-eq p2, v4, :cond_b6

    if-ne p2, v3, :cond_97

    .line 17
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zaak;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c9

    .line 19
    :cond_97
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_b6
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zaak;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c9

    .line 19
    :cond_c0
    sget p2, Lcom/google/android/gms/base/R$string;->common_signin_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zaak;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_c9
    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/internal/zaak;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaak;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_db

    const/16 p1, 0x13

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zaak;->setGravity(I)V

    :cond_db
    return-void
.end method
