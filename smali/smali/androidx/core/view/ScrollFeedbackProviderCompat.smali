###### Class androidx.core.view.ScrollFeedbackProviderCompat (androidx.core.view.ScrollFeedbackProviderCompat)
.class public Landroidx/core/view/ScrollFeedbackProviderCompat;
.super Ljava/lang/Object;
.source "ScrollFeedbackProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;,
        Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;,
        Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_11

    .line 37
    new-instance v0, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;

    invoke-direct {v0, p1}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;

    return-void

    .line 39
    :cond_11
    new-instance p1, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl;-><init>(Landroidx/core/view/ScrollFeedbackProviderCompat$1;)V

    iput-object p1, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;

    return-void
.end method

.method public static createProvider(Landroid/view/View;)Landroidx/core/view/ScrollFeedbackProviderCompat;
    .registers 2

    .line 45
    new-instance v0, Landroidx/core/view/ScrollFeedbackProviderCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/ScrollFeedbackProviderCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public onScrollLimit(IIIZ)V
    .registers 6

    .line 79
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;->onScrollLimit(IIIZ)V

    return-void
.end method

.method public onScrollProgress(IIII)V
    .registers 6

    .line 104
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;->onScrollProgress(IIII)V

    return-void
.end method

.method public onSnapToItem(III)V
    .registers 5

    .line 57
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat;->mImpl:Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;

    invoke-interface {v0, p1, p2, p3}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;->onSnapToItem(III)V

    return-void
.end method

###### Class androidx.core.view.ScrollFeedbackProviderCompat.AnonymousClass1 (androidx.core.view.ScrollFeedbackProviderCompat$1)
.class synthetic Landroidx/core/view/ScrollFeedbackProviderCompat$1;
.super Ljava/lang/Object;
.source "ScrollFeedbackProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScrollFeedbackProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderApi35Impl (androidx.core.view.ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl)
.class Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;
.super Ljava/lang/Object;
.source "ScrollFeedbackProviderCompat.java"

# interfaces
.implements Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScrollFeedbackProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollFeedbackProviderApi35Impl"
.end annotation


# instance fields
.field private final mProvider:Landroid/view/ScrollFeedbackProvider;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Landroid/view/ScrollFeedbackProvider;->createProvider(Landroid/view/View;)Landroid/view/ScrollFeedbackProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;->mProvider:Landroid/view/ScrollFeedbackProvider;

    return-void
.end method


# virtual methods
.method public onScrollLimit(IIIZ)V
    .registers 6

    .line 122
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;->mProvider:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    return-void
.end method

.method public onScrollProgress(IIII)V
    .registers 6

    .line 127
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;->mProvider:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollProgress(IIII)V

    return-void
.end method

.method public onSnapToItem(III)V
    .registers 5

    .line 117
    iget-object v0, p0, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderApi35Impl;->mProvider:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/ScrollFeedbackProvider;->onSnapToItem(III)V

    return-void
.end method

###### Class androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderBaseImpl (androidx.core.view.ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl)
.class Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl;
.super Ljava/lang/Object;
.source "ScrollFeedbackProviderCompat.java"

# interfaces
.implements Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScrollFeedbackProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollFeedbackProviderBaseImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/core/view/ScrollFeedbackProviderCompat$1;)V
    .registers 2

    .line 131
    invoke-direct {p0}, Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollLimit(IIIZ)V
    .registers 5

    return-void
.end method

.method public onScrollProgress(IIII)V
    .registers 5

    return-void
.end method

.method public onSnapToItem(III)V
    .registers 4

    return-void
.end method

###### Class androidx.core.view.ScrollFeedbackProviderCompat.ScrollFeedbackProviderImpl (androidx.core.view.ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl)
.class interface abstract Landroidx/core/view/ScrollFeedbackProviderCompat$ScrollFeedbackProviderImpl;
.super Ljava/lang/Object;
.source "ScrollFeedbackProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ScrollFeedbackProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ScrollFeedbackProviderImpl"
.end annotation


# virtual methods
.method public abstract onScrollLimit(IIIZ)V
.end method

.method public abstract onScrollProgress(IIII)V
.end method

.method public abstract onSnapToItem(III)V
.end method
