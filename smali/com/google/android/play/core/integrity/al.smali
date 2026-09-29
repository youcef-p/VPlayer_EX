###### Class com.google.android.play.core.integrity.al (com.google.android.play.core.integrity.al)
.class public final Lcom/google/android/play/core/integrity/al;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/integrity/internal/aw;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/play/integrity/internal/s;

    const-string v1, "IntegrityService"

    invoke-direct {v0, v1}, Lcom/google/android/play/integrity/internal/s;-><init>(Ljava/lang/String;)V

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/play/integrity/internal/s;

    return-object v0
.end method
