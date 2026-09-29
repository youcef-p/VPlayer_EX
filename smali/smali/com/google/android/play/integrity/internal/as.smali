###### Class com.google.android.play.integrity.internal.as (com.google.android.play.integrity.internal.as)
.class final Lcom/google/android/play/integrity/internal/as;
.super Lcom/google/android/play/integrity/internal/aq;
.source "com.google.android.play:integrity@@1.6.0"


# static fields
.field static final a:Lcom/google/android/play/integrity/internal/as;

.field private static final d:[Ljava/lang/Object;


# instance fields
.field final transient b:[Ljava/lang/Object;

.field final transient c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    .line 1
    new-array v2, v0, [Ljava/lang/Object;

    sput-object v2, Lcom/google/android/play/integrity/internal/as;->d:[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/play/integrity/internal/as;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/integrity/internal/as;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v1, Lcom/google/android/play/integrity/internal/as;->a:Lcom/google/android/play/integrity/internal/as;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/aq;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/as;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/play/integrity/internal/as;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/play/integrity/internal/as;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method final b()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_5

    .line 1
    iget-object p1, p0, Lcom/google/android/play/integrity/internal/as;->c:[Ljava/lang/Object;

    array-length p1, p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Lcom/google/android/play/integrity/internal/at;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/aq;->f()Lcom/google/android/play/integrity/internal/ap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object v0

    return-object v0
.end method

.method final e()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/as;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method final g()Lcom/google/android/play/integrity/internal/ap;
    .registers 2

    .line 1
    sget v0, Lcom/google/android/play/integrity/internal/ap;->d:I

    .line 2
    sget-object v0, Lcom/google/android/play/integrity/internal/ar;->a:Lcom/google/android/play/integrity/internal/ap;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final i()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/integrity/internal/aq;->f()Lcom/google/android/play/integrity/internal/ap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/integrity/internal/ap;->g(I)Lcom/google/android/play/integrity/internal/au;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
