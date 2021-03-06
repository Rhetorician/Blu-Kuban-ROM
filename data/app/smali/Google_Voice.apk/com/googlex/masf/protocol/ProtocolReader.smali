.class public Lcom/googlex/masf/protocol/ProtocolReader;
.super Ljava/lang/Object;


# instance fields
.field private dataInputStream:Ljava/io/DataInputStream;

.field private delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognised protocol version"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    if-eqz v0, :cond_7

    iput-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    :cond_7
    iget-object v0, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iput-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    return-void
.end method

.method public getNextResponse()Lcom/googlex/masf/protocol/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    invoke-virtual {v1}, Lcom/googlex/masf/DelimitedInputStream;->waitForCompletion()V

    iput-object v0, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    :cond_c
    iget-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iget-object v2, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    const v3, 0x8100

    if-ne v2, v3, :cond_2e

    new-instance v0, Lcom/googlex/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lcom/googlex/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    new-instance v0, Lcom/googlex/masf/protocol/PlainResponse;

    iget-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/googlex/masf/protocol/PlainResponse;-><init>(Lcom/googlex/masf/DelimitedInputStream;)V

    :goto_2d
    return-object v0

    :cond_2e
    const v3, 0x8101

    if-ne v2, v3, :cond_44

    new-instance v0, Lcom/googlex/masf/DelimitedInputStream;

    iget-object v2, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-direct {v0, v2, v1}, Lcom/googlex/masf/DelimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    new-instance v0, Lcom/googlex/masf/protocol/MultipartResponse;

    iget-object v1, p0, Lcom/googlex/masf/protocol/ProtocolReader;->delimitedInputStream:Lcom/googlex/masf/DelimitedInputStream;

    invoke-direct {v0, v1}, Lcom/googlex/masf/protocol/MultipartResponse;-><init>(Lcom/googlex/masf/DelimitedInputStream;)V

    goto :goto_2d

    :cond_44
    iget-object v2, p0, Lcom/googlex/masf/protocol/ProtocolReader;->dataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_2d
.end method
