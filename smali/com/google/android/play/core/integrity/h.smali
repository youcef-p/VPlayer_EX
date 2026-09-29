###### Class com.google.android.play.core.integrity.h (com.google.android.play.core.integrity.h)
.class final Lcom/google/android/play/core/integrity/h;
.super Lcom/google/android/play/core/integrity/IntegrityTokenRequest;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Long;


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/play/core/integrity/g;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/integrity/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/integrity/h;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final cloudProjectNumber()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/h;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    check-cast p1, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->nonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/play/core/integrity/h;->b:Ljava/lang/Long;

    if-nez v1, :cond_22

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->cloudProjectNumber()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2e

    goto :goto_2d

    :cond_22
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityTokenRequest;->cloudProjectNumber()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_2e

    :cond_2d
    :goto_2d
    return v0

    :cond_2e
    :goto_2e
    return v2
.end method

.method public final hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/play/core/integrity/h;->b:Ljava/lang/Long;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_14

    .line 2
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_14
    mul-int/2addr v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final nonce()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntegrityTokenRequest{nonce="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/play/core/integrity/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cloudProjectNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/h;->b:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
