###### Class com.google.android.gms.internal.common.zzp (com.google.android.gms.internal.common.zzp)
.class final Lcom/google/android/gms/internal/common/zzp;
.super Lcom/google/android/gms/internal/common/zzo;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/common/zzq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/common/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/common/zzp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/common/zzp;->zza:Lcom/google/android/gms/internal/common/zzq;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzo;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(C)Z
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method
