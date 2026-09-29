###### Class com.google.android.play.core.integrity.be (com.google.android.play.core.integrity.be)
.class final Lcom/google/android/play/core/integrity/be;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/core/integrity/StandardIntegrityManager;


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/bs;

.field private final b:Lcom/google/android/play/core/integrity/by;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bs;Lcom/google/android/play/core/integrity/by;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/be;->a:Lcom/google/android/play/core/integrity/bs;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/be;->b:Lcom/google/android/play/core/integrity/by;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/play/core/integrity/be;Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;Ljava/lang/Long;)Lcom/google/android/gms/tasks/Task;
    .registers 10

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->b()J

    move-result-wide v2

    .line 2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()I

    move-result v6

    new-instance v0, Lcom/google/android/play/core/integrity/bx;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/be;->b:Lcom/google/android/play/core/integrity/by;

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/integrity/bx;-><init>(Lcom/google/android/play/core/integrity/by;JJI)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->c()Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    :try_start_a
    iget-object v3, p0, Lcom/google/android/play/core/integrity/be;->b:Lcom/google/android/play/core/integrity/by;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->b()J

    move-result-wide v4

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->c()Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()I

    move-result v8

    new-instance v2, Lcom/google/android/play/core/integrity/bx;

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/integrity/bx;-><init>(Lcom/google/android/play/core/integrity/by;JJI)V

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception v0

    move-object p1, v0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2c
    iget-object v0, p0, Lcom/google/android/play/core/integrity/be;->a:Lcom/google/android/play/core/integrity/bs;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/play/core/integrity/bs;->f(JI)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/integrity/bd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/integrity/bd;-><init>(Lcom/google/android/play/core/integrity/be;Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final showDialog(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;)Lcom/google/android/gms/tasks/Task;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/be;->a:Lcom/google/android/play/core/integrity/bs;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/integrity/bs;->e(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.play.core.integrity.bd (com.google.android.play.core.integrity.bd)
.class public final synthetic Lcom/google/android/play/core/integrity/bd;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/android/play/core/integrity/be;

.field public final synthetic b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/integrity/be;Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/bd;->a:Lcom/google/android/play/core/integrity/be;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/bd;->b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .registers 4

    iget-object v0, p0, Lcom/google/android/play/core/integrity/bd;->a:Lcom/google/android/play/core/integrity/be;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/bd;->b:Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, p1}, Lcom/google/android/play/core/integrity/be;->a(Lcom/google/android/play/core/integrity/be;Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;Ljava/lang/Long;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
