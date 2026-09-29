###### Class com.google.android.gms.common.internal.zzq (com.google.android.gms.common.internal.zzq)
.class final Lcom/google/android/gms/common/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/zzu;


# instance fields
.field private final zza:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/ServiceConnection;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzq;->zza:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
