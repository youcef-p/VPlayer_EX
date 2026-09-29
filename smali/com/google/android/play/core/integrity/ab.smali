###### Class com.google.android.play.core.integrity.ab (com.google.android.play.core.integrity.ab)
.class final Lcom/google/android/play/core/integrity/ab;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/core/integrity/ba;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/integrity/ad;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/play/core/integrity/ab;
    .registers 3

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/ab;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final b()Lcom/google/android/play/core/integrity/ac;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/ab;->a:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ay;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/integrity/ac;

    iget-object v1, p0, Lcom/google/android/play/core/integrity/ab;->a:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/play/core/integrity/ac;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
