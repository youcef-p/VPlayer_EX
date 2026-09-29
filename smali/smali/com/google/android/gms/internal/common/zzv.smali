###### Class com.google.android.gms.internal.common.zzv (com.google.android.gms.internal.common.zzv)
.class final synthetic Lcom/google/android/gms/internal/common/zzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/common/zzq;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/common/zzq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzv;->zza:Lcom/google/android/gms/internal/common/zzq;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/common/zzt;

    iget-object v1, p0, Lcom/google/android/gms/internal/common/zzv;->zza:Lcom/google/android/gms/internal/common/zzq;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/common/zzt;-><init>(Lcom/google/android/gms/internal/common/zzx;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/common/zzq;)V

    return-object v0
.end method
