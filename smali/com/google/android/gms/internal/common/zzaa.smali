###### Class com.google.android.gms.internal.common.zzaa (com.google.android.gms.internal.common.zzaa)
.class final Lcom/google/android/gms/internal/common/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Lcom/google/android/gms/internal/common/zzz;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/common/zzad;

.field private volatile zzb:Lcom/google/android/gms/internal/common/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/common/zzz;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/common/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/internal/common/zzad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zza:Lcom/google/android/gms/internal/common/zzad;

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/common/zzz;

    iput-object p1, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:Lcom/google/android/gms/internal/common/zzz;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/common/zzaa;->zzb:Lcom/google/android/gms/internal/common/zzz;

    if-nez v0, :cond_6

    const-string v0, "<supplier that returned null>"

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x13

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
