###### Class com.google.android.play.core.integrity.o (com.google.android.play.core.integrity.o)
.class final Lcom/google/android/play/core/integrity/o;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Set;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/o;->b:Ljava/util/Set;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/google/android/play/core/integrity/q;

    iget-object v2, p0, Lcom/google/android/play/core/integrity/o;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/play/core/integrity/q;-><init>(Ljava/lang/String;Ljava/util/Set;Lcom/google/android/play/core/integrity/p;)V

    return-object v1

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties: verdictOptOut"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/play/core/integrity/o;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final setVerdictOptOut(Ljava/util/Set;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/integrity/o;->b:Ljava/util/Set;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null verdictOptOut"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
