###### Class com.google.android.play.integrity.internal.ao (com.google.android.play.integrity.internal.ao)
.class final Lcom/google/android/play/integrity/internal/ao;
.super Lcom/google/android/play/integrity/internal/ap;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field final transient a:I

.field final transient b:I

.field final synthetic c:Lcom/google/android/play/integrity/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ap;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/ap;-><init>()V

    iput p2, p0, Lcom/google/android/play/integrity/internal/ao;->a:I

    iput p3, p0, Lcom/google/android/play/integrity/internal/ao;->b:I

    return-void
.end method


# virtual methods
.method final b()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/am;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/play/integrity/internal/ao;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/play/integrity/internal/ao;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final c()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/am;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/play/integrity/internal/ao;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method final e()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/am;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f(II)Lcom/google/android/play/integrity/internal/ap;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/play/integrity/internal/ao;->b:I

    invoke-static {p1, p2, v0}, Lcom/google/android/play/integrity/internal/aj;->c(III)V

    iget v0, p0, Lcom/google/android/play/integrity/internal/ao;->a:I

    iget-object v1, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/play/integrity/internal/ap;->f(II)Lcom/google/android/play/integrity/internal/ap;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/play/integrity/internal/ao;->b:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/play/integrity/internal/aj;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ao;->c:Lcom/google/android/play/integrity/internal/ap;

    iget v1, p0, Lcom/google/android/play/integrity/internal/ao;->a:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/play/integrity/internal/ap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/play/integrity/internal/ao;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/play/integrity/internal/ap;->f(II)Lcom/google/android/play/integrity/internal/ap;

    move-result-object p1

    return-object p1
.end method
