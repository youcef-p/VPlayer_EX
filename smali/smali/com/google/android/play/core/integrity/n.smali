###### Class com.google.android.play.core.integrity.n (com.google.android.play.core.integrity.n)
.class final Lcom/google/android/play/core/integrity/n;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:I

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;


# direct methods
.method synthetic constructor <init>(ILandroid/app/Activity;Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;Lcom/google/android/play/core/integrity/m;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;-><init>()V

    iput p1, p0, Lcom/google/android/play/core/integrity/n;->a:I

    iput-object p2, p0, Lcom/google/android/play/core/integrity/n;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/play/core/integrity/n;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    return-void
.end method


# virtual methods
.method public final activity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/n;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;

    iget v1, p0, Lcom/google/android/play/core/integrity/n;->a:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;->typeCode()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lcom/google/android/play/core/integrity/n;->b:Landroid/app/Activity;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;->activity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/play/core/integrity/n;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;->standardIntegrityResponse()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    return v0

    :cond_2c
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/play/core/integrity/n;->a:I

    iget-object v1, p0, Lcom/google/android/play/core/integrity/n;->b:Landroid/app/Activity;

    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/play/core/integrity/n;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    mul-int/2addr v0, v2

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final standardIntegrityResponse()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/n;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/n;->c:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/n;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StandardIntegrityDialogRequest{typeCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/play/core/integrity/n;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", standardIntegrityResponse="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final typeCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/integrity/n;->a:I

    return v0
.end method
