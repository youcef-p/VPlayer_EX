###### Class com.google.android.datatransport.runtime.AutoValue_EventInternal (com.google.android.datatransport.runtime.AutoValue_EventInternal)
.class final Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
.super Lcom/google/android/datatransport/runtime/EventInternal;
.source "AutoValue_EventInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;
    }
.end annotation


# instance fields
.field private final autoMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final code:Ljava/lang/Integer;

.field private final encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

.field private final eventMillis:J

.field private final transportName:Ljava/lang/String;

.field private final uptimeMillis:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/datatransport/runtime/EncodedPayload;",
            "JJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/EventInternal;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    .line 32
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 33
    iput-wide p4, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 34
    iput-wide p6, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 35
    iput-object p8, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$1;)V
    .registers 10

    .line 9
    invoke-direct/range {p0 .. p8}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 86
    :cond_4
    instance-of v1, p1, Lcom/google/android/datatransport/runtime/EventInternal;

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    .line 87
    check-cast p1, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 88
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    if-nez v1, :cond_22

    .line 89
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_59

    goto :goto_2c

    :cond_22
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    :goto_2c
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 90
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/datatransport/runtime/EncodedPayload;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    .line 91
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_59

    iget-wide v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    .line 92
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_59

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getAutoMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    return v0

    :cond_59
    return v2
.end method

.method protected getAutoMetadata()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getCode()Ljava/lang/Integer;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    return-object v0
.end method

.method public getEventMillis()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    return-wide v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    return-object v0
.end method

.method public getUptimeMillis()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 102
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 104
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_15
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 106
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EncodedPayload;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 108
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 110
    iget-wide v2, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventInternal{transportName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->transportName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encodedPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->eventMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->uptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;->autoMetadata:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.datatransport.runtime.AutoValue_EventInternal.AnonymousClass1 (com.google.android.datatransport.runtime.AutoValue_EventInternal$1)
.class synthetic Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$1;
.super Ljava/lang/Object;
.source "AutoValue_EventInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.datatransport.runtime.AutoValue_EventInternal.Builder (com.google.android.datatransport.runtime.AutoValue_EventInternal$Builder)
.class final Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;
.super Lcom/google/android/datatransport/runtime/EventInternal$Builder;
.source "AutoValue_EventInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private autoMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private code:Ljava/lang/Integer;

.field private encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

.field private eventMillis:Ljava/lang/Long;

.field private transportName:Ljava/lang/String;

.field private uptimeMillis:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/datatransport/runtime/EventInternal;
    .registers 13

    .line 174
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->transportName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 175
    const-string v0, " transportName"

    goto :goto_9

    .line 174
    :cond_7
    const-string v0, ""

    .line 177
    :goto_9
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    if-nez v1, :cond_20

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_20
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->eventMillis:Ljava/lang/Long;

    if-nez v1, :cond_37

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " eventMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_37
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->uptimeMillis:Ljava/lang/Long;

    if-nez v1, :cond_4e

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uptimeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_4e
    iget-object v1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    if-nez v1, :cond_65

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " autoMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_65
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 192
    new-instance v2, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->transportName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->code:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->eventMillis:Ljava/lang/Long;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->uptimeMillis:Ljava/lang/Long;

    .line 197
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/datatransport/runtime/EncodedPayload;JJLjava/util/Map;Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$1;)V

    return-object v2

    .line 190
    :cond_86
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing required properties:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected getAutoMetadata()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"autoMetadata\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setAutoMetadata(Ljava/util/Map;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/datatransport/runtime/EventInternal$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 161
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->autoMetadata:Ljava/util/Map;

    return-object p0

    .line 159
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null autoMetadata"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 143
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->encodedPayload:Lcom/google/android/datatransport/runtime/EncodedPayload;

    return-object p0

    .line 141
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encodedPayload"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 3

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->eventMillis:Ljava/lang/Long;

    return-object p0
.end method

.method public setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 3

    if-eqz p1, :cond_5

    .line 130
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->transportName:Ljava/lang/String;

    return-object p0

    .line 128
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;
    .registers 3

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/AutoValue_EventInternal$Builder;->uptimeMillis:Ljava/lang/Long;

    return-object p0
.end method
