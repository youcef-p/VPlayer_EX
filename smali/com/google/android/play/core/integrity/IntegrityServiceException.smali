###### Class com.google.android.play.core.integrity.IntegrityServiceException (com.google.android.play.core.integrity.IntegrityServiceException)
.class public Lcom/google/android/play/core/integrity/IntegrityServiceException;
.super Lcom/google/android/gms/common/api/ApiException;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:Ljava/lang/Throwable;

.field private final b:Z

.field private c:Z

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(IZLjava/lang/Throwable;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lcom/google/android/play/core/integrity/model/a;->a(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Integrity API error (%d): %s."

    .line 4
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->d:Ljava/lang/Object;

    if-eqz p1, :cond_2a

    .line 5
    iput-boolean p2, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->b:Z

    iput-object p3, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->a:Ljava/lang/Throwable;

    return-void

    .line 1
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ErrorCode should not be 0."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method final a(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->c:Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method final b()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->b:Z

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    .line 2
    :cond_d
    monitor-exit v0

    return v2

    :catchall_f
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->a:Ljava/lang/Throwable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getErrorCode()I
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public isRemediable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/play/core/integrity/IntegrityServiceException;->b:Z

    return v0
.end method
