###### Class com.google.android.gms.common.internal.InternalClientFlags (com.google.android.gms.common.internal.InternalClientFlags)
.class public interface abstract Lcom/google/android/gms/common/internal/InternalClientFlags;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/common/internal/InternalClientFlags;

.field public static final zza:Lcom/google/android/gms/common/internal/InternalClientFlags;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/InternalClientFlags;->DEFAULT:Lcom/google/android/gms/common/internal/InternalClientFlags;

    new-instance v0, Lcom/google/android/gms/common/internal/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/InternalClientFlags;->zza:Lcom/google/android/gms/common/internal/InternalClientFlags;

    return-void
.end method


# virtual methods
.method public abstract catchNetworkCallbackTooManyRequestsException()Z
.end method

.method public abstract enableGoogleSignatureVerifierUidShortCircuit()Z
.end method

.method public abstract isPhoneRefinedFoldableAndTabletLogic()Z
.end method

.method public abstract providerinstallerDynamiteLoadingDisabled()Z
.end method

.method public abstract skipClientThrottlingDryrun()Z
.end method

.method public abstract useApiExceptionOnMissingFeature()Z
.end method

.method public abstract zza()Z
.end method
