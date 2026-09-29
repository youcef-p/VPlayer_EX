###### Class com.google.android.gms.internal.base.zaz (com.google.android.gms.internal.base.zaz)
.class final Lcom/google/android/gms/internal/base/zaz;
.super Lcom/google/android/gms/internal/base/zaaa;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field final transient zaa:I

.field final transient zab:I

.field final synthetic zac:Lcom/google/android/gms/internal/base/zaaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zaaa;II)V
    .registers 4

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zaaa;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/base/zaz;->zaa:I

    iput p3, p0, Lcom/google/android/gms/internal/base/zaz;->zab:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/base/zaz;->zab:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/base/zau;->zaa(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    iget v1, p0, Lcom/google/android/gms/internal/base/zaz;->zaa:I

    add-int/2addr p1, v1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/base/zaaa;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/base/zaz;->zab:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/base/zaaa;->zaf(II)Lcom/google/android/gms/internal/base/zaaa;

    move-result-object p1

    return-object p1
.end method

.method final zab()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zax;->zab()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zac()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zax;->zac()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/base/zaz;->zaa:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zad()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/base/zax;->zac()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/base/zaz;->zaa:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/base/zaz;->zab:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zaf(II)Lcom/google/android/gms/internal/base/zaaa;
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/base/zaz;->zab:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/base/zau;->zac(III)V

    iget v0, p0, Lcom/google/android/gms/internal/base/zaz;->zaa:I

    iget-object v1, p0, Lcom/google/android/gms/internal/base/zaz;->zac:Lcom/google/android/gms/internal/base/zaaa;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/base/zaaa;->zaf(II)Lcom/google/android/gms/internal/base/zaaa;

    move-result-object p1

    return-object p1
.end method
