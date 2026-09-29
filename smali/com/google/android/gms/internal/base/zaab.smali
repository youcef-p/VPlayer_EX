###### Class com.google.android.gms.internal.base.zaab (com.google.android.gms.internal.base.zaab)
.class final Lcom/google/android/gms/internal/base/zaab;
.super Lcom/google/android/gms/internal/base/zaaa;
.source "com.google.android.gms:play-services-base@@18.10.1"


# static fields
.field static final zaa:Lcom/google/android/gms/internal/base/zaaa;


# instance fields
.field final transient zab:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/base/zaab;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/base/zaab;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/base/zaab;->zaa:Lcom/google/android/gms/internal/base/zaaa;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/base/zaaa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/base/zaab;->zab:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    .line 1
    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/base/zau;->zaa(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaab;->zab:[Ljava/lang/Object;

    .line 2
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zab()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/base/zaab;->zab:[Ljava/lang/Object;

    return-object v0
.end method

.method final zac()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zad()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final zae([Ljava/lang/Object;I)I
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/base/zaab;->zab:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method
