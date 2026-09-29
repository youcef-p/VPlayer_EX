###### Class com.google.android.play.core.integrity.ar (com.google.android.play.core.integrity.ar)
.class final Lcom/google/android/play/core/integrity/ar;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final a:Lcom/google/android/play/integrity/internal/ae;

.field private final b:Lcom/google/android/play/integrity/internal/s;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/google/android/play/core/integrity/ay;

.field private final f:Lcom/google/android/play/core/integrity/t;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/s;Lcom/google/android/play/core/integrity/ay;Lcom/google/android/play/core/integrity/t;)V
    .registers 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/integrity/ar;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/ar;->b:Lcom/google/android/play/integrity/internal/s;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/ar;->e:Lcom/google/android/play/core/integrity/ay;

    iput-object p4, p0, Lcom/google/android/play/core/integrity/ar;->f:Lcom/google/android/play/core/integrity/t;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ar;->d:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/integrity/internal/ai;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_23

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    const-string p3, "Phonesky is not installed."

    invoke-virtual {p2, p3, p1}, Lcom/google/android/play/integrity/internal/s;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    return-void

    .line 4
    :cond_23
    new-instance v0, Lcom/google/android/play/integrity/internal/ae;

    sget-object v4, Lcom/google/android/play/core/integrity/as;->a:Landroid/content/Intent;

    new-instance v5, Lcom/google/android/play/core/integrity/am;

    invoke-direct {v5}, Lcom/google/android/play/core/integrity/am;-><init>()V

    const-string v3, "IntegrityService"

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/integrity/internal/ae;-><init>(Landroid/content/Context;Lcom/google/android/play/integrity/internal/s;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/integrity/internal/z;Lcom/google/android/play/integrity/internal/y;)V

    iput-object v0, p0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/play/core/integrity/ar;[BLjava/lang/Long;)Landroid/os/Bundle;
    .registers 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package.name"

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ar;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "nonce"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p0, "playcore.integrity.version.major"

    const/4 p1, 0x1

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "playcore.integrity.version.minor"

    const/4 p1, 0x6

    .line 5
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "playcore.integrity.version.patch"

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_2e

    const-string p0, "cloud.prj"

    .line 7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2e
    new-instance p0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x3

    .line 9
    invoke-static {p1, p0}, Lcom/google/android/play/integrity/internal/d;->b(ILjava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    .line 10
    invoke-static {p0}, Lcom/google/android/play/integrity/internal/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p0, "event_timestamps"

    .line 11
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static bridge synthetic e(Lcom/google/android/play/core/integrity/ar;)Lcom/google/android/play/core/integrity/t;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ar;->f:Lcom/google/android/play/core/integrity/t;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/play/core/integrity/ar;)Lcom/google/android/play/core/integrity/ay;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ar;->e:Lcom/google/android/play/core/integrity/ay;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/google/android/play/core/integrity/ar;)Lcom/google/android/play/integrity/internal/s;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ar;->b:Lcom/google/android/play/integrity/internal/s;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/google/android/play/core/integrity/ar;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/integrity/ar;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method final b(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    if-nez v0, :cond_11

    new-instance p1, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 2
    invoke-direct {p1, v1, p2, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v1, "dialog.intent.type"

    .line 3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ar;->b:Lcom/google/android/play/integrity/internal/s;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/ar;->c:Ljava/lang/String;

    .line 4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "requestAndShowDialog(%s, %s)"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5
    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Lcom/google/android/play/core/integrity/ao;

    move-object v7, v4

    move-object v3, p0

    move-object v6, p1

    move-object v5, p2

    .line 6
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/integrity/ao;-><init>(Lcom/google/android/play/core/integrity/ar;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/os/Bundle;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    invoke-virtual {v0, v2, v4}, Lcom/google/android/play/integrity/internal/ae;->u(Lcom/google/android/play/integrity/internal/t;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ai;->a(Landroid/content/Context;)I

    move-result v0

    const v3, 0x4e904e0

    if-lt v0, v3, :cond_4f

    .line 2
    :try_start_11
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->nonce()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1b} :catch_41

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->cloudProjectNumber()Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->b:Lcom/google/android/play/integrity/internal/s;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "requestIntegrityToken(%s)"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/integrity/internal/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 7
    new-instance v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->a:Lcom/google/android/play/integrity/internal/ae;

    new-instance v3, Lcom/google/android/play/core/integrity/an;

    move-object v8, v5

    move-object v4, p0

    move-object v9, p1

    .line 8
    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/integrity/an;-><init>(Lcom/google/android/play/core/integrity/ar;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V

    invoke-virtual {v0, v3, v5}, Lcom/google/android/play/integrity/internal/ae;->u(Lcom/google/android/play/integrity/internal/t;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_41
    move-exception v0

    move-object p1, v0

    .line 3
    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v1, -0xd

    .line 4
    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4f
    new-instance p1, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/16 v0, -0xe

    .line 11
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5b
    new-instance p1, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/4 v0, -0x2

    .line 13
    invoke-direct {p1, v0, v2, v1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/play/core/integrity/IntegrityDialogRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->integrityResponse()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->typeCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_18
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->integrityResponse()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;->b(Z)V

    iget-object v0, p0, Lcom/google/android/play/core/integrity/ar;->b:Lcom/google/android/play/integrity/internal/s;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->typeCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "checkAndShowDialog(%s)"

    invoke-virtual {v0, v4, v3}, Lcom/google/android/play/integrity/internal/s;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->activity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    .line 7
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->typeCode()I

    move-result v4

    const-string v5, "dialog.intent.type"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/google/android/play/core/integrity/ar;->c:Ljava/lang/String;

    const-string v5, "package.name"

    .line 9
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "playcore.integrity.version.major"

    .line 10
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "playcore.integrity.version.minor"

    const/4 v4, 0x6

    .line 11
    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "playcore.integrity.version.patch"

    .line 12
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->integrityResponse()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;

    if-eqz v2, :cond_79

    check-cast v1, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;->a()Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/play/core/integrity/av;

    if-eqz v2, :cond_79

    .line 15
    check-cast v1, Lcom/google/android/play/core/integrity/av;

    invoke-virtual {v1}, Lcom/google/android/play/core/integrity/av;->a()J

    move-result-wide v1

    const-string v4, "request.token.sid"

    .line 16
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    :cond_79
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest;->integrityResponse()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;

    if-eqz v1, :cond_90

    check-cast p1, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;->a()Lcom/google/android/play/core/integrity/IntegrityServiceException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;->getErrorCode()I

    move-result p1

    const-string v1, "error.to.remediate"

    .line 19
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    :cond_90
    invoke-virtual {p0, v0, v3}, Lcom/google/android/play/core/integrity/ar;->b(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.play.core.integrity.am (com.google.android.play.core.integrity.am)
.class public final synthetic Lcom/google/android/play/core/integrity/am;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/z;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/play/integrity/internal/m;->b(Landroid/os/IBinder;)Lcom/google/android/play/integrity/internal/n;

    move-result-object p1

    return-object p1
.end method
