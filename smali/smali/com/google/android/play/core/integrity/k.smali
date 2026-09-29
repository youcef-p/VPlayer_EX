###### Class com.google.android.play.core.integrity.k (com.google.android.play.core.integrity.k)
.class final Lcom/google/android/play/core/integrity/k;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method synthetic constructor <init>(JILjava/lang/String;Lcom/google/android/play/core/integrity/j;)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;-><init>()V

    iput-wide p1, p0, Lcom/google/android/play/core/integrity/k;->a:J

    iput p3, p0, Lcom/google/android/play/core/integrity/k;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/core/integrity/k;->b:I

    return v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/play/core/integrity/k;->a:J

    return-wide v0
.end method

.method final c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    check-cast p1, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/k;->a:J

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->b()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_21

    iget v1, p0, Lcom/google/android/play/core/integrity/k;->b:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->a()I

    move-result v3

    if-ne v1, v3, :cond_21

    .line 4
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;->c()Ljava/lang/String;

    return v0

    :cond_21
    return v2
.end method

.method public final hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/play/core/integrity/k;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/integrity/k;->b:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrepareIntegrityTokenRequest{cloudProjectNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/google/android/play/core/integrity/k;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", webViewRequestMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/play/core/integrity/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId=null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
