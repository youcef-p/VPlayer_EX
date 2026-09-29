###### Class com.google.android.gms.common.api.internal.zaag (com.google.android.gms.common.api.internal.zaag)
.class public final Lcom/google/android/gms/common/api/internal/zaag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.10.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zaba;


# instance fields
.field private final zaa:Lcom/google/android/gms/common/api/internal/zabd;

.field private zab:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 1

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zaag;->zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    return-object p1
.end method

.method public final zac(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacu;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/common/api/internal/zacu;->zaa(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$Client;

    const-string v2, "Appropriate Api was not requested."

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v2

    if-nez v2, :cond_37

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->zab:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 7
    :cond_37
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->run(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    :try_end_3a
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object p1

    :catch_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaae;

    .line 8
    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zaae;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaba;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    return-object p1
.end method

.method public final zad()Z
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v0, :cond_5

    goto :goto_2a

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zaaz;->zah:Ljava/util/Set;

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zacs;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacs;->zab()V

    goto :goto_1a

    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return v0

    :cond_2c
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public final zae()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaaf;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zaaf;-><init>(Lcom/google/android/gms/common/api/internal/zaag;Lcom/google/android/gms/common/api/internal/zaba;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabd;->zar(Lcom/google/android/gms/common/api/internal/zabb;)V

    :cond_11
    return-void
.end method

.method public final zaf(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zag(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 4

    return-void
.end method

.method public final zah(I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabd;->zaq(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->zah:Lcom/google/android/gms/common/api/internal/zabt;

    .line 2
    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zabt;->zac(IZ)V

    return-void
.end method

.method final zai()V
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zab:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabd;->zag:Lcom/google/android/gms/common/api/internal/zaaz;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaaz;->zai:Lcom/google/android/gms/common/api/internal/zacu;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zacu;->zab()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaag;->zad()Z

    :cond_13
    return-void
.end method

.method final synthetic zaj()Lcom/google/android/gms/common/api/internal/zabd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaag;->zaa:Lcom/google/android/gms/common/api/internal/zabd;

    return-object v0
.end method
