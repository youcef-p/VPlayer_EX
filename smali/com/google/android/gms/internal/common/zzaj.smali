###### Class com.google.android.gms.internal.common.zzaj (com.google.android.gms.internal.common.zzaj)
.class final Lcom/google/android/gms/internal/common/zzaj;
.super Lcom/google/android/gms/internal/common/zzae;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/common/zzam;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzam;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/common/zzam;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/common/zzae;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzam;

    return-void
.end method


# virtual methods
.method final zza(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaj;->zza:Lcom/google/android/gms/internal/common/zzam;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/common/zzam;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
