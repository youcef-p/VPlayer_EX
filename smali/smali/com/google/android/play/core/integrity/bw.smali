###### Class com.google.android.play.core.integrity.bw (com.google.android.play.core.integrity.bw)
.class final Lcom/google/android/play/core/integrity/bw;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Lcom/google/android/play/core/integrity/ag;

.field private d:Z

.field private final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/google/android/play/core/integrity/ag;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/integrity/bw;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bw;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/bw;->c:Lcom/google/android/play/core/integrity/ag;

    iput-wide p2, p0, Lcom/google/android/play/core/integrity/bw;->b:J

    return-void
.end method


# virtual methods
.method final a()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/integrity/bw;->b:J

    return-wide v0
.end method

.method final b(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/bw;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/play/core/integrity/bw;->d:Z

    monitor-exit p1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method final c()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bw;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/play/core/integrity/bw;->d:Z

    xor-int/lit8 v1, v1, 0x1

    monitor-exit v0

    return v1

    :catchall_9
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public final showDialog(Landroid/app/Activity;I)Lcom/google/android/gms/tasks/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bw;->c:Lcom/google/android/play/core/integrity/ag;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/play/core/integrity/ag;->a(Landroid/app/Activity;I)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final token()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bw;->a:Ljava/lang/String;

    return-object v0
.end method
