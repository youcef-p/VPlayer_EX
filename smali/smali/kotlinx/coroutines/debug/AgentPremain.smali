###### Class kotlinx.coroutines.debug.AgentPremain (kotlinx.coroutines.debug.AgentPremain)
.class public final Lkotlinx/coroutines/debug/AgentPremain;
.super Ljava/lang/Object;
.source "AgentPremain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0001\rB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/AgentPremain;",
        "",
        "<init>",
        "()V",
        "enableCreationStackTraces",
        "",
        "premain",
        "",
        "args",
        "",
        "instrumentation",
        "Ljava/lang/instrument/Instrumentation;",
        "installSignalHandler",
        "DebugProbesTransformer",
        "kotlinx-coroutines-core"
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
.field public static final INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

.field private static final enableCreationStackTraces:Z


# direct methods
.method public static synthetic $r8$lambda$qtwhjy3HAlNEjQH7oAL6W8vp2zY(Lsun/misc/Signal;)V
    .registers 1

    invoke-static {p0}, Lkotlinx/coroutines/debug/AgentPremain;->installSignalHandler$lambda$1(Lsun/misc/Signal;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlinx/coroutines/debug/AgentPremain;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/AgentPremain;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    const/4 v0, 0x0

    .line 20
    :try_start_8
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 21
    const-string v1, "kotlinx.coroutines.debug.enable.creation.stack.trace"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v0

    .line 20
    :goto_1c
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_21

    goto :goto_2c

    :catchall_21
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 22
    :goto_2c
    invoke-static {v1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_34

    :cond_33
    move-object v0, v1

    :goto_34
    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3d

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_43

    .line 22
    :cond_3d
    sget-object v0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->getEnableCreationStackTraces$kotlinx_coroutines_core()Z

    move-result v0

    .line 20
    :goto_43
    sput-boolean v0, Lkotlinx/coroutines/debug/AgentPremain;->enableCreationStackTraces:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final installSignalHandler()V
    .registers 3

    .line 59
    :try_start_0
    new-instance v0, Lsun/misc/Signal;

    const-string v1, "TRAP"

    invoke-direct {v0, v1}, Lsun/misc/Signal;-><init>(Ljava/lang/String;)V

    new-instance v1, Lkotlinx/coroutines/debug/AgentPremain$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lkotlinx/coroutines/debug/AgentPremain$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lsun/misc/Signal;->handle(Lsun/misc/Signal;Lsun/misc/SignalHandler;)Lsun/misc/SignalHandler;
    :try_end_f
    .catchall {:try_start_0 .. :try_end_f} :catchall_f

    :catchall_f
    return-void
.end method

.method private static final installSignalHandler$lambda$1(Lsun/misc/Signal;)V
    .registers 2

    .line 60
    sget-object p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->isInstalled$kotlinx_coroutines_debug()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 63
    sget-object p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->dumpCoroutines(Ljava/io/PrintStream;)V

    return-void

    .line 65
    :cond_10
    const-string p0, "Cannot perform coroutines dump, debug probes are disabled"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static final premain(Ljava/lang/String;Ljava/lang/instrument/Instrumentation;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 27
    sget-object p0, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->setInstalledStatically$kotlinx_coroutines_core(Z)V

    .line 28
    sget-object p0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    check-cast p0, Ljava/lang/instrument/ClassFileTransformer;

    invoke-interface {p1, p0}, Ljava/lang/instrument/Instrumentation;->addTransformer(Ljava/lang/instrument/ClassFileTransformer;)V

    .line 29
    sget-object p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    sget-boolean p1, Lkotlinx/coroutines/debug/AgentPremain;->enableCreationStackTraces:Z

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->setEnableCreationStackTraces$kotlinx_coroutines_core(Z)V

    .line 30
    sget-object p0, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->INSTANCE:Lkotlinx/coroutines/debug/internal/DebugProbesImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/debug/internal/DebugProbesImpl;->install$kotlinx_coroutines_core()V

    .line 31
    sget-object p0, Lkotlinx/coroutines/debug/AgentPremain;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain;

    invoke-direct {p0}, Lkotlinx/coroutines/debug/AgentPremain;->installSignalHandler()V

    return-void
.end method

###### Class kotlinx.coroutines.debug.AgentPremain.DebugProbesTransformer (kotlinx.coroutines.debug.AgentPremain$DebugProbesTransformer)
.class public final Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;
.super Ljava/lang/Object;
.source "AgentPremain.kt"

# interfaces
.implements Ljava/lang/instrument/ClassFileTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/debug/AgentPremain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DebugProbesTransformer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;",
        "Ljava/lang/instrument/ClassFileTransformer;",
        "<init>",
        "()V",
        "transform",
        "",
        "loader",
        "Ljava/lang/ClassLoader;",
        "className",
        "",
        "classBeingRedefined",
        "Ljava/lang/Class;",
        "protectionDomain",
        "Ljava/security/ProtectionDomain;",
        "classfileBuffer",
        "kotlinx-coroutines-core"
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
.field public static final INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    invoke-direct {v0}, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;-><init>()V

    sput-object v0, Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;->INSTANCE:Lkotlinx/coroutines/debug/AgentPremain$DebugProbesTransformer;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transform(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/Class;Ljava/security/ProtectionDomain;[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/security/ProtectionDomain;",
            "[B)[B"
        }
    .end annotation

    if-eqz p1, :cond_1c

    .line 42
    const-string p3, "kotlin/coroutines/jvm/internal/DebugProbesKt"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_1c

    .line 52
    :cond_b
    sget-object p2, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->INSTANCE:Lkotlinx/coroutines/debug/internal/AgentInstallationType;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lkotlinx/coroutines/debug/internal/AgentInstallationType;->setInstalledStatically$kotlinx_coroutines_core(Z)V

    .line 53
    const-string p2, "DebugProbesKt.bin"

    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return-object p1
.end method

###### Class kotlinx.coroutines.debug.AgentPremain$$ExternalSyntheticLambda0 (kotlinx.coroutines.debug.AgentPremain$$ExternalSyntheticLambda0)
.class public final synthetic Lkotlinx/coroutines/debug/AgentPremain$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lsun/misc/SignalHandler;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lsun/misc/Signal;)V
    .registers 2

    .line 0
    invoke-static {p1}, Lkotlinx/coroutines/debug/AgentPremain;->$r8$lambda$qtwhjy3HAlNEjQH7oAL6W8vp2zY(Lsun/misc/Signal;)V

    return-void
.end method
