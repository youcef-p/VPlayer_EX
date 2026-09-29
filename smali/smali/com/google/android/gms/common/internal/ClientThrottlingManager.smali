###### Class com.google.android.gms.common.internal.ClientThrottlingManager (com.google.android.gms.common.internal.ClientThrottlingManager)
.class public interface abstract Lcom/google/android/gms/common/internal/ClientThrottlingManager;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# static fields
.field public static final NO_THROTTLING:I = -0x80000000


# virtual methods
.method public abstract release(I)V
.end method

.method public abstract tryAcquire(ILcom/google/android/gms/common/internal/ConnectionThrottlingConfig;)I
.end method
