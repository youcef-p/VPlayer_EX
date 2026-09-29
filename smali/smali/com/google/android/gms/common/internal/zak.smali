###### Class com.google.android.gms.common.internal.zak (com.google.android.gms.common.internal.zak)
.class public final Lcom/google/android/gms/common/internal/zak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field private static final zaa:Landroidx/collection/SimpleArrayMap;

.field private static zab:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zak;->zaa:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method public static zaa(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "common_google_play_services_resolution_required_title"

    const/4 v2, 0x0

    const-string v3, "GoogleApiAvailability"

    packed-switch p1, :pswitch_data_c0

    .line 27
    :pswitch_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x16

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unexpected error code "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_2b
    const-string p1, "The current user profile is restricted and could not use authenticated features."

    .line 2
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_restricted_profile_title"

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_37
    const-string p1, "Google Play services is missing a required permission."

    .line 4
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_41
    const-string p0, "Google Play services is updating."

    .line 6
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_updating_client_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4d
    const-string p1, "The specified account could not be signed in."

    .line 8
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_sign_in_failed_title"

    .line 9
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_59
    const-string p0, "One of the API components you attempted to connect to is not available."

    .line 10
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_5f
    const-string p0, "The application is not licensed to the user."

    .line 11
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_65
    const-string p0, "Developer error occurred. Please see logs for detailed information"

    .line 12
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_6b
    const-string p0, "Google Play services is invalid. Cannot recover."

    .line 13
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_unsupported_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_77
    const-string p0, "Internal error occurred. Please see logs for detailed information"

    .line 15
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_7d
    const-string p1, "Network error occurred. Please retry request later."

    .line 16
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_network_error_title"

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_89
    const-string p1, "Google Play services requires resolution."

    .line 18
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_93
    const-string p1, "An invalid account was specified when connecting. Please provide a valid account."

    .line 20
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "common_google_play_services_invalid_account_title"

    .line 21
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9f
    const-string p0, "Sign-in is required to use this API."

    .line 22
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_signin_required_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :pswitch_ab
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 25
    :pswitch_b2
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 26
    :pswitch_b9
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_b2
        :pswitch_ab
        :pswitch_9f
        :pswitch_93
        :pswitch_89
        :pswitch_7d
        :pswitch_77
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_37
        :pswitch_2b
        :pswitch_b2
    .end packed-switch
.end method

.method public static zab(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_a

    .line 1
    const-string p1, "common_google_play_services_resolution_required_title"

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    .line 2
    :cond_a
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zaa(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :goto_e
    if-nez p1, :cond_1b

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_try_again_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object p1
.end method

.method public static zac(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zak;->zaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_83

    const/4 v2, 0x3

    if-eq p1, v2, :cond_78

    const/4 v2, 0x4

    if-eq p1, v2, :cond_6d

    const/4 v2, 0x5

    if-eq p1, v2, :cond_66

    const/4 v2, 0x7

    if-eq p1, v2, :cond_5f

    const/16 v2, 0x9

    if-eq p1, v2, :cond_54

    const/16 v2, 0x14

    if-eq p1, v2, :cond_4d

    const/16 v2, 0x15

    if-eq p1, v2, :cond_83

    packed-switch p1, :pswitch_data_aa

    .line 16
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_try_again_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_34
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_updating_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3f
    const-string p1, "common_google_play_services_sign_in_failed_text"

    .line 5
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_46
    const-string p1, "common_google_play_services_api_unavailable_text"

    .line 6
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_4d
    const-string p1, "common_google_play_services_restricted_profile_text"

    .line 3
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_54
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_unsupported_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    const-string p1, "common_google_play_services_network_error_text"

    .line 8
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    const-string p1, "common_google_play_services_invalid_account_text"

    .line 9
    invoke-static {p0, p1, v1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 10
    :cond_6d
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_signin_required_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_78
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_83
    invoke-static {p0}, Lcom/google/android/gms/common/util/DeviceProperties;->isWearableWithoutPlayStore(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_94

    .line 13
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_wear_update_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_94
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_9f
    sget p0, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_text:I

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_aa
    .packed-switch 0x10
        :pswitch_46
        :pswitch_3f
        :pswitch_34
    .end packed-switch
.end method

.method public static zad(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_d

    const/16 v0, 0x13

    if-ne p1, v0, :cond_8

    goto :goto_d

    .line 3
    :cond_8
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zac(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1
    :cond_d
    :goto_d
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zak;->zaf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "common_google_play_services_resolution_required_text"

    .line 2
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/internal/zak;->zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zae(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const p1, 0x104000a

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_15
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_enable_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1c
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_update_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_23
    sget p1, Lcom/google/android/gms/base/R$string;->common_google_play_services_install_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zaf(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    :try_start_4
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_10} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p0

    .line 3
    :catch_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-object v0

    :cond_1e
    return-object p0
.end method

.method private static zag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zak;->zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_10

    .line 3
    sget p0, Lcom/google/android/gms/common/R$string;->common_google_play_services_unknown_issue:I

    .line 4
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    :cond_10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zah(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/zak;->zaa:Landroidx/collection/SimpleArrayMap;

    const-string v1, "Got empty resource: "

    const-string v2, "Missing resource: "

    monitor-enter v0

    .line 2
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Landroidx/core/os/ConfigurationCompat;->getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/core/os/LocaleListCompat;->get(I)Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/common/internal/zak;->zab:Ljava/util/Locale;

    .line 3
    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    sput-object v3, Lcom/google/android/gms/common/internal/zak;->zab:Ljava/util/Locale;

    .line 5
    :cond_25
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2f

    .line 6
    monitor-exit v0

    return-object v3

    .line 7
    :cond_2f
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_38

    .line 8
    monitor-exit v0

    return-object v3

    :cond_38
    const-string v4, "string"

    const-string v5, "com.google.android.gms"

    .line 9
    invoke-virtual {p0, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5e

    const-string p0, "GoogleApiAvailability"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    monitor-exit v0

    return-object v3

    .line 12
    :cond_5e
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_84

    const-string p0, "GoogleApiAvailability"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    monitor-exit v0

    return-object v3

    .line 14
    :cond_84
    invoke-virtual {v0, p1, p0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0

    return-object p0

    :catchall_89
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7 .. :try_end_8b} :catchall_89

    throw p0
.end method
