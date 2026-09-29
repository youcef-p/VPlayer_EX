###### Class org.qtproject.qt.android.ExtractStyle (org.qtproject.qt.android.ExtractStyle)
.class Lorg/qtproject/qt/android/ExtractStyle;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;,
        Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final QtTAG:Ljava/lang/String; = "QtExtractStyle"

.field private static m_extractMinimal:Z = false

.field private static m_missingDarkStyle:Z = false

.field private static m_missingNormalStyle:Z = false

.field private static m_stylePath:Ljava/lang/String;


# instance fields
.field final DisableDrawableStatesLabels:[Ljava/lang/String;

.field final DrawableStates:[I

.field final DrawableStatesLabels:[Ljava/lang/String;

.field final EMPTY_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_STATE_SET:[I

.field final ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_SELECTED_STATE_SET:[I

.field final ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final ENABLED_STATE_SET:[I

.field final ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_SELECTED_STATE_SET:[I

.field final FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final FOCUSED_STATE_SET:[I

.field final FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_STATE_SET:[I

.field final PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_ENABLED_STATE_SET:[I

.field final PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_STATE_SET:[I

.field final PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_STATE_SET:[I

.field final PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_SELECTED_STATE_SET:[I

.field final PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final PRESSED_STATE_SET:[I

.field final PRESSED_WINDOW_FOCUSED_STATE_SET:[I

.field final SELECTED_STATE_SET:[I

.field final SELECTED_WINDOW_FOCUSED_STATE_SET:[I

.field final WINDOW_FOCUSED_STATE_SET:[I

.field final defaultBackgroundColor:I

.field final defaultTextColor:I

.field m_context:Landroid/content/Context;

.field private final m_drawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;",
            ">;"
        }
    .end annotation
.end field

.field final m_extractPath:Ljava/lang/String;

.field final m_minimal:Z

.field final m_theme:Landroid/content/res/Resources$Theme;

.field final sScaleTypeArray:[Ljava/lang/String;

.field final viewDrawableStatesState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 21

    move-object/from16 v1, p0

    .line 203
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 65
    new-array v2, v0, [I

    fill-array-data v2, :array_316

    iput-object v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    const/4 v2, 0x0

    .line 77
    new-array v3, v2, [I

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const v3, 0x101009e

    .line 78
    filled-new-array {v3}, [I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    const v4, 0x101009c

    .line 79
    filled-new-array {v4}, [I

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    const v5, 0x10100a1

    .line 80
    filled-new-array {v5}, [I

    move-result-object v5

    iput-object v5, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    const v6, 0x10100a7

    .line 81
    filled-new-array {v6}, [I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    const v7, 0x101009d

    .line 82
    filled-new-array {v7}, [I

    move-result-object v7

    iput-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    .line 83
    invoke-direct {v1, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    .line 84
    invoke-direct {v1, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    .line 85
    invoke-direct {v1, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 86
    invoke-direct {v1, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v10

    iput-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    .line 87
    invoke-direct {v1, v4, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 88
    invoke-direct {v1, v5, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 89
    invoke-direct {v1, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v11

    iput-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 90
    invoke-direct {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 91
    invoke-direct {v1, v9, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 92
    invoke-direct {v1, v10, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 93
    invoke-direct {v1, v11, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 94
    invoke-direct {v1, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 95
    invoke-direct {v1, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    .line 96
    invoke-direct {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 97
    invoke-direct {v1, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    .line 98
    invoke-direct {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v9

    iput-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 99
    invoke-direct {v1, v8, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    .line 100
    invoke-direct {v1, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v8

    iput-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 101
    invoke-direct {v1, v6, v3}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    .line 102
    invoke-direct {v1, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    .line 103
    invoke-direct {v1, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    .line 104
    invoke-direct {v1, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v6

    iput-object v6, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    .line 105
    invoke-direct {v1, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    .line 106
    invoke-direct {v1, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v4

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    .line 107
    invoke-direct {v1, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    .line 108
    invoke-direct {v1, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->stateSetUnion([I[I)[I

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    const/16 v3, 0xb

    .line 114
    new-array v4, v3, [I

    fill-array-data v4, :array_32e

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    .line 119
    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "active"

    aput-object v5, v4, v2

    const-string v5, "checked"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "enabled"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "focused"

    const/4 v8, 0x3

    aput-object v5, v4, v8

    const-string v5, "pressed"

    const/4 v9, 0x4

    aput-object v5, v4, v9

    const-string v5, "selected"

    const/4 v10, 0x5

    aput-object v5, v4, v10

    const-string v5, "window_focused"

    const/4 v11, 0x6

    aput-object v5, v4, v11

    const/4 v5, 0x7

    const-string v12, "background"

    aput-object v12, v4, v5

    const/16 v13, 0x8

    const-string v14, "multiline"

    aput-object v14, v4, v13

    const/16 v15, 0x9

    const-string v16, "activated"

    aput-object v16, v4, v15

    const-string v15, "accelerated"

    aput-object v15, v4, v0

    iput-object v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    .line 121
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "inactive"

    aput-object v4, v3, v2

    const-string v4, "unchecked"

    aput-object v4, v3, v6

    const-string v4, "disabled"

    aput-object v4, v3, v7

    const-string v4, "not_focused"

    aput-object v4, v3, v8

    const-string v4, "no_pressed"

    aput-object v4, v3, v9

    const-string v4, "unselected"

    aput-object v4, v3, v10

    const-string v4, "window_not_focused"

    aput-object v4, v3, v11

    aput-object v12, v3, v5

    aput-object v14, v3, v13

    const/16 v4, 0x9

    const-string v12, "activated"

    aput-object v12, v3, v4

    const-string v4, "accelerated"

    aput-object v4, v3, v0

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    .line 124
    new-array v0, v13, [Ljava/lang/String;

    const-string v3, "MATRIX"

    aput-object v3, v0, v2

    const-string v3, "FIT_XY"

    aput-object v3, v0, v6

    const-string v3, "FIT_START"

    aput-object v3, v0, v7

    const-string v3, "FIT_CENTER"

    aput-object v3, v0, v8

    const-string v3, "FIT_END"

    aput-object v3, v0, v9

    const-string v3, "CENTER"

    aput-object v3, v0, v10

    const-string v3, "CENTER_CROP"

    aput-object v3, v0, v11

    const-string v3, "CENTER_INSIDE"

    aput-object v3, v0, v5

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    move/from16 v0, p3

    .line 204
    iput-boolean v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    .line 206
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_1a6

    .line 208
    const-string v3, "Qt JAVA"

    const-string v4, "Cannot create Android style directory."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a6
    move-object/from16 v3, p1

    .line 209
    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iput-object v3, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    const v4, 0x1010036

    const v5, 0x1010098

    const v8, 0x1010031

    .line 211
    filled-new-array {v8, v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 216
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    const v2, 0xffffff

    .line 217
    invoke-virtual {v3, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    if-ne v4, v2, :cond_1d4

    .line 219
    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 220
    :cond_1d4
    iput v4, v1, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    .line 221
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    :try_start_1d9
    new-instance v2, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->beginObject()V
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1f4} :catch_310

    .line 227
    :try_start_1f4
    const-string v0, "defaultStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    invoke-direct {v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractDefaultPalette()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 228
    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 229
    const-string v0, "buttonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v3, "QPushButton"

    const v4, 0x1010048

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 230
    const-string v0, "spinnerStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v3, "QComboBox"

    const v4, 0x1010081

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 231
    const-string v0, "progressBarStyleHorizontal"

    const-string v3, "QProgressBar"

    const v4, 0x1010078

    invoke-virtual {v1, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "progressBarStyleLarge"

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-virtual {v1, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "progressBarStyleSmall"

    const v4, 0x1010079

    invoke-virtual {v1, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "progressBarStyle"

    const v4, 0x1010077

    invoke-virtual {v1, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 236
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 237
    const-string v0, "checkboxStyle"

    const-string v4, "QCheckBox"

    const v5, 0x101006c

    invoke-virtual {v1, v2, v5, v0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "editTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QLineEdit"

    const v5, 0x101006e

    invoke-virtual {v1, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 239
    const-string v0, "radioButtonStyle"

    const-string v4, "QRadioButton"

    const v5, 0x101007e

    invoke-virtual {v1, v2, v5, v0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "textViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QWidget"

    const v5, 0x1010084

    invoke-virtual {v1, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 241
    const-string v0, "scrollViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QAbstractScrollArea"

    const v5, 0x1010080

    invoke-virtual {v1, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 242
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 243
    const-string v0, "listSeparatorTextViewStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x1010208

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 244
    invoke-direct {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 245
    const-string v0, "buttonStyleToggle"

    const v4, 0x101004b

    invoke-virtual {v1, v2, v4, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 247
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V

    .line 248
    const-string v0, "actionButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const-string v4, "QToolButton"

    const v5, 0x10102d8

    invoke-virtual {v1, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 249
    const-string v0, "actionBarTabTextStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f5

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 250
    const-string v0, "actionBarTabStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f3

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 251
    const-string v0, "actionOverflowButtonStyle"

    invoke-virtual {v2, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v0

    const v4, 0x10102f6

    invoke-virtual {v1, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    .line 252
    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    :try_end_304
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_304} :catch_305

    goto :goto_309

    :catch_305
    move-exception v0

    .line 254
    :try_start_306
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    :goto_309
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->endObject()V

    .line 257
    invoke-virtual {v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->close()V
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_30f} :catch_310

    goto :goto_314

    :catch_310
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_314
    return-void

    nop

    :array_316
    .array-data 4
        0x101009c
        0x101009d
        0x101009e
        0x10100a1
        0x10100a7
        0x10102fe
        0x101031b
        0x1010367
        0x1010368
        0x1010369
    .end array-data

    :array_32e
    .array-data 4
        0x10100a2
        0x10100a0
        0x101009e
        0x101009c
        0x10100a7
        0x10100a1
        0x101009d
        0x1020000
        0x101034d
        0x10102fe
        0x101031b
    .end array-data
.end method

.method private extractDefaultPalette()Lorg/json/JSONObject;
    .registers 4

    const v0, 0x1010034

    .line 1792
    invoke-virtual {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1794
    :try_start_7
    const-string v1, "defaultBackgroundColor"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1795
    const-string v1, "defaultTextColorPrimary"

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v1

    .line 1797
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    const/4 v0, 0x0

    .line 1582
    :try_start_1
    iget-object v1, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 1583
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    :goto_f
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    .line 1585
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_f

    :cond_1a
    if-eq v1, v2, :cond_1d

    return-object v0

    .line 1590
    :cond_1d
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1591
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1592
    const-string v2, "TextView"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    const p1, 0x1010084

    const v2, 0x101039e

    .line 1593
    invoke-virtual {p0, p1, p2, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 1594
    :cond_38
    const-string v1, "CheckedTextView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1595
    invoke-virtual {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_44} :catch_45

    return-object p1

    :catch_45
    move-exception p1

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    return-object v0
.end method

.method private extractItemsStyle(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 11

    .line 1604
    const-string v0, "simple_selectable_list_item"

    const-string v1, "simple_dropdown_item_1line"

    const-string v2, "simple_spinner_dropdown_item"

    const-string v3, "simple_spinner_item"

    const-string v4, "simple_list_item_single_choice"

    const-string v5, "simple_list_item_multiple_choice"

    const-string v6, "simple_list_item_checked"

    const-string v7, "simple_list_item"

    const v8, 0x1090003

    :try_start_13
    invoke-direct {p0, v8, v7}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-eqz v8, :cond_20

    .line 1606
    invoke-virtual {p1, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v7

    invoke-virtual {v7, v8}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_20
    const v7, 0x1090005

    .line 1607
    invoke-direct {p0, v7, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_30

    .line 1609
    invoke-virtual {p1, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_30
    const v6, 0x1090010

    .line 1610
    invoke-direct {p0, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_40

    .line 1612
    invoke-virtual {p1, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_40
    const v5, 0x109000f

    .line 1613
    invoke-direct {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_50

    .line 1615
    invoke-virtual {p1, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_50
    const v4, 0x1090008

    .line 1616
    invoke-direct {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_60

    .line 1618
    invoke-virtual {p1, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_60
    const v3, 0x1090009

    .line 1619
    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 1621
    invoke-virtual {p1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_70
    const v2, 0x109000a

    .line 1622
    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_80

    .line 1624
    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V

    :cond_80
    const v1, 0x1090015

    .line 1625
    invoke-direct {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractItemStyle(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_90

    .line 1627
    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_90} :catch_91

    :cond_90
    return-void

    :catch_91
    move-exception p1

    .line 1629
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static native extractNativeChunkInfo20(J)[I
.end method

.method private extractWindow(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 10

    .line 1767
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x1010055

    const v2, 0x1010054

    .line 1769
    :try_start_b
    filled-new-array {v2, v1}, [I

    move-result-object v3

    .line 1773
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    const v4, 0x1010076

    .line 1774
    invoke-direct {p0, v4, v3}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1775
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1777
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_37

    .line 1779
    const-string v6, "Window_windowBackground"

    const-string v7, "16842870_Window_windowBackground"

    invoke-virtual {p0, v2, v7, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1781
    :cond_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1783
    const-string v2, "Window_windowFrame"

    const-string v3, "16842870_Window_windowFrame"

    invoke-virtual {p0, v1, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1784
    :cond_50
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1785
    const-string v1, "windowStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5c} :catch_5d

    return-void

    :catch_5d
    move-exception p1

    .line 1787
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 588
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v1, "mNinePatch"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 590
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    goto :goto_2f

    .line 592
    :cond_11
    const-class v0, Landroid/graphics/drawable/NinePatchDrawable;

    const-string v2, "mNinePatchState"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 593
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/NinePatch;

    .line 595
    :goto_2f
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mNativeChunk"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractNativeChunkInfo20(J)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonChunkInfo([I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private findStateIndex(ILjava/util/HashMap;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 643
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 644
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 645
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_2b
    const/4 p1, -0x1

    return p1
.end method

.method private getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 12

    .line 651
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 653
    :try_start_4
    const-string v0, "android.graphics.drawable.AnimatedStateListDrawable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 654
    const-string v1, "mState"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b5

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 658
    const-string v1, "mStateIds"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object v1

    .line 659
    const-string v2, "mTransitions"

    invoke-virtual {p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 662
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v2

    .line 663
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {p0, v3, v1}, Lorg/qtproject/qt/android/ExtractStyle;->findStateIndex(ILjava/util/HashMap;)I

    move-result v3

    .line 665
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 666
    const-string v6, "from"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 667
    const-string v3, "to"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 668
    const-string v2, "reverse"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    shr-long v5, v6, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_97

    const/4 v3, 0x1

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    :goto_98
    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 670
    const-string v2, "stateslist"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 671
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 672
    const-string v2, "transition"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b4} :catch_b6

    goto :goto_46

    :cond_b5
    return-object p2

    :catch_b6
    move-exception p1

    .line 676
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2
.end method

.method private getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 12

    .line 528
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 530
    :try_start_5
    const-string v1, "type"

    const-string v2, "animation"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string v1, "oneshot"

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 532
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 533
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_5a

    .line 535
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 536
    const-string v5, "duration"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 537
    const-string v5, "drawable"

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "__"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 540
    :cond_5a
    const-string p1, "frames"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_60

    return-object v0

    :catch_60
    move-exception p1

    .line 542
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getArrayListFromIntArray([I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 947
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 948
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, p1, v2

    .line 949
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    return-object v0
.end method

.method private getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;
    .registers 8

    .line 472
    const-string v0, "gradient"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 474
    :try_start_7
    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 477
    const-string v3, "shape"

    const-string v4, "mShape"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v3, "mGradient"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 479
    const-string v0, "mOrientation"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable$Orientation;

    if-eqz v0, :cond_47

    .line 481
    const-string v3, "orientation"

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable$Orientation;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    :cond_47
    const-string v0, "mGradientColors"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_60

    .line 484
    const-string v3, "colors"

    array-length v4, v0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    :cond_60
    const-string v0, "positions"

    const-string v3, "mPositions"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 486
    const-string v0, "strokeWidth"

    const-string v3, "mStrokeWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 487
    const-string v0, "strokeDashWidth"

    const-string v3, "mStrokeDashWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 488
    const-string v0, "strokeDashGap"

    const-string v3, "mStrokeDashGap"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 489
    const-string v0, "radius"

    const-string v3, "mRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 490
    const-string v0, "mRadiusArray"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    if-eqz v0, :cond_cb

    .line 492
    const-string v3, "radiusArray"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    :cond_cb
    const-string v0, "mPadding"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_e2

    .line 495
    const-string v3, "padding"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    :cond_e2
    const-string v0, "width"

    const-string v3, "mWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 497
    const-string v0, "height"

    const-string v3, "mHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 498
    const-string v0, "innerRadiusRatio"

    const-string v3, "mInnerRadiusRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 499
    const-string v0, "thicknessRatio"

    const-string v3, "mThicknessRatio"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 500
    const-string v0, "innerRadius"

    const-string v3, "mInnerRadius"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 501
    const-string v0, "thickness"

    const-string v3, "mThickness"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13e} :catch_13f

    return-object v1

    :catch_13f
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private getJsonArray([F)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 568
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_14

    .line 570
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_14

    aget v3, p1, v2

    float-to-double v3, v3

    .line 571
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    return-object v0
.end method

.method private getJsonArray([III)Lorg/json/JSONArray;
    .registers 6

    .line 558
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1a

    if-gez p2, :cond_a

    goto :goto_1a

    :cond_a
    add-int/2addr p3, p2

    .line 561
    array-length v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_10
    if-ge p2, p3, :cond_1a

    .line 563
    aget v1, p1, p2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method private getJsonChunkInfo([I)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 576
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_39

    .line 577
    array-length v1, p1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_c

    goto :goto_39

    :cond_c
    const/4 v1, 0x0

    .line 580
    aget v3, p1, v1

    invoke-direct {p0, p1, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "xdivs"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    aget v3, p1, v1

    add-int/2addr v3, v2

    const/4 v4, 0x1

    aget v5, p1, v4

    invoke-direct {p0, p1, v3, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object v3

    const-string v5, "ydivs"

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    aget v1, p1, v1

    add-int/2addr v1, v2

    aget v2, p1, v4

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-direct {p0, p1, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([III)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "colors"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_39
    :goto_39
    return-object v0
.end method

.method private getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 548
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    const-string v1, "left"

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    const-string v1, "top"

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 551
    const-string v1, "right"

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 552
    const-string v1, "bottom"

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 417
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 418
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    .line 419
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .line 421
    :try_start_b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v1, :cond_46

    .line 423
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    move v4, v3

    .line 426
    :cond_1b
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "__"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v5

    .line 427
    const-string v6, "id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 428
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 430
    :cond_46
    const-string p2, "type"

    const-string v1, "layer"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 431
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 432
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 433
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    :cond_61
    const-string p1, "layers"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_66} :catch_67

    return-object v0

    :catch_67
    move-exception p1

    .line 436
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 10

    .line 599
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 600
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 602
    :try_start_9
    const-string v2, "android.graphics.drawable.RippleDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 603
    const-string v3, "mState"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 604
    const-string v4, "mask"

    const-string v5, "mMask"

    invoke-virtual {p0, v2, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_5c

    .line 606
    const-string p1, "maxRadius"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "mMaxRadius"

    invoke-virtual {p0, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 607
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "mColor"

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_5c

    .line 609
    const-string p2, "color"

    invoke-virtual {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    :cond_5c
    const-string p1, "ripple"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_62

    return-object v0

    :catch_62
    move-exception p1

    .line 613
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11

    .line 509
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 511
    :try_start_5
    const-string v1, "type"

    const-string v2, "rotate"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    invoke-virtual {p1}, Landroid/graphics/drawable/RotateDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 513
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 514
    const-string v3, "drawable"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getDrawable"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string p1, "pivotX"

    const-string p2, "mPivotX"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 516
    const-string p1, "pivotXRel"

    const-string p2, "mPivotXRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 517
    const-string p1, "pivotY"

    const-string p2, "mPivotY"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 518
    const-string p1, "pivotYRel"

    const-string p2, "mPivotYRel"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 519
    const-string p1, "fromDegrees"

    const-string p2, "mFromDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 520
    const-string p1, "toDegrees"

    const-string p2, "mToDegrees"

    invoke-virtual {p0, v2, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8f} :catch_90

    return-object v0

    :catch_90
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private getStateIds(Ljava/lang/Object;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 632
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 634
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v1, :cond_4c

    if-eqz v2, :cond_49

    if-eqz p1, :cond_49

    .line 637
    aget v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_4c
    return-object v0
.end method

.method private getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 15

    .line 442
    const-string v0, "stateslist"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 444
    :try_start_7
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 445
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 447
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2c

    .line 448
    const-class v3, Landroid/graphics/drawable/StateListDrawable;

    const-string v4, "getStateCount"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_30

    .line 450
    :cond_2c
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v3

    :goto_30
    move v4, v5

    :goto_31
    if-ge v4, v3, :cond_be

    .line 452
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 453
    const-class v7, Landroid/graphics/drawable/StateListDrawable;

    const-string v8, "getStateDrawable"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;

    .line 454
    const-class v8, Landroid/graphics/drawable/StateListDrawable;

    const-string v10, "getStateSet"

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v5

    invoke-virtual {v8, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    if-eqz v8, :cond_7c

    .line 456
    const-string v9, "states"

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesList([I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_7c
    const-string v9, "drawable"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "__"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v8, :cond_94

    invoke-virtual {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getStatesName([I)Ljava/lang/String;

    move-result-object v8

    goto :goto_a7

    :cond_94
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state_pos_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_a7
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 458
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_31

    .line 460
    :cond_be
    const-string p2, "type"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 462
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_d7

    .line 463
    const-string p1, "padding"

    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    :cond_d7
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_da} :catch_db

    return-object v1

    :catch_db
    move-exception p1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private getStateTransitions(Ljava/lang/Object;)Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 620
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mSize"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mKeys"

    invoke-virtual {p0, v2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mValues"

    invoke-virtual {p0, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    const/4 v3, 0x0

    :goto_34
    if-ge v3, v1, :cond_4c

    if-eqz v2, :cond_49

    if-eqz p1, :cond_49

    .line 625
    aget-wide v4, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aget-wide v5, p1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_4c
    return-object v0
.end method

.method private getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 719
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 720
    const-string v1, "type"

    const-string v2, "group"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 722
    const-string v2, "mGroupName"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v2, "mRotate"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "rotate"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 724
    const-string v2, "mPivotX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 725
    const-string v2, "mPivotY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "pivotY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 726
    const-string v2, "mScaleX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 727
    const-string v2, "mScaleY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "scaleY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 728
    const-string v2, "mTranslateX"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateX"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 729
    const-string v2, "mTranslateY"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "translateY"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 731
    const-string v2, "mChildren"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 732
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_cb

    .line 734
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 735
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 736
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a6

    .line 738
    :cond_be
    invoke-direct {p0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_a6

    .line 740
    :cond_c6
    const-string p1, "children"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_cb
    return-object v0
.end method

.method private getVPath(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 682
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 684
    const-string v2, "path"

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    const-string v2, "mPathName"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "name"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 686
    const-string v2, "mNodes"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 687
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    if-eqz v2, :cond_77

    .line 689
    array-length v6, v2

    move v7, v5

    :goto_35
    if-ge v7, v6, :cond_72

    aget-object v8, v2, v7

    .line 690
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 691
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mType"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "mParams"

    invoke-virtual {p0, v10, v11}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    invoke-direct {p0, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonArray([F)Lorg/json/JSONArray;

    move-result-object v8

    const-string v10, "params"

    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 693
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v7, v7, 0x1

    goto :goto_35

    .line 695
    :cond_72
    const-string v2, "nodes"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 697
    :cond_77
    const-string v2, "isClipPath"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "isClip"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 699
    const-string v2, "mStrokeColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_93

    return-object v0

    .line 702
    :cond_93
    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "strokeColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 703
    const-string v2, "mStrokeWidth"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeWidth"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 704
    const-string v2, "mFillColor"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillColor"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 705
    const-string v2, "mStrokeAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "strokeAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 706
    const-string v2, "mFillRule"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    const-string v3, "fillRule"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 707
    const-string v2, "mFillAlpha"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "fillAlpha"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 708
    const-string v2, "mTrimPathStart"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathStart"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 709
    const-string v2, "mTrimPathEnd"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathEnd"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 710
    const-string v2, "mTrimPathOffset"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    const-string v4, "trimPathOffset"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 711
    const-string v2, "mStrokeLineCap"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "strokeLineCap"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v2, "mStrokeLineJoin"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "strokeLineJoin"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 713
    const-string v2, "mStrokeMiterlimit"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p1

    float-to-double v1, p1

    const-string p1, "strokeMiterlimit"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method

.method private getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 7

    .line 746
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 748
    :try_start_5
    const-string v1, "type"

    const-string v2, "vector"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    const-string v1, "android.graphics.drawable.VectorDrawable"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 750
    const-string v2, "mVectorState"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 751
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 752
    const-string v2, "mTint"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_4a

    .line 754
    const-string v3, "tintList"

    invoke-virtual {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 755
    const-string v2, "tintMode"

    const-string v3, "mTintMode"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 757
    :cond_4a
    const-string v2, "mVPathRenderer"

    invoke-virtual {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 758
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 759
    const-string v2, "baseWidth"

    const-string v3, "mBaseWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 760
    const-string v2, "baseHeight"

    const-string v3, "mBaseHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 761
    const-string v2, "viewportWidth"

    const-string v3, "mViewportWidth"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 762
    const-string v2, "viewportHeight"

    const-string v3, "mViewportHeight"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 763
    const-string v2, "rootAlpha"

    const-string v3, "mRootAlpha"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 764
    const-string v2, "rootName"

    const-string v3, "mRootName"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v2, "rootGroup"

    const-string v3, "mRootGroup"

    invoke-virtual {p0, v1, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVGroup(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d1} :catch_d2

    return-object v0

    :catch_d2
    move-exception p1

    .line 767
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static isUiModeDark(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 146
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 7

    .line 940
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 941
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 942
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 943
    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method static runIfNeeded(Landroid/content/Context;Z)V
    .registers 5

    .line 190
    sget-object v0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_38

    :cond_5
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 193
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    if-eqz p1, :cond_38

    .line 194
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "darkUiMode/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 195
    sput-boolean v1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    return-void

    .line 197
    :cond_2b
    sget-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    if-eqz p1, :cond_38

    .line 198
    new-instance p1, Lorg/qtproject/qt/android/ExtractStyle;

    sget-boolean v2, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    invoke-direct {p1, p0, v0, v2}, Lorg/qtproject/qt/android/ExtractStyle;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 199
    sput-boolean v1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    :cond_38
    :goto_38
    return-void
.end method

.method static setup(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/qt-reserved-files/android-style/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    .line 154
    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 155
    sget-object p0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    return-object p0

    .line 157
    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "minimal"

    if-eqz v0, :cond_39

    move-object p1, v1

    .line 160
    :cond_39
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "QtExtractStyle"

    if-nez v2, :cond_70

    const-string v2, "full"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 161
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid extract_android_style option \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\", defaulting to \"minimal\""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v1

    .line 170
    :cond_70
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1c

    if-eqz v0, :cond_86

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_86

    .line 173
    const-string p1, "extract_android_style option set to \"none\" when targetSdkVersion is less then 28"

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_86
    move-object p2, p1

    .line 179
    :goto_87
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "darkUiMode/style.json"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_ae

    if-nez p1, :cond_ae

    move p1, v3

    goto :goto_af

    :cond_ae
    const/4 p1, 0x0

    :goto_af
    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingDarkStyle:Z

    .line 181
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "style.json"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    xor-int/2addr p1, v3

    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_missingNormalStyle:Z

    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lorg/qtproject/qt/android/ExtractStyle;->m_extractMinimal:Z

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lorg/qtproject/qt/android/ExtractStyle;->isUiModeDark(Landroid/content/res/Configuration;)Z

    move-result p1

    invoke-static {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->runIfNeeded(Landroid/content/Context;Z)V

    .line 186
    sget-object p0, Lorg/qtproject/qt/android/ExtractStyle;->m_stylePath:Ljava/lang/String;

    return-object p0
.end method

.method private stateSetUnion([I[I)[I
    .registers 14

    .line 267
    :try_start_0
    array-length v0, p1

    .line 268
    array-length v1, p2

    add-int v2, v0, v1

    .line 269
    new-array v2, v2, [I

    .line 275
    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->viewDrawableStatesState:[I

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_d
    if-ge v5, v4, :cond_2f

    aget v9, v3, v5

    if-ge v6, v0, :cond_1f

    .line 276
    aget v10, p1, v6

    if-ne v10, v9, :cond_1f

    add-int/lit8 v10, v8, 0x1

    .line 277
    aput v9, v2, v8

    add-int/lit8 v6, v6, 0x1

    :goto_1d
    move v8, v10

    goto :goto_2c

    :cond_1f
    if-ge v7, v1, :cond_2c

    .line 279
    aget v10, p2, v7

    if-ne v10, v9, :cond_2c

    add-int/lit8 v10, v8, 0x1

    .line 280
    aput v9, v2, v8
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_30

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_2c
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_2f
    return-object v2

    :catch_30
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method extractAbsSeekBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 10

    .line 1490
    const-string v0, "QSlider"

    const v1, 0x101007b

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1491
    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    const v2, 0x1010143

    const v3, 0x1010142

    .line 1493
    :try_start_12
    filled-new-array {v3, v2}, [I

    move-result-object v4

    .line 1497
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1498
    invoke-direct {p0, v1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1499
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1501
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 1503
    const-string v5, "SeekBar_thumb"

    const-string v6, "16842875_SeekBar_thumb"

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1504
    :cond_3b
    const-string v3, "SeekBar_thumbOffset"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1505
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1506
    const-string v1, "seekBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_59} :catch_5a

    return-void

    :catch_5a
    move-exception p1

    .line 1508
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractCalendar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 9

    .line 1658
    const-string v0, "QCalendarWidget"

    const v1, 0x101035d

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v2, 0xb

    .line 1660
    :try_start_b
    new-array v2, v2, [I

    fill-array-data v2, :array_11e

    .line 1673
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 1674
    invoke-direct {p0, v1, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1675
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x1010347

    .line 1677
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1679
    const-string v4, "CalendarView_selectedDateVerticalBar"

    const-string v5, "16843613_CalendarView_selectedDateVerticalBar"

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v5, v6}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_38
    const v3, 0x1010349

    .line 1681
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1682
    const-string v5, "CalendarView_dateTextAppearance"

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v3, 0x1010348

    .line 1683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1684
    const-string v4, "CalendarView_weekDayTextAppearance"

    invoke-virtual {p0, v3, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1687
    const-string v3, "CalendarView_firstDayOfWeek"

    const v4, 0x101033d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1688
    const-string v3, "CalendarView_focusedMonthDateColor"

    const v4, 0x1010343

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1689
    const-string v3, "CalendarView_selectedWeekBackgroundColor"

    const v4, 0x1010342

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1690
    const-string v3, "CalendarView_showWeekNumber"

    const v4, 0x101033e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1691
    const-string v3, "CalendarView_shownWeekCount"

    const v4, 0x1010341

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, 0x6

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1692
    const-string v3, "CalendarView_unfocusedMonthDateColor"

    const v4, 0x1010344

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1693
    const-string v3, "CalendarView_weekNumberColor"

    const v4, 0x1010345

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1694
    const-string v3, "CalendarView_weekSeparatorLineColor"

    const v4, 0x1010346

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1695
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1696
    const-string v1, "calendarViewStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_118} :catch_119

    return-void

    :catch_119
    move-exception p1

    .line 1698
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :array_11e
    .array-data 4
        0x101033d
        0x1010343
        0x1010342
        0x101033e
        0x1010341
        0x1010344
        0x1010345
        0x1010346
        0x1010347
        0x1010349
        0x1010348
    .end array-data
.end method

.method extractCheckedTextView(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    const v0, 0x10103c8

    .line 1559
    invoke-virtual {p0, v0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const v1, 0x1010108

    .line 1561
    :try_start_a
    filled-new-array {v1}, [I

    move-result-object v2

    .line 1565
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    const v3, 0x101043f

    .line 1566
    invoke-direct {p0, v3, v2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1567
    invoke-direct {p0, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1569
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 1571
    const-string v2, "CheckedTextView_checkMark"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "_CheckedTextView_checkMark"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, p1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1572
    :cond_47
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4a} :catch_4b

    return-object v0

    :catch_4b
    move-exception p1

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method extractCompoundButton(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1418
    invoke-virtual {p0, p2, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1420
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1421
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1422
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const v2, 0x1010107

    .line 1423
    filled-new-array {v2}, [I

    move-result-object v2

    .line 1424
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 1425
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1426
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_4e

    .line 1430
    :try_start_31
    const-string v0, "CompoundButton_button"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "_CompoundButton_button"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p4, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1431
    :cond_4e
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_56

    return-void

    :catch_56
    move-exception p1

    .line 1433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractImageViewInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 8

    .line 1374
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1376
    :try_start_5
    invoke-virtual {p0, p1, v0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V

    const/16 p2, 0x8

    .line 1378
    new-array p2, p2, [I

    fill-array-data p2, :array_e8

    .line 1389
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 1390
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1391
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    const v2, 0x1010119

    .line 1393
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 1395
    const-string v3, "ImageView_src"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, "_ImageView_src"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1397
    :cond_48
    const-string p1, "ImageView_baselineAlignBottom"

    const v2, 0x1010122

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1398
    const-string p1, "ImageView_adjustViewBounds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1399
    const-string p1, "ImageView_maxWidth"

    const v2, 0x101011f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1400
    const-string p1, "ImageView_maxHeight"

    const v2, 0x1010120

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const p1, 0x101011d

    .line 1401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-ltz p1, :cond_b4

    .line 1403
    const-string v2, "ImageView_scaleType"

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->sScaleTypeArray:[Ljava/lang/String;

    aget-object p1, v3, p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b4
    const p1, 0x1010121

    .line 1405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    if-eqz p1, :cond_ca

    .line 1407
    const-string v2, "ImageView_tint"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1409
    :cond_ca
    const-string p1, "ImageView_cropToPadding"

    const v2, 0x1010123

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {v1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1410
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e1} :catch_e2

    return-object v0

    :catch_e2
    move-exception p1

    .line 1412
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    nop

    :array_e8
    .array-data 4
        0x1010119
        0x1010122
        0x101011e
        0x101011f
        0x1010120
        0x101011d
        0x1010123
        0x1010121
    .end array-data
.end method

.method extractListView(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 10

    .line 1634
    const-string v0, "QListView"

    const v1, 0x1010074

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const v2, 0x101012a

    const v3, 0x1010129

    .line 1636
    :try_start_f
    filled-new-array {v3, v2}, [I

    move-result-object v4

    .line 1640
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 1641
    invoke-direct {p0, v1, v4}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1642
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1644
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1646
    const-string v5, "ListView_divider"

    const-string v6, "16842868_ListView_divider"

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1648
    :cond_38
    const-string v3, "ListView_dividerHeight"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1650
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1651
    const-string v1, "listViewStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractProgressBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const v0, 0x1010077

    .line 1480
    invoke-virtual {p0, v0, p4}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    .line 1482
    :try_start_7
    invoke-virtual {p0, p4, p2}, Lorg/qtproject/qt/android/ExtractStyle;->extractProgressBarInfo(Lorg/json/JSONObject;I)V

    .line 1483
    invoke-virtual {p1, p3}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractProgressBarInfo(Lorg/json/JSONObject;I)V
    .registers 10

    const/4 v0, 0x7

    .line 1439
    :try_start_1
    new-array v0, v0, [I

    fill-array-data v0, :array_f2

    .line 1451
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1452
    invoke-direct {p0, p2, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1453
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1455
    const-string v2, "ProgressBar_indeterminateDuration"

    const v3, 0x101013d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0xfa0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1456
    const-string v2, "ProgressBar_minWidth"

    const v3, 0x101013f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x18

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1457
    const-string v2, "ProgressBar_maxWidth"

    const v3, 0x101011f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v5, 0x30

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1458
    const-string v2, "ProgressBar_minHeight"

    const v3, 0x1010140

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1459
    const-string v2, "ProgressBar_maxHeight"

    const v3, 0x1010120

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x1c

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1460
    const-string v2, "ProgressBar_progress_id"

    const v3, 0x102000d

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1461
    const-string v2, "ProgressBar_secondaryProgress_id"

    const v3, 0x102000f

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const v2, 0x101013c

    .line 1463
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_bb

    .line 1465
    const-string v4, "ProgressBar_progressDrawable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ProgressBar_progressDrawable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bb
    const v2, 0x101013b

    .line 1468
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 1470
    const-string v2, "ProgressBar_indeterminateDrawable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, "_ProgressBar_indeterminateDrawable"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1473
    :cond_e8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_eb} :catch_ec

    return-void

    :catch_ec
    move-exception p1

    .line 1475
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :array_f2
    .array-data 4
        0x101013f
        0x101011f
        0x1010140
        0x1010120
        0x101013d
        0x101013c
        0x101013b
    .end array-data
.end method

.method extractSwitch(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 9

    .line 1513
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/16 v1, 0xa

    .line 1515
    :try_start_7
    new-array v1, v1, [I

    fill-array-data v1, :array_10c

    .line 1527
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    const v2, 0x101043f

    .line 1528
    invoke-direct {p0, v2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1529
    invoke-direct {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v1

    const v3, 0x1010142

    .line 1531
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 1533
    const-string v5, "Switch_thumb"

    const-string v6, "16843839_Switch_thumb"

    invoke-virtual {p0, v3, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_37
    const v3, 0x101036f

    .line 1535
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 1537
    const-string v5, "Switch_track"

    const-string v6, "16843839_Switch_track"

    invoke-virtual {p0, v3, v6, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1539
    :cond_53
    const-string v3, "Switch_textOn"

    const v4, 0x1010124

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1540
    const-string v3, "Switch_textOff"

    const v4, 0x1010125

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1541
    const-string v3, "Switch_switchMinWidth"

    const v4, 0x1010370

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1542
    const-string v3, "Switch_switchPadding"

    const v4, 0x1010371

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1543
    const-string v3, "Switch_thumbTextPadding"

    const v4, 0x1010372

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1544
    const-string v3, "Switch_showText"

    const v4, 0x10104ad

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1545
    const-string v3, "Switch_splitTrack"

    const v4, 0x101044c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const v3, 0x101036e

    .line 1548
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1549
    const-string v3, "Switch_switchTextAppearance"

    invoke-virtual {p0, v1, v6}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1551
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1552
    const-string v1, "switchStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_106} :catch_107

    return-void

    :catch_107
    move-exception p1

    .line 1554
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :array_10c
    .array-data 4
        0x1010142
        0x101036f
        0x101036e
        0x1010124
        0x1010125
        0x1010370
        0x1010371
        0x1010372
        0x10104ad
        0x101044c
    .end array-data
.end method

.method extractTabBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 11

    const v0, 0x10102f4

    .line 1742
    const-string v1, "QTabBar"

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const v1, 0x1010129

    const v2, 0x1010329

    const v3, 0x101032a

    .line 1744
    :try_start_12
    filled-new-array {v2, v3, v1}, [I

    move-result-object v4

    .line 1749
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    const v5, 0x10102f3

    .line 1750
    invoke-direct {p0, v5, v4}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1751
    invoke-direct {p0, v4}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1753
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1755
    const-string v6, "LinearLayout_divider"

    const-string v7, "16843507_LinearLayout_divider"

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v7, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1756
    :cond_3e
    const-string v1, "LinearLayout_showDividers"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1757
    const-string v1, "LinearLayout_dividerPadding"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v5, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1759
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 1760
    const-string v1, "actionBarTabBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception p1

    .line 1762
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractTextAppearance(I)Lorg/json/JSONObject;
    .registers 3

    const/4 v0, 0x0

    .line 1081
    invoke-virtual {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearance(IZ)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method extractTextAppearance(IZ)Lorg/json/JSONObject;
    .registers 7

    const/16 v0, 0x8

    .line 1087
    new-array v0, v0, [I

    fill-array-data v0, :array_fe

    .line 1097
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    if-eqz p2, :cond_13

    .line 1100
    iget-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {p2, p1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_17

    .line 1102
    :cond_13
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1103
    :goto_17
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object p2

    .line 1104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const v1, 0x1010095

    .line 1106
    :try_start_23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1107
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1108
    const-string v2, "TextAppearance_textSize"

    const/16 v3, 0xf

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3c
    const v1, 0x1010097

    .line 1109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1110
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_57

    .line 1111
    const-string v2, "TextAppearance_textStyle"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_57
    const v1, 0x1010098

    .line 1112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 1114
    const-string v2, "TextAppearance_textColor"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_71
    const v1, 0x1010096

    .line 1115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1116
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 1117
    const-string v2, "TextAppearance_typeface"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_8b
    const v1, 0x101038c

    .line 1118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1119
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a6

    .line 1120
    const-string v2, "TextAppearance_textAllCaps"

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a6
    const v1, 0x101009a

    .line 1121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 1123
    const-string v2, "TextAppearance_textColorHint"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c0
    const v1, 0x101009b

    .line 1124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_da

    .line 1126
    const-string v2, "TextAppearance_textColorLink"

    invoke-virtual {p0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_da
    const v1, 0x1010099

    .line 1127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1128
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 1129
    const-string v1, "TextAppearance_textColorHighlight"

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1130
    :cond_f4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_f7} :catch_f8

    return-object v0

    :catch_f8
    move-exception p1

    .line 1132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    nop

    :array_fe
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x1010096
        0x101038c
        0x101009a
        0x101009b
        0x1010099
    .end array-data
.end method

.method extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    const v0, 0x1010034

    const/4 v1, 0x0

    .line 1138
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method extractTextAppearanceInformation(ILjava/lang/String;ILandroid/util/AttributeSet;)Lorg/json/JSONObject;
    .registers 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1142
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    .line 1143
    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    const/4 v3, -0x1

    move/from16 v4, p3

    if-ne v4, v3, :cond_18

    const v4, 0x1010034

    .line 1149
    :cond_18
    :try_start_18
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 1150
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 1151
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1154
    filled-new-array {v4}, [I

    move-result-object v4

    .line 1155
    iget v7, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v7, 0x0

    .line 1156
    invoke-virtual {v4, v7, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1157
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v4, 0xf

    const v10, 0x101038c

    const v11, 0x1010097

    const v12, 0x1010096

    const v13, 0x1010095

    const v14, 0x1010099

    if-eq v9, v3, :cond_ac

    .line 1166
    filled-new-array {v13, v11, v12, v10, v14}, [I

    move-result-object v15

    .line 1173
    invoke-static {v15}, Ljava/util/Arrays;->sort([I)V

    move/from16 p2, v10

    .line 1174
    iget-object v10, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v10, v9, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 1175
    invoke-direct {v1, v15}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v10

    .line 1177
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v9, v15, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1178
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v9, v15, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move/from16 p3, v11

    .line 1179
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v9, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    move/from16 p4, v12

    .line 1180
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v9, v12, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    move/from16 v16, v13

    .line 1181
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1182
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_b8

    :cond_ac
    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 v16, v13

    move v11, v3

    move v15, v11

    move v10, v7

    move v12, v10

    :goto_b8
    const/16 v9, 0x44

    .line 1185
    new-array v9, v9, [I

    fill-array-data v9, :array_800

    .line 1258
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    .line 1259
    iget v5, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6, v5, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1260
    invoke-direct {v1, v9}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1262
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v9, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1263
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v9, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 1264
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v5, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 1265
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v5, v13, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .line 1266
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v5, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const v13, 0x1010098

    .line 1268
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    const v14, 0x101009a

    .line 1269
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    const v15, 0x101009b

    .line 1270
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v5, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 1272
    const-string v8, "TextAppearance_textSize"

    invoke-virtual {v2, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1273
    const-string v4, "TextAppearance_textStyle"

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1274
    const-string v4, "TextAppearance_typeface"

    invoke-virtual {v2, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1275
    const-string v4, "TextAppearance_textColorHighlight"

    invoke-virtual {v2, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1276
    const-string v4, "TextAppearance_textAllCaps"

    invoke-virtual {v2, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v13, :cond_159

    .line 1278
    const-string v4, "TextAppearance_textColor"

    invoke-virtual {v1, v13}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_159
    if-eqz v14, :cond_164

    .line 1280
    const-string v4, "TextAppearance_textColorHint"

    invoke-virtual {v1, v14}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_164
    if-eqz v15, :cond_16f

    .line 1282
    const-string v4, "TextAppearance_textColorLink"

    invoke-virtual {v1, v15}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    :cond_16f
    const-string v4, "TextView_editable"

    const v8, 0x101016b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1285
    const-string v4, "TextView_inputMethod"

    const v8, 0x1010168

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    const-string v4, "TextView_numeric"

    const v8, 0x1010165

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1287
    const-string v4, "TextView_digits"

    const v8, 0x1010166

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1288
    const-string v4, "TextView_phoneNumber"

    const v8, 0x1010167

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1289
    const-string v4, "TextView_autoText"

    const v8, 0x101016a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1290
    const-string v4, "TextView_capitalize"

    const v8, 0x1010169

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1291
    const-string v4, "TextView_bufferType"

    const v8, 0x101014e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1292
    const-string v4, "TextView_selectAllOnFocus"

    const v8, 0x101015e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1293
    const-string v4, "TextView_autoLink"

    const v8, 0x10100b0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1294
    const-string v4, "TextView_linksClickable"

    const v8, 0x10100b1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1295
    const-string v4, "TextView_drawableLeft"

    const v8, 0x101016f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_TextView_drawableLeft"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1296
    const-string v4, "TextView_drawableTop"

    const v8, 0x101016d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_drawableTop"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1297
    const-string v4, "TextView_drawableRight"

    const v8, 0x1010170

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_drawableRight"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1298
    const-string v4, "TextView_drawableBottom"

    const v8, 0x101016e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_drawableBottom"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1299
    const-string v4, "TextView_drawableStart"

    const v8, 0x1010392

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_drawableStart"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    const-string v4, "TextView_drawableEnd"

    const v8, 0x1010393

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_drawableEnd"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1301
    const-string v4, "TextView_maxLines"

    const v8, 0x1010153

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1302
    const-string v4, "TextView_drawablePadding"

    const v9, 0x1010171

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v5, v9, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_377
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_377} :catch_7fa

    const v4, 0x1010362

    .line 1305
    :try_start_37a
    const-string v9, "TextView_textCursorDrawable"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_TextView_textCursorDrawable"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3a2
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_3a2} :catch_3a3

    goto :goto_3d7

    .line 1307
    :catch_3a3
    :try_start_3a3
    const-string v9, "TextView_textCursorDrawable"

    iget-object v11, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iget-object v12, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v11, v4, v12}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_TextView_textCursorDrawable"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v4, v11, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1310
    :goto_3d7
    const-string v4, "TextView_maxLines"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1311
    const-string v4, "TextView_maxHeight"

    const v8, 0x1010120

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1312
    const-string v4, "TextView_lines"

    const v8, 0x1010154

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1313
    const-string v4, "TextView_height"

    const v8, 0x1010155

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1314
    const-string v4, "TextView_minLines"

    const v8, 0x1010156

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1315
    const-string v4, "TextView_minHeight"

    const v8, 0x1010140

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1316
    const-string v4, "TextView_maxEms"

    const v8, 0x1010157

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1317
    const-string v4, "TextView_maxWidth"

    const v8, 0x101011f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1318
    const-string v4, "TextView_ems"

    const v8, 0x1010158

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1319
    const-string v4, "TextView_width"

    const v8, 0x1010159

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1320
    const-string v4, "TextView_minEms"

    const v8, 0x101015a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1321
    const-string v4, "TextView_minWidth"

    const v8, 0x101013f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1322
    const-string v4, "TextView_gravity"

    const v8, 0x10100af

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1323
    const-string v4, "TextView_hint"

    const v8, 0x1010150

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1324
    const-string v4, "TextView_text"

    const v8, 0x101014f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1325
    const-string v4, "TextView_scrollHorizontally"

    const v8, 0x101015b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1326
    const-string v4, "TextView_singleLine"

    const v8, 0x101015d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1327
    const-string v4, "TextView_ellipsize"

    const v8, 0x10100ab

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1328
    const-string v4, "TextView_marqueeRepeatLimit"

    const v8, 0x101021d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, 0x3

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    const-string v4, "TextView_includeFontPadding"

    const v8, 0x101015f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1330
    const-string v4, "TextView_cursorVisible"

    const v8, 0x1010160

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    invoke-virtual {v5, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v2, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1331
    const-string v4, "TextView_maxLength"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1332
    const-string v3, "TextView_textScaleX"

    const v4, 0x1010151

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1333
    const-string v3, "TextView_freezesText"

    const v4, 0x101016c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1334
    const-string v3, "TextView_shadowColor"

    const v4, 0x1010161

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1335
    const-string v3, "TextView_shadowDx"

    const v4, 0x1010162

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v11, v4

    invoke-virtual {v2, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1336
    const-string v3, "TextView_shadowDy"

    const v4, 0x1010163

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v11, v4

    invoke-virtual {v2, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1337
    const-string v3, "TextView_shadowRadius"

    const v4, 0x1010164

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1338
    const-string v3, "TextView_enabled"

    const v4, 0x101000e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v9, 0x1

    invoke-virtual {v5, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1339
    const-string v3, "TextView_password"

    const v4, 0x101015c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1340
    const-string v3, "TextView_lineSpacingExtra"

    const v4, 0x1010217

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1341
    const-string v3, "TextView_lineSpacingMultiplier"

    const v4, 0x1010218

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-double v8, v4

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1342
    const-string v3, "TextView_inputType"

    const v4, 0x1010220

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1343
    const-string v3, "TextView_imeOptions"

    const v4, 0x1010264

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1344
    const-string v3, "TextView_imeActionLabel"

    const v4, 0x1010265

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1345
    const-string v3, "TextView_imeActionId"

    const v4, 0x1010266

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1346
    const-string v3, "TextView_privateImeOptions"

    const v4, 0x1010223

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c2
    .catch Ljava/lang/Exception; {:try_start_3a3 .. :try_end_6c2} :catch_7fa

    const v3, 0x10102c5

    .line 1349
    :try_start_6c5
    const-string v4, "TextView_textSelectHandleLeft"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_textSelectHandleLeft"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6ed
    .catch Ljava/lang/Exception; {:try_start_6c5 .. :try_end_6ed} :catch_6ee

    goto :goto_722

    .line 1351
    :catch_6ee
    :try_start_6ee
    const-string v4, "TextView_textSelectHandleLeft"

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_TextView_textSelectHandleLeft"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_722
    .catch Ljava/lang/Exception; {:try_start_6ee .. :try_end_722} :catch_7fa

    :goto_722
    const v3, 0x10102c6

    .line 1355
    :try_start_725
    const-string v4, "TextView_textSelectHandleRight"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_textSelectHandleRight"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74d
    .catch Ljava/lang/Exception; {:try_start_725 .. :try_end_74d} :catch_74e

    goto :goto_782

    .line 1357
    :catch_74e
    :try_start_74e
    const-string v4, "TextView_textSelectHandleRight"

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_TextView_textSelectHandleRight"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_782
    .catch Ljava/lang/Exception; {:try_start_74e .. :try_end_782} :catch_7fa

    :goto_782
    const v3, 0x10102c7

    .line 1361
    :try_start_785
    const-string v4, "TextView_textSelectHandle"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "_TextView_textSelectHandle"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7ad
    .catch Ljava/lang/Exception; {:try_start_785 .. :try_end_7ad} :catch_7ae

    goto :goto_7e2

    .line 1363
    :catch_7ae
    :try_start_7ae
    const-string v4, "TextView_textSelectHandle"

    iget-object v8, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iget-object v9, v1, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v8, v3, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "_TextView_textSelectHandle"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0, v10}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1365
    :goto_7e2
    const-string v0, "TextView_textIsSelectable"

    const v3, 0x1010316

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v5, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1366
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7f9
    .catch Ljava/lang/Exception; {:try_start_7ae .. :try_end_7f9} :catch_7fa

    goto :goto_7fe

    :catch_7fa
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7fe
    return-object v2

    nop

    :array_800
    .array-data 4
        0x101016b
        0x1010168
        0x1010165
        0x1010166
        0x1010167
        0x101016a
        0x1010169
        0x101014e
        0x101015e
        0x10100b0
        0x10100b1
        0x101016f
        0x101016d
        0x1010170
        0x101016e
        0x1010392
        0x1010393
        0x1010153
        0x1010171
        0x1010362
        0x1010120
        0x1010154
        0x1010155
        0x1010156
        0x1010140
        0x1010157
        0x101011f
        0x1010158
        0x1010159
        0x101015a
        0x101013f
        0x10100af
        0x1010150
        0x101014f
        0x101015b
        0x101015d
        0x10100ab
        0x101021d
        0x101015f
        0x1010152
        0x1010160
        0x1010151
        0x101016c
        0x1010161
        0x1010162
        0x1010163
        0x1010164
        0x101000e
        0x1010099
        0x1010098
        0x101009a
        0x101009b
        0x1010095
        0x1010096
        0x1010097
        0x101015c
        0x1010217
        0x1010218
        0x1010220
        0x1010264
        0x1010265
        0x1010266
        0x1010223
        0x10102c5
        0x10102c6
        0x10102c7
        0x1010316
        0x101038c
    .end array-data
.end method

.method extractToolBar(Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;)V
    .registers 13

    .line 1703
    const-string v0, "QToolBar"

    const v1, 0x10104aa

    invoke-virtual {p0, v1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractTextAppearanceInformation(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const v2, 0x101032d

    const v3, 0x10100d4

    const v4, 0x101038a

    const v5, 0x101038b

    const v6, 0x1010129

    .line 1705
    :try_start_18
    filled-new-array {v3, v4, v5, v6, v2}, [I

    move-result-object v7

    .line 1712
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 1713
    invoke-direct {p0, v1, v7}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1714
    invoke-direct {p0, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1716
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_41

    .line 1718
    const-string v9, "ActionBar_background"

    const-string v10, "16843946_ActionBar_background"

    invoke-virtual {p0, v3, v10, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1720
    :cond_41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 1722
    const-string v4, "ActionBar_backgroundStacked"

    const-string v9, "16843946_ActionBar_backgroundStacked"

    invoke-virtual {p0, v3, v9, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1724
    :cond_5a
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 1726
    const-string v4, "ActionBar_backgroundSplit"

    const-string v5, "16843946_ActionBar_backgroundSplit"

    invoke-virtual {p0, v3, v5, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1728
    :cond_73
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_8c

    .line 1730
    const-string v4, "ActionBar_divider"

    const-string v5, "16843946_ActionBar_divider"

    invoke-virtual {p0, v3, v5, v8}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1732
    :cond_8c
    const-string v3, "ActionBar_itemPadding"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1734
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1735
    const-string v1, "actionBarStyle"

    invoke-virtual {p1, v1}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->value(Lorg/json/JSONObject;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_aa} :catch_ab

    return-void

    :catch_ab
    move-exception p1

    .line 1737
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 954
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/qtproject/qt/android/ExtractStyle;->extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V

    return-void
.end method

.method extractViewInformation(ILorg/json/JSONObject;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 13

    .line 959
    :try_start_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 960
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_context:Landroid/content/Context;

    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 961
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/16 v0, 0x2e

    .line 963
    new-array v0, v0, [I

    fill-array-data v0, :array_45e

    .line 1014
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_2a

    .line 1017
    iget-object v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_theme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v3, p4, v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    goto :goto_2e

    .line 1019
    :cond_2a
    invoke-direct {p0, p1, v0}, Lorg/qtproject/qt/android/ExtractStyle;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p4

    .line 1020
    :goto_2e
    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->getArrayListFromIntArray([I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p3, :cond_39

    .line 1023
    const-string v3, "qtClass"

    invoke-virtual {p2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1025
    :cond_39
    const-string p3, "defaultBackgroundColor"

    iget v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultBackgroundColor:I

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1026
    const-string p3, "defaultTextColorPrimary"

    iget v3, p0, Lorg/qtproject/qt/android/ExtractStyle;->defaultTextColor:I

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1027
    const-string p3, "TextView_digits"

    const v3, 0x1010166

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1028
    const-string p3, "View_background"

    const v3, 0x10100d4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_View_background"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1029
    const-string p3, "View_padding"

    const v3, 0x10100d5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1030
    const-string p3, "View_paddingLeft"

    const v3, 0x10100d6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1031
    const-string p3, "View_paddingTop"

    const v3, 0x10100d7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1032
    const-string p3, "View_paddingRight"

    const v3, 0x10100d8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1033
    const-string p3, "View_paddingBottom"

    const v3, 0x10100d9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1034
    const-string p3, "View_paddingBottom"

    const v3, 0x10100d2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1035
    const-string p3, "View_scrollY"

    const v3, 0x10100d3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1036
    const-string p3, "View_id"

    const v3, 0x10100d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1037
    const-string p3, "View_tag"

    const v3, 0x10100d1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string p3, "View_fitsSystemWindows"

    const v3, 0x10100dd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1039
    const-string p3, "View_focusable"

    const v3, 0x10100da

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1040
    const-string p3, "View_focusableInTouchMode"

    const v3, 0x10100db

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1041
    const-string p3, "View_clickable"

    const v3, 0x10100e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1042
    const-string p3, "View_longClickable"

    const v3, 0x10100e6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1043
    const-string p3, "View_saveEnabled"

    const v3, 0x10100e7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1044
    const-string p3, "View_duplicateParentState"

    const v3, 0x10100e9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1045
    const-string p3, "View_visibility"

    const v3, 0x10100dc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1046
    const-string p3, "View_drawingCacheQuality"

    const v3, 0x10100e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1047
    const-string p3, "View_contentDescription"

    const v3, 0x1010273

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1048
    const-string p3, "View_soundEffectsEnabled"

    const v3, 0x1010215

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1049
    const-string p3, "View_hapticFeedbackEnabled"

    const v3, 0x101025e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1050
    const-string p3, "View_scrollbars"

    const v3, 0x10100de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1051
    const-string p3, "View_fadingEdge"

    const v3, 0x10100df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1052
    const-string p3, "View_scrollbarStyle"

    const v3, 0x101007f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1053
    const-string p3, "View_scrollbarFadeDuration"

    const v3, 0x10102a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1054
    const-string p3, "View_scrollbarDefaultDelayBeforeFade"

    const v3, 0x10102a9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1055
    const-string p3, "View_scrollbarSize"

    const v3, 0x1010063

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1056
    const-string p3, "View_scrollbarThumbHorizontal"

    const v3, 0x1010064

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_View_scrollbarThumbHorizontal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    const-string p3, "View_scrollbarThumbVertical"

    const v3, 0x1010065

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_View_scrollbarThumbVertical"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    const-string p3, "View_scrollbarTrackHorizontal"

    const v3, 0x1010066

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_View_scrollbarTrackHorizontal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1059
    const-string p3, "View_scrollbarTrackVertical"

    const v3, 0x1010067

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v6, "_View_scrollbarTrackVertical"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v5}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string p1, "View_isScrollContainer"

    const p3, 0x101024e

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1061
    const-string p1, "View_keepScreenOn"

    const p3, 0x1010216

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1062
    const-string p1, "View_filterTouchesWhenObscured"

    const p3, 0x10102c4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1063
    const-string p1, "View_nextFocusLeft"

    const p3, 0x10100e1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1064
    const-string p1, "View_nextFocusRight"

    const p3, 0x10100e2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1065
    const-string p1, "View_nextFocusUp"

    const p3, 0x10100e3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1066
    const-string p1, "View_nextFocusDown"

    const p3, 0x10100e4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1067
    const-string p1, "View_minWidth"

    const p3, 0x101013f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1068
    const-string p1, "View_minHeight"

    const p3, 0x1010140

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1069
    const-string p1, "View_onClick"

    const p3, 0x101026f

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1070
    const-string p1, "View_overScrollMode"

    const p3, 0x10102c1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1071
    const-string p1, "View_paddingStart"

    const p3, 0x10103b3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1072
    const-string p1, "View_paddingEnd"

    const p3, 0x10103b4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {p4, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1073
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_457
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_457} :catch_458

    return-void

    :catch_458
    move-exception p1

    .line 1075
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :array_45e
    .array-data 4
        0x1010166
        0x10100d4
        0x10100d5
        0x10100d6
        0x10100d7
        0x10100d8
        0x10100d9
        0x10100d2
        0x10100d3
        0x10100d0
        0x10100d1
        0x10100dd
        0x10100da
        0x10100db
        0x10100e5
        0x10100e6
        0x10100e7
        0x10100e9
        0x10100dc
        0x10100e8
        0x1010273
        0x1010215
        0x101025e
        0x10100de
        0x10100df
        0x101007f
        0x10102a8
        0x10102a9
        0x1010063
        0x1010064
        0x1010065
        0x1010066
        0x1010067
        0x101024e
        0x1010216
        0x10102c4
        0x10100e1
        0x10100e2
        0x10100e3
        0x10100e4
        0x101013f
        0x1010140
        0x101026f
        0x10102c1
        0x10103b3
        0x10103b4
    .end array-data
.end method

.method getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 294
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 295
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;
    .registers 6

    .line 322
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 324
    :try_start_5
    const-string v1, "EMPTY_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->EMPTY_STATE_SET:[I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v1, "WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v1, "SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 327
    const-string v1, "SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 328
    const-string v1, "FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 329
    const-string v1, "FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 330
    const-string v1, "FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 331
    const-string v1, "FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v1, "ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v1, "ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v1, "ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 336
    const-string v1, "ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 337
    const-string v1, "ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 338
    const-string v1, "ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 339
    const-string v1, "ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 340
    const-string v1, "PRESSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v1, "PRESSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    const-string v1, "PRESSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v1, "PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 344
    const-string v1, "PRESSED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 345
    const-string v1, "PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 346
    const-string v1, "PRESSED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    const-string v1, "PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 348
    const-string v1, "PRESSED_ENABLED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 349
    const-string v1, "PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 350
    const-string v1, "PRESSED_ENABLED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 351
    const-string v1, "PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 352
    const-string v1, "PRESSED_ENABLED_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 353
    const-string v1, "PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 354
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 355
    const-string v1, "PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET"

    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->PRESSED_ENABLED_FOCUSED_SELECTED_WINDOW_FOCUSED_STATE_SET:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_166
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_166} :catch_167

    return-object v0

    :catch_167
    move-exception p1

    .line 357
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .registers 16

    .line 773
    const-string v0, "color"

    const/4 v1, 0x0

    if-eqz p1, :cond_2bf

    iget-boolean v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_minimal:Z

    if-eqz v2, :cond_b

    goto/16 :goto_2bf

    .line 776
    :cond_b
    iget-object v2, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    if-eqz v2, :cond_3a

    .line 778
    iget-object v3, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 779
    iget-object p1, v2, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    return-object p1

    .line 781
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Different drawable objects points to the same file name \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qt JAVA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_3a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 785
    instance-of v3, p1, Landroid/graphics/Bitmap;

    const/16 v4, 0x64

    const-string v5, "type"

    if-eqz v3, :cond_4c

    .line 786
    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    goto/16 :goto_264

    .line 788
    :cond_4c
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    if-eqz v3, :cond_d7

    .line 789
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 790
    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 792
    :try_start_58
    const-string v0, "gravity"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getGravity()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 793
    const-string v0, "tileModeX"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeX()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v0, "tileModeY"

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getTileModeY()Landroid/graphics/Shader$TileMode;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v0, "antialias"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasAntiAlias"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 796
    const-string v0, "mipMap"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "hasMipMap"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 797
    const-string v0, "tintMode"

    const-class v3, Landroid/graphics/drawable/BitmapDrawable;

    const-string v7, "getTintMode"

    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    const-string v3, "getTint"

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_264

    .line 800
    const-string v0, "tintList"

    invoke-virtual {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getColorStateList(Landroid/content/res/ColorStateList;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_cf} :catch_d1

    goto/16 :goto_264

    :catch_d1
    move-exception p3

    .line 802
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_264

    .line 806
    :cond_d7
    instance-of v3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v3, :cond_e0

    .line 807
    invoke-direct {p0, p1, p2, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getRippleDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 809
    :cond_e0
    instance-of v3, p1, Landroid/graphics/drawable/AnimatedStateListDrawable;

    if-eqz v3, :cond_e9

    .line 810
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimatedStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 812
    :cond_e9
    instance-of v3, p1, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_f2

    .line 813
    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getVectorDrawable(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 815
    :cond_f2
    instance-of v3, p1, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v3, :cond_101

    .line 816
    check-cast p1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 818
    :cond_101
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_10a

    .line 819
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getLayerDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 821
    :cond_10a
    instance-of v3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_113

    .line 822
    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getStateListDrawable(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 824
    :cond_113
    instance-of v3, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_11e

    .line 825
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0, p1}, Lorg/qtproject/qt/android/ExtractStyle;->getGradientDrawable(Landroid/graphics/drawable/GradientDrawable;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 827
    :cond_11e
    instance-of v3, p1, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v3, :cond_129

    .line 828
    check-cast p1, Landroid/graphics/drawable/RotateDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getRotateDrawable(Landroid/graphics/drawable/RotateDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 830
    :cond_129
    instance-of v3, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_134

    .line 831
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getAnimationDrawable(Landroid/graphics/drawable/AnimationDrawable;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    .line 833
    :cond_134
    instance-of v3, p1, Landroid/graphics/drawable/ClipDrawable;

    const-string v7, "mDrawable"

    const-string v8, "drawable"

    const-string v9, "padding"

    if-eqz v3, :cond_181

    .line 835
    :try_start_13e
    const-string v0, "clipDrawable"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 836
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v2, v8, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_167

    .line 839
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    .line 841
    :cond_167
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 842
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2be

    .line 843
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17b
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_17b} :catch_17c

    return-object v2

    :catch_17c
    move-exception p1

    .line 846
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    .line 850
    :cond_181
    instance-of v3, p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v10, 0x1

    if-eqz v3, :cond_1c5

    .line 851
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 852
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 853
    invoke-virtual {p1, v6, v6, v10, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 856
    :try_start_199
    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 857
    invoke-virtual {p2, v6, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p2

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p3, :cond_1ad

    .line 859
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v2

    .line 861
    :cond_1ad
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 862
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2be

    .line 863
    invoke-direct {p0, p2}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v2, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1bf
    .catch Lorg/json/JSONException; {:try_start_199 .. :try_end_1bf} :catch_1c0

    return-object v2

    :catch_1c0
    move-exception p1

    .line 866
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2

    .line 870
    :cond_1c5
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_1ff

    .line 872
    :try_start_1c9
    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 873
    const-class v0, Landroid/graphics/drawable/InsetDrawable;

    const-string v3, "mState"

    invoke-virtual {p0, v0, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 874
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 875
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p3

    .line 876
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6, v7}, Lorg/qtproject/qt/android/ExtractStyle;->getAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz p3, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    move-object v3, v1

    :goto_1f5
    invoke-virtual {p0, v0, p2, v3}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_1f9} :catch_1fa

    return-object p1

    :catch_1fa
    move-exception p3

    .line 878
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_264

    .line 881
    :cond_1ff
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 882
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 883
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const/16 v11, 0x2710

    .line 884
    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    if-lt v3, v10, :cond_213

    if-ge v7, v10, :cond_215

    :cond_213
    move v3, v4

    move v7, v3

    .line 889
    :cond_215
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 890
    invoke-virtual {v0, v6, v6, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 891
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 892
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v3, :cond_263

    .line 893
    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/NinePatchDrawable;

    .line 895
    :try_start_22d
    const-string v6, "9patch"

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 896
    invoke-virtual {p0, v10, p2, v1}, Lorg/qtproject/qt/android/ExtractStyle;->getDrawable(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_243

    .line 898
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_255

    .line 900
    :cond_243
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 901
    invoke-virtual {v3, p3}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_255

    .line 902
    invoke-direct {p0, p3}, Lorg/qtproject/qt/android/ExtractStyle;->getJsonRect(Landroid/graphics/Rect;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v2, v9, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 905
    :cond_255
    :goto_255
    const-string p3, "chunkInfo"

    invoke-direct {p0, v0}, Lorg/qtproject/qt/android/ExtractStyle;->findPatchesMarings(Landroid/graphics/drawable/Drawable;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25e
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_25e} :catch_25f

    return-object v2

    :catch_25f
    move-exception p3

    .line 908
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_263
    move-object v1, v10

    .line 916
    :cond_264
    :goto_264
    :try_start_264
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_extractPath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 917
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_289

    .line 919
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v0, v4, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 920
    :cond_289
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_28c
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_28c} :catch_28d

    goto :goto_291

    :catch_28d
    move-exception p3

    .line 922
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 925
    :goto_291
    :try_start_291
    const-string p3, "image"

    invoke-virtual {v2, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string p3, "path"

    invoke-virtual {v2, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v1, :cond_2af

    .line 928
    const-string p3, "width"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 929
    const-string p3, "height"

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 931
    :cond_2af
    iget-object p3, p0, Lorg/qtproject/qt/android/ExtractStyle;->m_drawableCache:Ljava/util/HashMap;

    new-instance v0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;

    invoke-direct {v0, v2, p1}, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;-><init>(Lorg/json/JSONObject;Ljava/lang/Object;)V

    invoke-virtual {p3, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b9
    .catch Lorg/json/JSONException; {:try_start_291 .. :try_end_2b9} :catch_2ba

    goto :goto_2be

    :catch_2ba
    move-exception p1

    .line 933
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2be
    :goto_2be
    return-object v2

    :cond_2bf
    :goto_2bf
    return-object v1
.end method

.method getStatesList([I)Lorg/json/JSONObject;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 364
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 365
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_46

    aget v4, p1, v3

    move v5, v2

    .line 367
    :goto_d
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v5, v7, :cond_2d

    .line 368
    aget v6, v6, v5

    if-ne v4, v6, :cond_1f

    .line 369
    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_43

    :cond_1f
    neg-int v6, v6

    if-ne v4, v6, :cond_2a

    .line 373
    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_43

    :cond_2a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 380
    :cond_2d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unhandled_state_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v4, :cond_3f

    goto :goto_40

    :cond_3f
    move v8, v2

    :goto_40
    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_46
    return-object v0
.end method

.method getStatesName([I)Ljava/lang/String;
    .registers 10

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_51

    aget v4, p1, v3

    move v5, v2

    .line 390
    :goto_d
    iget-object v6, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStates:[I

    array-length v7, v6

    if-ge v5, v7, :cond_40

    .line 391
    aget v6, v6, v5

    const-string v7, "__"

    if-ne v4, v6, :cond_29

    .line 392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 393
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_21
    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->DrawableStatesLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_29
    neg-int v6, v6

    if-ne v4, v6, :cond_3d

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_35

    .line 399
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_35
    iget-object v4, p0, Lorg/qtproject/qt/android/ExtractStyle;->DisableDrawableStatesLabels:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 406
    :cond_40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_4b

    .line 407
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_4b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 411
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_5c

    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 413
    :cond_5c
    const-string p1, "empty"

    return-object p1
.end method

.method tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_4
    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return-object v0

    .line 312
    :catch_d
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 313
    invoke-virtual {p0, v3, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1e

    return-object v3

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 318
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/qtproject/qt/android/ExtractStyle;->tryGetAccessibleField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

###### Class org.qtproject.qt.android.ExtractStyle.DrawableCache (org.qtproject.qt.android.ExtractStyle$DrawableCache)
.class Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCache"
.end annotation


# instance fields
.field drawable:Ljava/lang/Object;

.field object:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/Object;)V
    .registers 3

    .line 1852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1853
    iput-object p1, p0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->object:Lorg/json/JSONObject;

    .line 1854
    iput-object p2, p0, Lorg/qtproject/qt/android/ExtractStyle$DrawableCache;->drawable:Ljava/lang/Object;

    return-void
.end method

###### Class org.qtproject.qt.android.ExtractStyle.SimpleJsonWriter (org.qtproject.qt.android.ExtractStyle$SimpleJsonWriter)
.class Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleJsonWriter"
.end annotation


# instance fields
.field private m_addComma:Z

.field private m_indentLevel:I

.field private final m_writer:Ljava/io/OutputStreamWriter;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1804
    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 1805
    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 1808
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    return-void
.end method

.method private writeIndent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const/4 v1, 0x0

    iget v2, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    const-string v3, " "

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method beginObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1820
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1821
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1822
    iget v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    const/4 v0, 0x0

    .line 1823
    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    return-void
.end method

.method close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1812
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void
.end method

.method endObject()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1828
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1829
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1830
    iget v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    const/4 v0, 0x0

    .line 1831
    iput-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    return-void
.end method

.method name(Ljava/lang/String;)Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1835
    iget-boolean v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    if-eqz v0, :cond_b

    .line 1836
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1838
    :cond_b
    invoke-direct {p0}, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 1839
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1840
    iput-boolean p1, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    return-object p0
.end method

.method value(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1845
    iget-object v0, p0, Lorg/qtproject/qt/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method
