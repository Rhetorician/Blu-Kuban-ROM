.class public abstract Lcom/google/protobuf/micro/MessageMicro;
.super Ljava/lang/Object;
.source "MessageMicro.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCachedSize()I
.end method

.method public abstract getSerializedSize()I
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z
    .registers 4
    .parameter "input"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1, p2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->skipField(I)Z

    move-result v0

    return v0
.end method

.method public toByteArray([BII)V
    .registers 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 91
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance([BII)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v1

    .line 92
    .local v1, output:Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    invoke-virtual {p0, v1}, Lcom/google/protobuf/micro/MessageMicro;->writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V

    .line 93
    invoke-virtual {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->checkNoSpaceLeft()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 98
    return-void

    .line 94
    .end local v1           #output:Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    :catch_b
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public toByteArray()[B
    .registers 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/micro/MessageMicro;->getSerializedSize()I

    move-result v1

    new-array v0, v1, [B

    .line 76
    .local v0, result:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/micro/MessageMicro;->toByteArray([BII)V

    .line 77
    return-object v0
.end method

.method public abstract writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
