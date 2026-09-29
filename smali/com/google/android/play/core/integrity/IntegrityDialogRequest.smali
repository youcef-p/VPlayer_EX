###### Class com.google.android.play.core.integrity.IntegrityDialogRequest (com.google.android.play.core.integrity.IntegrityDialogRequest)
.class public abstract Lcom/google/android/play/core/integrity/IntegrityDialogRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;,
        Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
    .registers 1

    new-instance v0, Lcom/google/android/play/core/integrity/c;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract activity()Landroid/app/Activity;
.end method

.method public abstract integrityResponse()Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.end method

.method public abstract typeCode()I
.end method

###### Class com.google.android.play.core.integrity.IntegrityDialogRequest.Builder (com.google.android.play.core.integrity.IntegrityDialogRequest$Builder)
.class public abstract Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/IntegrityDialogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract build()Lcom/google/android/play/core/integrity/IntegrityDialogRequest;
.end method

.method public abstract setActivity(Landroid/app/Activity;)Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
.end method

.method public abstract setIntegrityResponse(Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;)Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
.end method

.method public abstract setTypeCode(I)Lcom/google/android/play/core/integrity/IntegrityDialogRequest$Builder;
.end method

###### Class com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse (com.google.android.play.core.integrity.IntegrityDialogRequest$IntegrityResponse)
.class public abstract Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/IntegrityDialogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IntegrityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;,
        Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/integrity/af;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract b(Z)V
.end method

.method abstract c(I)Z
.end method

###### Class com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse.ExceptionDetails (com.google.android.play.core.integrity.IntegrityDialogRequest$IntegrityResponse$ExceptionDetails)
.class public final Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;
.super Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionDetails"
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/IntegrityServiceException;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/IntegrityServiceException;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;-><init>(Lcom/google/android/play/core/integrity/af;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/IntegrityServiceException;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityServiceException;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/IntegrityServiceException;

    return-object v0
.end method

.method final b(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/IntegrityServiceException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;->a(Z)V

    return-void
.end method

.method final c(I)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    iget-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/IntegrityServiceException;

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;->b()Z

    move-result p1

    return p1
.end method

###### Class com.google.android.play.core.integrity.IntegrityDialogRequest.IntegrityResponse.TokenResponse (com.google.android.play.core.integrity.IntegrityDialogRequest$IntegrityResponse$TokenResponse)
.class public final Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;
.super Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenResponse"
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/IntegrityTokenResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/IntegrityTokenResponse;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse;-><init>(Lcom/google/android/play/core/integrity/af;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityTokenResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    return-object v0
.end method

.method final b(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    instance-of v0, p1, Lcom/google/android/play/core/integrity/av;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/google/android/play/core/integrity/av;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/integrity/av;->b(Z)V

    :cond_c
    return-void
.end method

.method final c(I)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/IntegrityDialogRequest$IntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    instance-of v0, p1, Lcom/google/android/play/core/integrity/av;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/play/core/integrity/av;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/av;->c()Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
