###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder)
.class public final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;,
        Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;
    }
.end annotation


# static fields
.field public static final CODEGEN_VERSION:I = 0x2

.field public static final CONFIG:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;->CONFIG:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/config/EncoderConfig<",
            "*>;)V"
        }
    .end annotation

    .line 28
    const-class v0, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 29
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 30
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 31
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 32
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 33
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    sget-object v1, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.ClientMetricsEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientMetricsEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final APPNAMESPACE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final GLOBALMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;

.field private static final LOGSOURCEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final WINDOW_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;

    .line 51
    const-string v0, "window"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->WINDOW_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 57
    const-string v0, "logSourceMetrics"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 58
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x2

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->LOGSOURCEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 63
    const-string v0, "globalMetrics"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x3

    .line 65
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->GLOBALMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 69
    const-string v0, "appNamespace"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x4

    .line 71
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->APPNAMESPACE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->WINDOW_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;->getWindowInternal()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 78
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->LOGSOURCEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;->getLogSourceMetricsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 79
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->GLOBALMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;->getGlobalMetricsInternal()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 80
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->APPNAMESPACE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;->getAppNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ClientMetricsEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.GlobalMetricsEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalMetricsEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;

.field private static final STORAGEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 151
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;

    .line 153
    const-string v0, "storageMetrics"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;->STORAGEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;->STORAGEMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->getStorageMetricsInternal()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$GlobalMetricsEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.LogEventDroppedEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogEventDroppedEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
        ">;"
    }
.end annotation


# static fields
.field private static final EVENTSDROPPEDCOUNT_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;

.field private static final REASON_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 129
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;

    .line 131
    const-string v0, "eventsDroppedCount"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->EVENTSDROPPEDCOUNT_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 137
    const-string v0, "reason"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x3

    .line 139
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->REASON_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->EVENTSDROPPEDCOUNT_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->getEventsDroppedCount()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 146
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->REASON_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->getReason()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogEventDroppedEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.LogSourceMetricsEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogSourceMetricsEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;

.field private static final LOGEVENTDROPPED_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final LOGSOURCE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 107
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;

    .line 109
    const-string v0, "logSource"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 110
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 111
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->LOGSOURCE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 115
    const-string v0, "logEventDropped"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 116
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x2

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->LOGEVENTDROPPED_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->LOGSOURCE_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->getLogSource()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 124
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->LOGEVENTDROPPED_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->getLogEventDroppedList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$LogSourceMetricsEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.ProtoEncoderDoNotUseEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoEncoderDoNotUseEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLIENTMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;

    .line 40
    const-string v0, "clientMetrics"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->of(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->CLIENTMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->CLIENTMETRICS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;->getClientMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    check-cast p1, Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$ProtoEncoderDoNotUseEncoder;->encode(Lcom/google/android/datatransport/runtime/ProtoEncoderDoNotUse;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.StorageMetricsEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StorageMetricsEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;",
        ">;"
    }
.end annotation


# static fields
.field private static final CURRENTCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;

.field private static final MAXCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 166
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;

    .line 168
    const-string v0, "currentCacheSizeBytes"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 169
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->CURRENTCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 174
    const-string v0, "maxCacheSizeBytes"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 175
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x2

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->MAXCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->CURRENTCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->getCurrentCacheSizeBytes()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 183
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->MAXCACHESIZEBYTES_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->getMaxCacheSizeBytes()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$StorageMetricsEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method

###### Class com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder.TimeWindowEncoder (com.google.android.datatransport.runtime.AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder)
.class final Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeWindowEncoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENDMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

.field private static final STARTMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 85
    new-instance v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->INSTANCE:Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;

    .line 87
    const-string v0, "startMs"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 88
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x1

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->STARTMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 93
    const-string v0, "endMs"

    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/google/firebase/encoders/proto/AtProtobuf;->builder()Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    const/4 v2, 0x2

    .line 95
    invoke-virtual {v1, v2}, Lcom/google/firebase/encoders/proto/AtProtobuf;->tag(I)Lcom/google/firebase/encoders/proto/AtProtobuf;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/google/firebase/encoders/proto/AtProtobuf;->build()Lcom/google/firebase/encoders/proto/Protobuf;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->ENDMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;Lcom/google/firebase/encoders/ObjectEncoderContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->STARTMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->getStartMs()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 102
    sget-object v0, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->ENDMS_DESCRIPTOR:Lcom/google/firebase/encoders/FieldDescriptor;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->getEndMs()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;J)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/datatransport/runtime/AutoProtoEncoderDoNotUseEncoder$TimeWindowEncoder;->encode(Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
