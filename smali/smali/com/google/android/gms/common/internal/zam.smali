###### Class com.google.android.gms.common.internal.zam (com.google.android.gms.common.internal.zam)
.class final Lcom/google/android/gms/common/internal/zam;
.super Lcom/google/android/gms/common/internal/zao;
.source "com.google.android.gms:play-services-base@@18.10.1"


# instance fields
.field final synthetic zaa:Landroid/content/Intent;

.field final synthetic zab:Landroidx/fragment/app/Fragment;

.field final synthetic zac:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zam;->zaa:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zam;->zab:Landroidx/fragment/app/Fragment;

    iput p3, p0, Lcom/google/android/gms/common/internal/zam;->zac:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zao;-><init>()V

    return-void
.end method


# virtual methods
.method public final zaa()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zam;->zaa:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zam;->zab:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/google/android/gms/common/internal/zam;->zac:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_b
    return-void
.end method
