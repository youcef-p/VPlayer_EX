###### Class com.google.android.play.integrity.internal.ax (com.google.android.play.integrity.internal.ax)
.class public final Lcom/google/android/play/integrity/internal/ax;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/aw;


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/integrity/internal/ax;->a:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/aw;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/ax;

    if-eqz p0, :cond_8

    invoke-direct {v0, p0}, Lcom/google/android/play/integrity/internal/ax;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "instance cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/integrity/internal/ax;->a:Ljava/lang/Object;

    return-object v0
.end method
