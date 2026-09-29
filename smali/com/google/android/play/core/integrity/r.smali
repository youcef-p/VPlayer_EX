###### Class com.google.android.play.core.integrity.r (com.google.android.play.core.integrity.r)
.class public final Lcom/google/android/play/core/integrity/r;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"

# interfaces
.implements Lcom/google/android/play/core/integrity/t;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Lcom/google/android/gms/common/api/ApiException;
    .registers 5

    .line 1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    :cond_a
    const-string v2, "is.error.remediable"

    .line 2
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3
    new-instance v2, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    .line 4
    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(IZLjava/lang/Throwable;)V

    return-object v2
.end method
