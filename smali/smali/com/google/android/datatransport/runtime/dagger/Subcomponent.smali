###### Class com.google.android.datatransport.runtime.dagger.Subcomponent (com.google.android.datatransport.runtime.dagger.Subcomponent)
.class public interface abstract annotation Lcom/google/android/datatransport/runtime/dagger/Subcomponent;
.super Ljava/lang/Object;
.source "Subcomponent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/google/android/datatransport/runtime/dagger/Subcomponent;
        modules = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/dagger/Subcomponent$Factory;,
        Lcom/google/android/datatransport/runtime/dagger/Subcomponent$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract modules()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

###### Class com.google.android.datatransport.runtime.dagger.Subcomponent.Builder (com.google.android.datatransport.runtime.dagger.Subcomponent$Builder)
.class public interface abstract annotation Lcom/google/android/datatransport/runtime/dagger/Subcomponent$Builder;
.super Ljava/lang/Object;
.source "Subcomponent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

###### Class com.google.android.datatransport.runtime.dagger.Subcomponent.Factory (com.google.android.datatransport.runtime.dagger.Subcomponent$Factory)
.class public interface abstract annotation Lcom/google/android/datatransport/runtime/dagger/Subcomponent$Factory;
.super Ljava/lang/Object;
.source "Subcomponent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/dagger/Subcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation
