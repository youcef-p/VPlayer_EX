###### Class com.google.android.play.core.integrity.b (com.google.android.play.core.integrity.b)
.class final Lcom/google/android/play/core/integrity/b;
.super Lcom/google/android/play/core/integrity/bv;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/google/android/play/core/integrity/ag;

.field private d:B


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/bv;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/android/play/core/integrity/ag;)Lcom/google/android/play/core/integrity/bv;
    .registers 2

    iput-object p1, p0, Lcom/google/android/play/core/integrity/b;->c:Lcom/google/android/play/core/integrity/ag;

    return-object p0
.end method

.method final b(J)Lcom/google/android/play/core/integrity/bv;
    .registers 3

    iput-wide p1, p0, Lcom/google/android/play/core/integrity/b;->b:J

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/google/android/play/core/integrity/b;->d:B

    return-object p0
.end method

.method final c(Ljava/lang/String;)Lcom/google/android/play/core/integrity/bv;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final d()Lcom/google/android/play/core/integrity/bw;
    .registers 6

    .line 1
    iget-byte v0, p0, Lcom/google/android/play/core/integrity/b;->d:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/google/android/play/core/integrity/b;->c:Lcom/google/android/play/core/integrity/ag;

    if-nez v1, :cond_e

    goto :goto_16

    .line 5
    :cond_e
    new-instance v2, Lcom/google/android/play/core/integrity/bw;

    iget-wide v3, p0, Lcom/google/android/play/core/integrity/b;->b:J

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/google/android/play/core/integrity/bw;-><init>(Ljava/lang/String;JLcom/google/android/play/core/integrity/ag;)V

    return-object v2

    .line 1
    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/integrity/b;->a:Ljava/lang/String;

    if-nez v1, :cond_24

    const-string v1, " token"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget-byte v1, p0, Lcom/google/android/play/core/integrity/b;->d:B

    if-nez v1, :cond_2d

    const-string v1, " requestTokenSessionId"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    iget-object v1, p0, Lcom/google/android/play/core/integrity/b;->c:Lcom/google/android/play/core/integrity/ag;

    if-nez v1, :cond_36

    const-string v1, " integrityDialogWrapper"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
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
