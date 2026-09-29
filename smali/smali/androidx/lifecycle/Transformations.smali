###### Class androidx.lifecycle.Transformations (androidx.lifecycle.Transformations)
.class public final Landroidx/lifecycle/Transformations;
.super Ljava/lang/Object;
.source "Transformations.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001aB\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u001c\u0010\u0004\u001a\u0018\u0012\t\u0012\u0007H\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\t\u0012\u0007H\u0002\u00a2\u0006\u0002\u0008\u00060\u0005H\u0007\u001a8\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u0008H\u0007\u001aJ\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012$\u0010\u0004\u001a \u0012\t\u0012\u0007H\u0003\u00a2\u0006\u0002\u0008\u0006\u0012\u0011\u0012\u000f\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\u0001\u00a2\u0006\u0002\u0008\u00060\u0005H\u0007\u001a>\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0003\"\u0004\u0008\u0001\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00030\u00012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u0002H\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00010\u0008H\u0007\u001a\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0001\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0001H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "map",
        "Landroidx/lifecycle/LiveData;",
        "Y",
        "X",
        "transform",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "mapFunction",
        "Landroidx/arch/core/util/Function;",
        "switchMap",
        "switchMapFunction",
        "distinctUntilChanged",
        "lifecycle-livedata"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$98tZo58L6aBhj8JjEcBYpguqa0s(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroidx/lifecycle/Transformations;->switchMap$lambda$0(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BwsyosKDy1r8_Av_UBqlp5IVnEE(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/Transformations;->map$lambda$0(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E4I8eRLL86MxeijTw6DXO8_T-O4(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/Transformations;->map$lambda$1(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GbNWMx7KSDgmk1Mk1w7WtdX1a2E(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 3

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/Transformations;->distinctUntilChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$skahzJt915myAFMlecWfN1CaVsE(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/Transformations;->switchMap$lambda$0$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 196
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x0

    .line 197
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 198
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    goto :goto_25

    .line 200
    :cond_20
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 202
    :goto_25
    new-instance v2, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, v0}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;-><init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    new-instance v0, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, v2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, p0, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 213
    check-cast v1, Landroidx/lifecycle/LiveData;

    return-object v1
.end method

.method private static final distinctUntilChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 5

    .line 203
    invoke-virtual {p0}, Landroidx/lifecycle/MediatorLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_c

    if-nez p2, :cond_14

    :cond_c
    if-eqz v0, :cond_1a

    .line 207
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 210
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    .line 212
    :cond_1a
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic map(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use kotlin functions, instead of outdated arch core Functions"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 71
    new-instance v1, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;-><init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 72
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static final map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 54
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    goto :goto_23

    .line 56
    :cond_1e
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 58
    :goto_23
    new-instance v1, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 59
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method private static final map$lambda$0(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 3

    .line 58
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final map$lambda$1(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 3

    .line 71
    invoke-interface {p1, p2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final synthetic switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
    .registers 4
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Use kotlin functions, instead of outdated arch core Functions"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "switchMapFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 163
    new-instance v1, Landroidx/lifecycle/Transformations$switchMap$2;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/Transformations$switchMap$2;-><init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    .line 161
    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 181
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public static final switchMap(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/LiveData;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Lkotlin/jvm/functions/Function1<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 127
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 128
    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData;

    if-eqz v1, :cond_31

    .line 129
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 130
    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v1}, Landroidx/lifecycle/MediatorLiveData;-><init>(Ljava/lang/Object;)V

    goto :goto_3c

    .line 132
    :cond_31
    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    goto :goto_3c

    .line 135
    :cond_37
    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    .line 137
    :goto_3c
    new-instance v1, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0, v2}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;)V

    new-instance p1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroidx/lifecycle/Observer;

    invoke-virtual {v2, p0, p1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 149
    check-cast v2, Landroidx/lifecycle/LiveData;

    return-object v2
.end method

.method private static final switchMap$lambda$0(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 4

    .line 138
    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LiveData;

    .line 139
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eq p3, p0, :cond_34

    .line 140
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p3, :cond_18

    .line 141
    iget-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroidx/lifecycle/LiveData;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 143
    :cond_18
    iput-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 144
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz p0, :cond_34

    .line 145
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroidx/lifecycle/LiveData;

    new-instance p1, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance p3, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p3, p1}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p3, Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p0, p3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 148
    :cond_34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final switchMap$lambda$0$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 145
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

###### Class androidx.lifecycle.Transformations.AnonymousClass2 (androidx.lifecycle.Transformations$switchMap$2)
.class public final Landroidx/lifecycle/Transformations$switchMap$2;
.super Ljava/lang/Object;
.source "Transformations.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/Transformations;->switchMap(Landroidx/lifecycle/LiveData;Landroidx/arch/core/util/Function;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TX;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u000bR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/lifecycle/Transformations$switchMap$2",
        "Landroidx/lifecycle/Observer;",
        "liveData",
        "Landroidx/lifecycle/LiveData;",
        "getLiveData",
        "()Landroidx/lifecycle/LiveData;",
        "setLiveData",
        "(Landroidx/lifecycle/LiveData;)V",
        "onChanged",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "lifecycle-livedata"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $result:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic $switchMapFunction:Landroidx/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/util/Function<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;"
        }
    .end annotation
.end field

.field private liveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$N3NHLfwNgWTz1sDLgY8ifetXAT8(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/Transformations$switchMap$2;->onChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/arch/core/util/Function;Landroidx/lifecycle/MediatorLiveData;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/arch/core/util/Function<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;",
            "Landroidx/lifecycle/MediatorLiveData<",
            "TY;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$switchMapFunction:Landroidx/arch/core/util/Function;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onChanged$lambda$0(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;
    .registers 2

    .line 176
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MediatorLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$switchMapFunction:Landroidx/arch/core/util/Function;

    invoke-interface {v0, p1}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 168
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    if-ne v0, p1, :cond_d

    goto :goto_31

    :cond_d
    if-eqz v0, :cond_17

    .line 172
    iget-object v1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MediatorLiveData;->removeSource(Landroidx/lifecycle/LiveData;)V

    .line 174
    :cond_17
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_31

    .line 176
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->$result:Landroidx/lifecycle/MediatorLiveData;

    new-instance v2, Landroidx/lifecycle/Transformations$switchMap$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroidx/lifecycle/Transformations$switchMap$2$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance v1, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v2}, Landroidx/lifecycle/Transformations$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final setLiveData(Landroidx/lifecycle/LiveData;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2;->liveData:Landroidx/lifecycle/LiveData;

    return-void
.end method

###### Class androidx.lifecycle.Transformations$switchMap$2$$ExternalSyntheticLambda0 (androidx.lifecycle.Transformations$switchMap$2$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/lifecycle/Transformations$switchMap$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$switchMap$2$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$switchMap$2$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0, p1}, Landroidx/lifecycle/Transformations$switchMap$2;->$r8$lambda$N3NHLfwNgWTz1sDLgY8ifetXAT8(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.Transformations$$ExternalSyntheticLambda0 (androidx.lifecycle.Transformations$$ExternalSyntheticLambda0)
.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$2:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$2:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$1:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda0;->f$2:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0, v1, v2, p1}, Landroidx/lifecycle/Transformations;->$r8$lambda$98tZo58L6aBhj8JjEcBYpguqa0s(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.Transformations$$ExternalSyntheticLambda1 (androidx.lifecycle.Transformations$$ExternalSyntheticLambda1)
.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/Transformations;->$r8$lambda$BwsyosKDy1r8_Av_UBqlp5IVnEE(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.Transformations$$ExternalSyntheticLambda2 (androidx.lifecycle.Transformations$$ExternalSyntheticLambda2)
.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda2;->f$0:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda2;->f$0:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0, p1}, Landroidx/lifecycle/Transformations;->$r8$lambda$skahzJt915myAFMlecWfN1CaVsE(Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.Transformations$$ExternalSyntheticLambda3 (androidx.lifecycle.Transformations$$ExternalSyntheticLambda3)
.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/Transformations;->$r8$lambda$GbNWMx7KSDgmk1Mk1w7WtdX1a2E(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

###### Class androidx.lifecycle.Transformations$$ExternalSyntheticLambda4 (androidx.lifecycle.Transformations$$ExternalSyntheticLambda4)
.class public final synthetic Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic f$1:Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;->f$1:Landroidx/arch/core/util/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;->f$0:Landroidx/lifecycle/MediatorLiveData;

    iget-object v1, p0, Landroidx/lifecycle/Transformations$$ExternalSyntheticLambda4;->f$1:Landroidx/arch/core/util/Function;

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/Transformations;->$r8$lambda$E4I8eRLL86MxeijTw6DXO8_T-O4(Landroidx/lifecycle/MediatorLiveData;Landroidx/arch/core/util/Function;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
