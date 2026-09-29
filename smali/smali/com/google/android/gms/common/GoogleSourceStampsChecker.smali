###### Class com.google.android.gms.common.GoogleSourceStampsChecker (com.google.android.gms.common.GoogleSourceStampsChecker)
.class public Lcom/google/android/gms/common/GoogleSourceStampsChecker;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field private static final zza:Landroidx/collection/LruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/common/GoogleSourceStampsChecker;->zza:Landroidx/collection/LruCache;

    return-void
.end method
