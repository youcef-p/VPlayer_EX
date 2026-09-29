###### Class org.qtproject.qt.android.BackendRegister (org.qtproject.qt.android.BackendRegister)
.class Lorg/qtproject/qt/android/BackendRegister;
.super Ljava/lang/Object;
.source "BackendRegister.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native isNull()Z
.end method

.method static native registerBackend(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method static native unregisterBackend(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
