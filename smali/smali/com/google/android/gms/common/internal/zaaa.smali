###### Class com.google.android.gms.common.internal.zaaa (com.google.android.gms.common.internal.zaaa)
.class final Lcom/google/android/gms/common/internal/zaaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/Response;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Response;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zaaa;->zaa:Lcom/google/android/gms/common/api/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic convert(Lcom/google/android/gms/common/api/Result;)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zaaa;->zaa:Lcom/google/android/gms/common/api/Response;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/Response;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-object v0
.end method
