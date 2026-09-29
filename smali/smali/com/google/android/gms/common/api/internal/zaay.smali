###### Class com.google.android.gms.common.api.internal.zaay (com.google.android.gms.common.api.internal.zaay)
.class final Lcom/google/android/gms/common/api/internal/zaay;
.super Lcom/google/android/gms/common/api/internal/zabq;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaz;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zabq;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaay;->zaa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaaz;

    if-nez v0, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaaz;->zai()V

    return-void
.end method
