###### Class androidx.appcompat.widget.AppCompatDrawableManager (androidx.appcompat.widget.AppCompatDrawableManager)
.class public final Landroidx/appcompat/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager; = null

.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManag"


# instance fields
.field private mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 50
    sget-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/AppCompatDrawableManager;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 461
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_a

    .line 462
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V

    .line 464
    :cond_a
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-object v1

    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 3

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 502
    :try_start_3
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p0
.end method

.method public static declared-synchronized preload()V
    .registers 3

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_20

    .line 59
    new-instance v1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 60
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 61
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    new-instance v2, Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    invoke-direct {v2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->setHooks(Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 455
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .registers 3

    .line 497
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    .line 470
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    monitor-enter p0

    .line 493
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 479
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->onConfigurationChanged(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 480
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method declared-synchronized onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    .line 484
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->onDrawableLoadedFromResources(Landroid/content/Context;Landroidx/appcompat/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 5

    .line 489
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p1

    return p1
.end method

###### Class androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1 (androidx.appcompat.widget.AppCompatDrawableManager$1)
.class Landroidx/appcompat/widget/AppCompatDrawableManager$1;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_CHECKABLE_BUTTON_LIST:[I

.field private final TINT_COLOR_CONTROL_NORMAL:[I

.field private final TINT_COLOR_CONTROL_STATE_LIST:[I


# direct methods
.method constructor <init>()V
    .registers 9

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget v0, Landroidx/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 78
    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I

    sget v3, Landroidx/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    sget v4, Landroidx/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    sget v5, Landroidx/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    sget v6, Landroidx/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    sget v7, Landroidx/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 92
    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    sget v3, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    sget v4, Landroidx/appcompat/R$drawable;->abc_text_cursor_material:I

    sget v5, Landroidx/appcompat/R$drawable;->abc_text_select_handle_left_mtrl:I

    sget v6, Landroidx/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl:I

    sget v7, Landroidx/appcompat/R$drawable;->abc_text_select_handle_right_mtrl:I

    filled-new-array/range {v1 .. v7}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 107
    sget v0, Landroidx/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 117
    sget v0, Landroidx/appcompat/R$drawable;->abc_tab_indicator_material:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_textfield_search_material:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 127
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_check_material:I

    sget v1, Landroidx/appcompat/R$drawable;->abc_btn_radio_material:I

    sget v2, Landroidx/appcompat/R$drawable;->abc_btn_check_material_anim:I

    sget v3, Landroidx/appcompat/R$drawable;->abc_btn_radio_material_anim:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method private arrayContains([II)Z
    .registers 7

    .line 357
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    if-ne v3, p2, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8

    const/4 v0, 0x4

    .line 153
    new-array v1, v0, [[I

    .line 154
    new-array v0, v0, [I

    .line 157
    sget v2, Landroidx/appcompat/R$attr;->colorControlHighlight:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 159
    sget v3, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    invoke-static {p1, v3}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 163
    sget-object v3, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 164
    aput p1, v0, v4

    .line 167
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->PRESSED_STATE_SET:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 168
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v0, v3

    .line 171
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->FOCUSED_STATE_SET:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    .line 172
    invoke-static {v2, p2}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p1

    aput p1, v0, v3

    .line 176
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    .line 177
    aput p2, v0, v2

    .line 180
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    .line 147
    sget v0, Landroidx/appcompat/R$attr;->colorAccent:I

    .line 148
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 147
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 3

    .line 135
    sget v0, Landroidx/appcompat/R$attr;->colorButtonNormal:I

    .line 136
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 135
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method private createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .registers 9

    const/4 v0, 0x3

    .line 184
    new-array v1, v0, [[I

    .line 185
    new-array v0, v0, [I

    .line 188
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_37

    .line 191
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 196
    sget-object v6, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v6, v1, v5

    .line 197
    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    aput v6, v0, v5

    .line 200
    sget-object v5, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v5, v1, v4

    .line 201
    sget v5, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v5}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    .line 205
    sget-object p1, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object p1, v1, v3

    .line 206
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v3

    goto :goto_5b

    .line 212
    :cond_37
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v2, v1, v5

    .line 213
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    .line 217
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->CHECKED_STATE_SET:[I

    aput-object v2, v1, v4

    .line 218
    sget v2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v4

    .line 222
    sget-object v2, Landroidx/appcompat/widget/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v2, v1, v3

    .line 223
    sget v2, Landroidx/appcompat/R$attr;->colorSwitchThumbNormal:I

    invoke-static {p1, v2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v3

    .line 227
    :goto_5b
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method private getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .registers 8

    .line 259
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 261
    sget v0, Landroidx/appcompat/R$drawable;->abc_star_black_48dp:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 263
    sget v1, Landroidx/appcompat/R$drawable;->abc_star_half_black_48dp:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 268
    instance-of p2, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p2, :cond_31

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p2, p3, :cond_31

    .line 269
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-ne p2, p3, :cond_31

    .line 271
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 273
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 274
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_4d

    .line 276
    :cond_31
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 278
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual {v0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 281
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 283
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p2, v2

    .line 285
    :goto_4d
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 288
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_65

    .line 289
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p3, :cond_65

    .line 290
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p3, :cond_65

    .line 292
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_7b

    .line 294
    :cond_65
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 296
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 297
    invoke-virtual {p1, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    :goto_7b
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-direct {p3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x1020000

    .line 305
    invoke-virtual {p3, v1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p2, 0x102000f

    .line 306
    invoke-virtual {p3, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p2, 0x102000d

    .line 307
    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p3
.end method

.method private setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 312
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_a

    .line 313
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_a
    invoke-static {p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public createDrawableFor(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 233
    sget v0, Landroidx/appcompat/R$drawable;->abc_cab_background_top_material:I

    if-ne p3, v0, :cond_1f

    .line 234
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_internal_bg:I

    .line 235
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Landroidx/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 237
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p3

    .line 241
    :cond_1f
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-ne p3, v0, :cond_2a

    .line 242
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_big:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    .line 245
    :cond_2a
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-ne p3, v0, :cond_35

    .line 246
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_medium:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    .line 249
    :cond_35
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p3, v0, :cond_40

    .line 250
    sget p3, Landroidx/appcompat/R$dimen;->abc_star_small:I

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->getRatingBarLayerDrawable(Landroidx/appcompat/widget/ResourceManagerInternal;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTintListForDrawableRes(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    .line 369
    sget v0, Landroidx/appcompat/R$drawable;->abc_edit_text_material:I

    if-ne p2, v0, :cond_b

    .line 370
    sget p2, Landroidx/appcompat/R$color;->abc_tint_edittext:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 371
    :cond_b
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v0, :cond_16

    .line 372
    sget p2, Landroidx/appcompat/R$color;->abc_tint_switch_track:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 373
    :cond_16
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v0, :cond_1f

    .line 374
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createSwitchThumbColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 375
    :cond_1f
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v0, :cond_28

    .line 376
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 377
    :cond_28
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v0, :cond_31

    .line 378
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 379
    :cond_31
    sget v0, Landroidx/appcompat/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v0, :cond_3a

    .line 380
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 381
    :cond_3a
    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v0, :cond_7d

    sget v0, Landroidx/appcompat/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v0, :cond_43

    goto :goto_7d

    .line 384
    :cond_43
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 385
    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 386
    :cond_52
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 387
    sget p2, Landroidx/appcompat/R$color;->abc_tint_default:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 388
    :cond_61
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-direct {p0, v0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 389
    sget p2, Landroidx/appcompat/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    .line 390
    :cond_70
    sget v0, Landroidx/appcompat/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v0, :cond_7b

    .line 391
    sget p2, Landroidx/appcompat/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_7b
    const/4 p1, 0x0

    return-object p1

    .line 383
    :cond_7d
    :goto_7d
    sget p2, Landroidx/appcompat/R$color;->abc_tint_spinner:I

    invoke-static {p1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public getTintModeForDrawableRes(I)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    .line 447
    sget v0, Landroidx/appcompat/R$drawable;->abc_switch_thumb_material:I

    if-ne p1, v0, :cond_7

    .line 448
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public tintDrawable(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 9

    .line 320
    sget v0, Landroidx/appcompat/R$drawable;->abc_seekbar_track_material:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_43

    .line 321
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 323
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 324
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 325
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 322
    invoke-direct {p0, p2, v0, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 327
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 328
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 329
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 326
    invoke-direct {p0, p2, v0, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 331
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 332
    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 333
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 330
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1

    .line 335
    :cond_43
    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v0, :cond_52

    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v0, :cond_52

    sget v0, Landroidx/appcompat/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v0, :cond_50

    goto :goto_52

    :cond_50
    const/4 p1, 0x0

    return p1

    .line 338
    :cond_52
    :goto_52
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    .line 340
    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/R$attr;->colorControlNormal:I

    .line 341
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 342
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 339
    invoke-direct {p0, p2, v0, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 344
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 345
    invoke-static {p1, v0}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 346
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 343
    invoke-direct {p0, p2, v0, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 348
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Landroidx/appcompat/R$attr;->colorControlActivated:I

    .line 349
    invoke-static {p1, p3}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 350
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    .line 347
    invoke-direct {p0, p2, p1, p3}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1
.end method

.method public tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .registers 10

    .line 399
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->access$000()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 404
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_15

    .line 405
    sget p2, Landroidx/appcompat/R$attr;->colorControlNormal:I

    :goto_11
    move-object v1, v0

    move v5, v2

    :goto_13
    move v0, v4

    goto :goto_4e

    .line 407
    :cond_15
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 408
    sget p2, Landroidx/appcompat/R$attr;->colorControlActivated:I

    goto :goto_11

    .line 410
    :cond_20
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-direct {p0, v1, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;->arrayContains([II)Z

    move-result v1

    const v5, 0x1010031

    if-eqz v1, :cond_32

    .line 413
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_2d
    move-object v1, v0

    move v0, v4

    move p2, v5

    :goto_30
    move v5, v2

    goto :goto_4e

    .line 414
    :cond_32
    sget v1, Landroidx/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p2, v1, :cond_45

    const p2, 0x42233333    # 40.8f

    .line 417
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v1, 0x1010030

    move-object v5, v0

    move v0, p2

    move p2, v1

    move-object v1, v5

    goto :goto_30

    .line 418
    :cond_45
    sget v1, Landroidx/appcompat/R$drawable;->abc_dialog_material_background:I

    if-ne p2, v1, :cond_4a

    goto :goto_2d

    :cond_4a
    move-object v1, v0

    move p2, v3

    move v5, p2

    goto :goto_13

    :goto_4e
    if-eqz v5, :cond_65

    .line 424
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 426
    invoke-static {p1, p2}, Landroidx/appcompat/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result p1

    .line 427
    invoke-static {p1, v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v4, :cond_64

    .line 430
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_64
    return v2

    :cond_65
    return v3
.end method
