###### Class com.google.android.gms.internal.base.zay (com.google.android.gms.internal.base.zay)
.class final Lcom/google/android/gms/internal/base/zay;
.super Lcom/google/android/gms/internal/base/zaw;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field private final zaa:Lcom/google/android/gms/internal/base/zaaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/base/zaaa;I)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/base/zaaa;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/base/zaw;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/base/zay;->zaa:Lcom/google/android/gms/internal/base/zaaa;

    return-void
.end method


# virtual methods
.method final zaa(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/base/zay;->zaa:Lcom/google/android/gms/internal/base/zaaa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/base/zaaa;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
