###### Class com.google.android.play.integrity.internal.an (com.google.android.play.integrity.internal.an)
.class final Lcom/google/android/play/integrity/internal/an;
.super Lcom/google/android/play/integrity/internal/al;
.source "com.google.android.play:integrity@@1.6.0"


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/ap;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/ap;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/play/integrity/internal/ap;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/play/integrity/internal/al;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/an;->a:Lcom/google/android/play/integrity/internal/ap;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/an;->a:Lcom/google/android/play/integrity/internal/ap;

    invoke-virtual {v0, p1}, Lcom/google/android/play/integrity/internal/ap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
