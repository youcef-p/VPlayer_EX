###### Class androidx.core.view.insets.SystemBarStateMonitor (androidx.core.view.insets.SystemBarStateMonitor)
.class Landroidx/core/view/insets/SystemBarStateMonitor;
.super Ljava/lang/Object;
.source "SystemBarStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/SystemBarStateMonitor$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/insets/SystemBarStateMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mColorHint:I

.field private final mDetector:Landroid/view/View;

.field private mInsets:Landroidx/core/graphics/Insets;

.field private mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    .line 53
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    .line 54
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 60
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    goto :goto_23

    :cond_22
    move v0, v2

    .line 61
    :goto_23
    iput v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mColorHint:I

    .line 65
    new-instance v0, Landroidx/core/view/insets/SystemBarStateMonitor$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/core/view/insets/SystemBarStateMonitor$1;-><init>(Landroidx/core/view/insets/SystemBarStateMonitor;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroid/view/View;

    const/4 v1, 0x1

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 82
    new-instance v1, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda0;-><init>(Landroidx/core/view/insets/SystemBarStateMonitor;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 94
    new-instance v1, Landroidx/core/view/insets/SystemBarStateMonitor$2;

    invoke-direct {v1, p0, v2}, Landroidx/core/view/insets/SystemBarStateMonitor$2;-><init>(Landroidx/core/view/insets/SystemBarStateMonitor;I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 185
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/core/view/insets/SystemBarStateMonitor;)I
    .registers 1

    .line 49
    iget p0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mColorHint:I

    return p0
.end method

.method static synthetic access$002(Landroidx/core/view/insets/SystemBarStateMonitor;I)I
    .registers 2

    .line 49
    iput p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mColorHint:I

    return p1
.end method

.method static synthetic access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;
    .registers 1

    .line 49
    iget-object p0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/core/view/insets/SystemBarStateMonitor;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Landroidx/core/view/insets/SystemBarStateMonitor;->getInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private getInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;
    .registers 4

    .line 189
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 190
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 191
    invoke-static {v0, p1}, Landroidx/core/graphics/Insets;->min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method

.method private getInsetsIgnoringVisibility(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;
    .registers 4

    .line 196
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 195
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 198
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    move-result v1

    .line 197
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 199
    invoke-static {v0, p1}, Landroidx/core/graphics/Insets;->min(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method addCallback(Landroidx/core/view/insets/SystemBarStateMonitor$Callback;)V
    .registers 4

    .line 208
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 211
    :cond_9
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    invoke-interface {p1, v0, v1}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onInsetsChanged(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    .line 213
    iget v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mColorHint:I

    invoke-interface {p1, v0}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onColorHintChanged(I)V

    return-void
.end method

.method detachFromWindow()V
    .registers 3

    .line 233
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroid/view/View;

    new-instance v1, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda1;-><init>(Landroidx/core/view/insets/SystemBarStateMonitor;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method hasCallback()Z
    .registers 2

    .line 226
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$detachFromWindow$1$androidx-core-view-insets-SystemBarStateMonitor()V
    .registers 3

    .line 234
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 235
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_11

    .line 236
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mDetector:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method synthetic lambda$new$0$androidx-core-view-insets-SystemBarStateMonitor(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 6

    .line 83
    invoke-direct {p0, p2}, Landroidx/core/view/insets/SystemBarStateMonitor;->getInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 84
    invoke-direct {p0, p2}, Landroidx/core/view/insets/SystemBarStateMonitor;->getInsetsIgnoringVisibility(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 85
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    invoke-virtual {p1, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 86
    :cond_18
    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsets:Landroidx/core/graphics/Insets;

    .line 87
    iput-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mInsetsIgnoringVisibility:Landroidx/core/graphics/Insets;

    .line 88
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_24
    if-ltz v1, :cond_34

    .line 89
    iget-object v2, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;

    invoke-interface {v2, p1, v0}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onInsetsChanged(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_34
    return-object p2
.end method

.method removeCallback(Landroidx/core/view/insets/SystemBarStateMonitor$Callback;)V
    .registers 3

    .line 222
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class androidx.core.view.insets.SystemBarStateMonitor.AnonymousClass1 (androidx.core.view.insets.SystemBarStateMonitor$1)
.class Landroidx/core/view/insets/SystemBarStateMonitor$1;
.super Landroid/view/View;
.source "SystemBarStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/insets/SystemBarStateMonitor;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

.field final synthetic val$rootView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/core/view/insets/SystemBarStateMonitor;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    iput-object p3, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 69
    iget-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->val$rootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 70
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_11

    .line 71
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    .line 73
    :goto_12
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v0}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$000(Landroidx/core/view/insets/SystemBarStateMonitor;)I

    move-result v0

    if-eq v0, p1, :cond_3f

    .line 74
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v0, p1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$002(Landroidx/core/view/insets/SystemBarStateMonitor;I)I

    .line 75
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v0}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_3f

    .line 76
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$1;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;

    invoke-interface {v1, p1}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onColorHintChanged(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_3f
    return-void
.end method

###### Class androidx.core.view.insets.SystemBarStateMonitor.AnonymousClass2 (androidx.core.view.insets.SystemBarStateMonitor$2)
.class Landroidx/core/view/insets/SystemBarStateMonitor$2;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "SystemBarStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/insets/SystemBarStateMonitor;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAnimationSidesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/core/view/insets/SystemBarStateMonitor;


# direct methods
.method constructor <init>(Landroidx/core/view/insets/SystemBarStateMonitor;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-direct {p0, p2}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 97
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->mAnimationSidesMap:Ljava/util/HashMap;

    return-void
.end method

.method private animatesSystemBars(Landroidx/core/view/WindowInsetsAnimationCompat;)Z
    .registers 3

    .line 182
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .registers 3

    .line 172
    invoke-direct {p0, p1}, Landroidx/core/view/insets/SystemBarStateMonitor$2;->animatesSystemBars(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2c

    .line 175
    :cond_7
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->mAnimationSidesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {p1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_18
    if-ltz p1, :cond_2c

    .line 177
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v0}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;

    invoke-interface {v0}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onAnimationEnd()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_18

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1}, Landroidx/core/view/insets/SystemBarStateMonitor$2;->animatesSystemBars(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_27

    .line 105
    :cond_7
    iget-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {p1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_13
    if-ltz p1, :cond_27

    .line 106
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v0}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;

    invoke-interface {v0}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onAnimationStart()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_13

    :cond_27
    :goto_27
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 142
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_e
    if-ltz v1, :cond_44

    .line 143
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 144
    iget-object v4, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->mAnimationSidesMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_41

    .line 146
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 147
    invoke-virtual {v3}, Landroidx/core/view/WindowInsetsAnimationCompat;->getAlpha()F

    move-result v3

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_2e

    .line 149
    iput v3, v0, Landroid/graphics/RectF;->left:F

    :cond_2e
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_34

    .line 152
    iput v3, v0, Landroid/graphics/RectF;->top:F

    :cond_34
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_3a

    .line 155
    iput v3, v0, Landroid/graphics/RectF;->right:F

    :cond_3a
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_40

    .line 158
    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    :cond_40
    or-int/2addr v2, v4

    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 163
    :cond_44
    iget-object p2, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {p2, p1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$200(Landroidx/core/view/insets/SystemBarStateMonitor;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object p2

    .line 164
    iget-object v1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v1}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_56
    if-ltz v1, :cond_6a

    .line 165
    iget-object v3, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->this$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-static {v3}, Landroidx/core/view/insets/SystemBarStateMonitor;->access$100(Landroidx/core/view/insets/SystemBarStateMonitor;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;

    invoke-interface {v3, v2, p2, v0}, Landroidx/core/view/insets/SystemBarStateMonitor$Callback;->onAnimationProgress(ILandroidx/core/graphics/Insets;Landroid/graphics/RectF;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    :cond_6a
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .registers 8

    .line 114
    invoke-direct {p0, p1}, Landroidx/core/view/insets/SystemBarStateMonitor$2;->animatesSystemBars(Landroidx/core/view/WindowInsetsAnimationCompat;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p2

    .line 117
    :cond_7
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getUpperBound()Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 118
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;->getLowerBound()Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 120
    iget v2, v0, Landroidx/core/graphics/Insets;->left:I

    iget v3, v1, Landroidx/core/graphics/Insets;->left:I

    if-eq v2, v3, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 123
    :goto_18
    iget v3, v0, Landroidx/core/graphics/Insets;->top:I

    iget v4, v1, Landroidx/core/graphics/Insets;->top:I

    if-eq v3, v4, :cond_20

    or-int/lit8 v2, v2, 0x2

    .line 126
    :cond_20
    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v1, Landroidx/core/graphics/Insets;->right:I

    if-eq v3, v4, :cond_28

    or-int/lit8 v2, v2, 0x4

    .line 129
    :cond_28
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    if-eq v0, v1, :cond_30

    or-int/lit8 v2, v2, 0x8

    .line 132
    :cond_30
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$2;->mAnimationSidesMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

###### Class androidx.core.view.insets.SystemBarStateMonitor.Callback (androidx.core.view.insets.SystemBarStateMonitor$Callback)
.class interface abstract Landroidx/core/view/insets/SystemBarStateMonitor$Callback;
.super Ljava/lang/Object;
.source "SystemBarStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/SystemBarStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationProgress(ILandroidx/core/graphics/Insets;Landroid/graphics/RectF;)V
.end method

.method public abstract onAnimationStart()V
.end method

.method public abstract onColorHintChanged(I)V
.end method

.method public abstract onInsetsChanged(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)V
.end method

###### Class androidx.core.view.insets.SystemBarStateMonitor$$ExternalSyntheticLambda0 (androidx.core.view.insets.SystemBarStateMonitor$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/insets/SystemBarStateMonitor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/SystemBarStateMonitor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda0;->f$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/insets/SystemBarStateMonitor;->lambda$new$0$androidx-core-view-insets-SystemBarStateMonitor(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.core.view.insets.SystemBarStateMonitor$$ExternalSyntheticLambda1 (androidx.core.view.insets.SystemBarStateMonitor$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/core/view/insets/SystemBarStateMonitor;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/SystemBarStateMonitor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroidx/core/view/insets/SystemBarStateMonitor$$ExternalSyntheticLambda1;->f$0:Landroidx/core/view/insets/SystemBarStateMonitor;

    invoke-virtual {v0}, Landroidx/core/view/insets/SystemBarStateMonitor;->lambda$detachFromWindow$1$androidx-core-view-insets-SystemBarStateMonitor()V

    return-void
.end method
