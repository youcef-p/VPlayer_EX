###### Class com.google.android.play.core.integrity.StandardIntegrityManager (com.google.android.play.core.integrity.StandardIntegrityManager)
.class public interface abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;
    }
.end annotation


# virtual methods
.method public abstract prepareIntegrityToken(Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showDialog(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest (com.google.android.play.core.integrity.StandardIntegrityManager$PrepareIntegrityTokenRequest)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrepareIntegrityTokenRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/i;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/i;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/integrity/i;->setWebViewRequestMode(I)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()J
.end method

.method abstract c()Ljava/lang/String;
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest.Builder (com.google.android.play.core.integrity.StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;
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
.method public abstract build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest;
.end method

.method public abstract setCloudProjectNumber(J)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
.end method

.method public abstract setWebViewRequestMode(I)Lcom/google/android/play/core/integrity/StandardIntegrityManager$PrepareIntegrityTokenRequest$Builder;
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityDialogRequest)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StandardIntegrityDialogRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
    .registers 1

    new-instance v0, Lcom/google/android/play/core/integrity/l;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/l;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract activity()Landroid/app/Activity;
.end method

.method public abstract standardIntegrityResponse()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.end method

.method public abstract typeCode()I
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.Builder (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityDialogRequest$Builder)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
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
.method public abstract build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
.end method

.method public abstract setActivity(Landroid/app/Activity;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
.end method

.method public abstract setStandardIntegrityResponse(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
.end method

.method public abstract setTypeCode(I)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$Builder;
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StandardIntegrityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;,
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/integrity/bc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Z)V
.end method

.method abstract b(I)Z
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.ExceptionDetails (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails)
.class public final Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExceptionDetails"
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/StandardIntegrityException;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/StandardIntegrityException;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;-><init>(Lcom/google/android/play/core/integrity/bc;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/StandardIntegrityException;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/StandardIntegrityException;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;->a(Z)V

    return-void
.end method

.method final b(I)Z
    .registers 3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_8
    iget-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/StandardIntegrityException;

    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;->b()Z

    move-result p1

    return p1
.end method

.method public getException()Lcom/google/android/play/core/integrity/StandardIntegrityException;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$ExceptionDetails;->a:Lcom/google/android/play/core/integrity/StandardIntegrityException;

    return-object v0
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityDialogRequest.StandardIntegrityResponse.TokenResponse (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse)
.class public final Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;
.super Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenResponse"
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse;-><init>(Lcom/google/android/play/core/integrity/bc;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    return-void
.end method


# virtual methods
.method final a(Z)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    instance-of v0, p1, Lcom/google/android/play/core/integrity/bw;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/google/android/play/core/integrity/bw;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/integrity/bw;->b(Z)V

    :cond_c
    return-void
.end method

.method final b(I)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    instance-of v0, p1, Lcom/google/android/play/core/integrity/bw;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/play/core/integrity/bw;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/play/core/integrity/bw;->c()Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public getToken()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;
    .registers 2

    iget-object v0, p0, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityDialogRequest$StandardIntegrityResponse$TokenResponse;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;

    return-object v0
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityToken (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityToken)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StandardIntegrityToken"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract showDialog(Landroid/app/Activity;I)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract token()Ljava/lang/String;
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenProvider (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenProvider)
.class public interface abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenProvider;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StandardIntegrityTokenProvider"
.end annotation


# virtual methods
.method public abstract request(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityToken;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenRequest)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StandardIntegrityTokenRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/integrity/o;

    invoke-direct {v0}, Lcom/google/android/play/core/integrity/o;-><init>()V

    invoke-static {}, Lcom/google/android/play/integrity/internal/aq;->h()Lcom/google/android/play/integrity/internal/aq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/integrity/o;->setVerdictOptOut(Ljava/util/Set;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;

    return-object v0
.end method


# virtual methods
.method public abstract requestHash()Ljava/lang/String;
.end method

.method public abstract verdictOptOut()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest.Builder (com.google.android.play.core.integrity.StandardIntegrityManager$StandardIntegrityTokenRequest$Builder)
.class public abstract Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.6.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
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
.method public abstract build()Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;
.end method

.method public abstract setRequestHash(Ljava/lang/String;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
.end method

.method public abstract setVerdictOptOut(Ljava/util/Set;)Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest$Builder;"
        }
    .end annotation
.end method
