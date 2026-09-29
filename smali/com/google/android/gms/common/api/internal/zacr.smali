###### Class com.google.android.gms.common.api.internal.zacr (com.google.android.gms.common.api.internal.zacr)
.class final Lcom/google/android/gms/common/api/internal/zacr;
.super Lcom/google/android/gms/internal/base/zas;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zacs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacs;Landroid/os/Looper;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/common/api/internal/zacs;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zas;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 12
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3b

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "TransformationResultHandler received unknown message type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransformedResultImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime exception on the transformation worker thread: "

    const-string v2, "TransformedResultImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    throw p1

    .line 6
    :cond_45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zacr;->zaa:Lcom/google/android/gms/common/api/internal/zacs;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacs;->zaf()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_50
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacs;->zae()Lcom/google/android/gms/common/api/internal/zacs;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zacs;

    if-nez p1, :cond_69

    .line 8
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Transform returned null"

    const/16 v3, 0xd

    invoke-direct {p1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zacs;->zac(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_7a

    .line 11
    :cond_69
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/zach;

    if-eqz v2, :cond_77

    .line 9
    check-cast p1, Lcom/google/android/gms/common/api/internal/zach;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zach;->zaa()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zacs;->zac(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_7a

    .line 10
    :cond_77
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zacs;->zaa(Lcom/google/android/gms/common/api/PendingResult;)V

    .line 11
    :goto_7a
    monitor-exit v1

    return-void

    :catchall_7c
    move-exception p1

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_50 .. :try_end_7e} :catchall_7c

    throw p1
.end method
