###### Class com.google.android.play.core.integrity.l (com.google.android.play.core.integrity.l)
.class final Lcom/google/android/play/core/integrity/l;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private a:I

.field private b:Landroid/app/Activity;

.field private c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

.field private d:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
    .registers 6

    .line 1
    iget-byte v0, p0, Lcom/google/android/play/core/integrity/l;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/play/core/integrity/l;->b:Landroid/app/Activity;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/google/android/play/core/integrity/l;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    if-nez v1, :cond_e

    goto :goto_17

    .line 5
    :cond_e
    new-instance v2, Lcom/google/android/play/core/integrity/n;

    iget v3, p0, Lcom/google/android/play/core/integrity/l;->a:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/google/android/play/core/integrity/n;-><init>(ILandroid/app/Activity;Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;Lcom/google/android/play/core/integrity/m;)V

    return-object v2

    .line 1
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lcom/google/android/play/core/integrity/l;->d:B

    if-nez v1, :cond_25

    const-string v1, " typeCode"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v1, p0, Lcom/google/android/play/core/integrity/l;->b:Landroid/app/Activity;

    if-nez v1, :cond_2e

    const-string v1, " activity"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    iget-object v1, p0, Lcom/google/android/play/core/integrity/l;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    if-nez v1, :cond_37

    const-string v1, " standardIntegrityResponse"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_37
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setActivity(Landroid/app/Activity;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/l;->b:Landroid/app/Activity;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setStandardIntegrityResponse(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/l;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null standardIntegrityResponse"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTypeCode(I)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/play/core/integrity/l;->a:I

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/play/core/integrity/l;->d:B

    return-object p0
.end method
