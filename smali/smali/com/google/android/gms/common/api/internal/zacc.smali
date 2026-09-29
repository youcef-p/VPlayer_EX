###### Class com.google.android.gms.common.api.internal.zacc (com.google.android.gms.common.api.internal.zacc)
.class public final Lcom/google/android/gms/common/api/internal/zacc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field public final zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

.field public final zab:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

.field public final zac:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacc;->zaa:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zacc;->zab:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zacc;->zac:Ljava/lang/Runnable;

    return-void
.end method
