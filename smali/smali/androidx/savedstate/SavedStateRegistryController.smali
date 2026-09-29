###### Class androidx.savedstate.SavedStateRegistryController (androidx.savedstate.SavedStateRegistryController)
.class public final Landroidx/savedstate/SavedStateRegistryController;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/SavedStateRegistryController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\u000c\u001a\u00020\u000b2\u000e\u0010\r\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000fH\u0007J\u0014\u0010\u0010\u001a\u00020\u000b2\n\u0010\u0011\u001a\u00060\u000ej\u0002`\u000fH\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/savedstate/SavedStateRegistryController;",
        "",
        "impl",
        "Landroidx/savedstate/internal/SavedStateRegistryImpl;",
        "<init>",
        "(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V",
        "savedStateRegistry",
        "Landroidx/savedstate/SavedStateRegistry;",
        "getSavedStateRegistry",
        "()Landroidx/savedstate/SavedStateRegistry;",
        "performAttach",
        "",
        "performRestore",
        "savedState",
        "Landroid/os/Bundle;",
        "Landroidx/savedstate/SavedState;",
        "performSave",
        "outBundle",
        "Companion",
        "savedstate"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;


# instance fields
.field private final impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

.field private final savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/savedstate/SavedStateRegistryController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/savedstate/SavedStateRegistryController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    return-void
.end method

.method private constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 24
    new-instance v0, Landroidx/savedstate/SavedStateRegistry;

    invoke-direct {v0, p1}, Landroidx/savedstate/SavedStateRegistry;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    iput-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V

    return-void
.end method

.method public static final create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/savedstate/SavedStateRegistryController;->Companion:Landroidx/savedstate/SavedStateRegistryController$Companion;

    invoke-virtual {v0, p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .registers 2

    .line 24
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->savedStateRegistry:Landroidx/savedstate/SavedStateRegistry;

    return-object v0
.end method

.method public final performAttach()V
    .registers 2

    .line 28
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performAttach()V

    return-void
.end method

.method public final performRestore(Landroid/os/Bundle;)V
    .registers 3

    .line 33
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0, p1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performRestore$savedstate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final performSave(Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController;->impl:Landroidx/savedstate/internal/SavedStateRegistryImpl;

    invoke-virtual {v0, p1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;->performSave$savedstate(Landroid/os/Bundle;)V

    return-void
.end method

###### Class androidx.savedstate.SavedStateRegistryController.Companion (androidx.savedstate.SavedStateRegistryController$Companion)
.class public final Landroidx/savedstate/SavedStateRegistryController$Companion;
.super Ljava/lang/Object;
.source "SavedStateRegistryController.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/savedstate/SavedStateRegistryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/savedstate/SavedStateRegistryController$Companion;",
        "",
        "<init>",
        "()V",
        "create",
        "Landroidx/savedstate/SavedStateRegistryController;",
        "owner",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "savedstate"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$mYKAg7nh_JcP4XSEzfHJKM82YOw(Landroidx/savedstate/SavedStateRegistryOwner;)Lkotlin/Unit;
    .registers 1

    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->create$lambda$0(Landroidx/savedstate/SavedStateRegistryOwner;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Landroidx/savedstate/SavedStateRegistryController$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$0(Landroidx/savedstate/SavedStateRegistryOwner;)Lkotlin/Unit;
    .registers 3

    .line 48
    invoke-interface {p0}, Landroidx/savedstate/SavedStateRegistryOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/savedstate/Recreator;

    invoke-direct {v1, p0}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroidx/savedstate/internal/SavedStateRegistryImpl;

    .line 45
    new-instance v1, Landroidx/savedstate/SavedStateRegistryController$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroidx/savedstate/SavedStateRegistryController$Companion$$ExternalSyntheticLambda0;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 46
    invoke-direct {v0, p1, v1}, Landroidx/savedstate/internal/SavedStateRegistryImpl;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;Lkotlin/jvm/functions/Function0;)V

    .line 50
    new-instance p1, Landroidx/savedstate/SavedStateRegistryController;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/savedstate/SavedStateRegistryController;-><init>(Landroidx/savedstate/internal/SavedStateRegistryImpl;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1
.end method

###### Class androidx.savedstate.SavedStateRegistryController$Companion$$ExternalSyntheticLambda0 (androidx.savedstate.SavedStateRegistryController$Companion$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/savedstate/SavedStateRegistryController$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroidx/savedstate/SavedStateRegistryOwner;


# direct methods
.method public synthetic constructor <init>(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistryController$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Landroidx/savedstate/SavedStateRegistryController$Companion$$ExternalSyntheticLambda0;->f$0:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-static {v0}, Landroidx/savedstate/SavedStateRegistryController$Companion;->$r8$lambda$mYKAg7nh_JcP4XSEzfHJKM82YOw(Landroidx/savedstate/SavedStateRegistryOwner;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
