###### Class com.google.android.play.core.integrity.bb (com.google.android.play.core.integrity.bb)
.class final Lcom/google/android/play/core/integrity/bb;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# static fields
.field private static a:Lcom/google/android/play/core/integrity/ac;


# direct methods
.method static declared-synchronized a(Landroid/content/Context;Z)Lcom/google/android/play/core/integrity/ac;
    .registers 4

    const-class p1, Lcom/google/android/play/core/integrity/bb;

    monitor-enter p1

    .line 1
    :try_start_3
    sget-object v0, Lcom/google/android/play/core/integrity/bb;->a:Lcom/google/android/play/core/integrity/ac;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google/android/play/core/integrity/ab;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/play/core/integrity/ab;-><init>(Lcom/google/android/play/core/integrity/ad;)V

    invoke-static {p0}, Lcom/google/android/play/integrity/internal/ag;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/play/core/integrity/ab;->a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/ab;

    .line 3
    invoke-interface {v0}, Lcom/google/android/play/core/integrity/ba;->b()Lcom/google/android/play/core/integrity/ac;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/integrity/bb;->a:Lcom/google/android/play/core/integrity/ac;

    :cond_1a
    sget-object p0, Lcom/google/android/play/core/integrity/bb;->a:Lcom/google/android/play/core/integrity/ac;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit p1

    return-object p0

    :catchall_1e
    move-exception p0

    :try_start_1f
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method
