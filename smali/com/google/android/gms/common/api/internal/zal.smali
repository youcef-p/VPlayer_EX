###### Class com.google.android.gms.common.api.internal.zal (com.google.android.gms.common.api.internal.zal)
.class public final Lcom/google/android/gms/common/api/internal/zal;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:Landroidx/collection/ArrayMap;

.field private final zab:Landroidx/collection/ArrayMap;

.field private final zac:Landroidx/collection/ArrayMap;

.field private final zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private zae:I

.field private zaf:Z


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 2
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Landroidx/collection/ArrayMap;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaf:Z

    new-instance v0, Landroidx/collection/ArrayMap;

    .line 4
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/HasApiKey;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/api/HasApiKey;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v2, v1, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    .line 8
    invoke-virtual {v2, v1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_42
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    .line 9
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:I

    return-void
.end method


# virtual methods
.method public final zaa()Ljava/util/Set;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/ApiKey;)Lcom/google/android/gms/common/api/HasApiKey;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/HasApiKey;

    return-object p1
.end method

.method public final zac()Lcom/google/android/gms/tasks/Task;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final zad(Lcom/google/android/gms/common/api/internal/ApiKey;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zal;->zaa:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zal;->zac:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v1, p1, p3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:I

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zaf:Z

    :cond_19
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zae:I

    if-nez p1, :cond_36

    iget-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zaf:Z

    if-eqz p1, :cond_2c

    new-instance p1, Lcom/google/android/gms/common/api/AvailabilityException;

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/AvailabilityException;-><init>(Landroidx/collection/ArrayMap;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_31

    .line 7
    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zad:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 5
    :goto_31
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zal;->zab:Landroidx/collection/ArrayMap;

    .line 7
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->clear()V

    :cond_36
    return-void
.end method
