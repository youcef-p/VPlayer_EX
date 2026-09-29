###### Class com.svpteam.STListener (com.svpteam.STListener)
.class public Lcom/svpteam/STListener;
.super Ljava/lang/Object;
.source "STListener.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native frameAvailable()V
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 12
    invoke-static {}, Lcom/svpteam/STListener;->frameAvailable()V

    return-void
.end method
