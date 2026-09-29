###### Class com.google.android.play.integrity.internal.av (com.google.android.play.integrity.internal.av)
.class public final Lcom/google/android/play/integrity/internal/av;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/az;


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private volatile b:Lcom/google/android/play/integrity/internal/az;

.field private volatile c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/play/integrity/internal/av;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/play/integrity/internal/az;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/play/integrity/internal/av;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/play/integrity/internal/av;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/av;->b:Lcom/google/android/play/integrity/internal/az;

    return-void
.end method

.method public static b(Lcom/google/android/play/integrity/internal/az;)Lcom/google/android/play/integrity/internal/az;
    .registers 2

    instance-of v0, p0, Lcom/google/android/play/integrity/internal/av;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/play/integrity/internal/av;

    invoke-direct {v0, p0}, Lcom/google/android/play/integrity/internal/av;-><init>(Lcom/google/android/play/integrity/internal/az;)V

    return-object v0
.end method

.method private final declared-synchronized c()Ljava/lang/Object;
    .registers 6

    const-string v0, "Scoped provider was invoked recursively returning different results: "

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/play/integrity/internal/av;->c:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/play/integrity/internal/av;->a:Ljava/lang/Object;

    if-ne v1, v2, :cond_3c

    iget-object v1, p0, Lcom/google/android/play/integrity/internal/av;->b:Lcom/google/android/play/integrity/internal/az;

    invoke-interface {v1}, Lcom/google/android/play/integrity/internal/az;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/play/integrity/internal/av;->c:Ljava/lang/Object;

    if-eq v3, v2, :cond_35

    if-ne v3, v1, :cond_16

    goto :goto_35

    :cond_16
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " & "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_35
    :goto_35
    iput-object v1, p0, Lcom/google/android/play/integrity/internal/av;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/integrity/internal/av;->b:Lcom/google/android/play/integrity/internal/az;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3e

    monitor-exit p0

    return-object v1

    :cond_3c
    monitor-exit p0

    return-object v1

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/av;->c:Ljava/lang/Object;

    sget-object v1, Lcom/google/android/play/integrity/internal/av;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_a

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/av;->c()Ljava/lang/Object;

    move-result-object v0

    :cond_a
    return-object v0
.end method
