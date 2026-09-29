###### Class com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory (com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory)
.class public final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/datatransport/runtime/dagger/internal/Factory<",
        "Ljava/util/concurrent/Executor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    .registers 1

    .line 19
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->access$000()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static executor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 23
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/datatransport/runtime/dagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 8
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->get()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/concurrent/Executor;
    .registers 2

    .line 15
    invoke-static {}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory.InstanceHolder (com.google.android.datatransport.runtime.ExecutionModule_ExecutorFactory$InstanceHolder)
.class final Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;
    .registers 1

    .line 26
    sget-object v0, Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory$InstanceHolder;->INSTANCE:Lcom/google/android/datatransport/runtime/ExecutionModule_ExecutorFactory;

    return-object v0
.end method
