.class public Lcom/googlex/masf/protocol/HttpResponse;
.super Ljava/lang/Object;


# instance fields
.field private response:Lcom/googlex/masf/protocol/Response;

.field private responseCode:I

.field private responseHeaderCount:I

.field private responseHeaderKeys:[Ljava/lang/String;

.field private responseHeaderValues:[Ljava/lang/String;

.field private responseInputStream:Ljava/io/DataInputStream;

.field private responseLength:I


# direct methods
.method public constructor <init>(Lcom/googlex/masf/protocol/Response;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/masf/protocol/HttpResponse;->response:Lcom/googlex/masf/protocol/Response;

    invoke-virtual {p1}, Lcom/googlex/masf/protocol/Response;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseCode:I

    invoke-virtual {p1}, Lcom/googlex/masf/protocol/Response;->getStreamLength()I

    move-result v1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Lcom/googlex/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    instance-of v1, p1, Lcom/googlex/masf/protocol/MultipartResponse;

    if-eqz v1, :cond_60

    check-cast p1, Lcom/googlex/masf/protocol/MultipartResponse;

    invoke-virtual {p1}, Lcom/googlex/masf/protocol/MultipartResponse;->getRoot()Lcom/googlex/masf/protocol/BodyPart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlex/masf/protocol/BodyPart;->getProperties()Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    move v1, v0

    :goto_42
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v4, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    :cond_60
    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    if-lez v1, :cond_b7

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    if-lez v1, :cond_b7

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    :goto_84
    iget v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    if-ge v0, v1, :cond_b7

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    iget-object v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    aput-object v1, v2, v0

    iget v2, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_b7
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->response:Lcom/googlex/masf/protocol/Response;

    invoke-virtual {v0}, Lcom/googlex/masf/protocol/Response;->dispose()V

    return-void
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseInputStream:Ljava/io/DataInputStream;

    return-object v0
.end method

.method public getHeaderCount()I
    .registers 2

    iget v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderCount:I

    return v0
.end method

.method public getHeaderKeys()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValues()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseHeaderValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    iget v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseCode:I

    return v0
.end method

.method public getStreamLength()I
    .registers 2

    iget v0, p0, Lcom/googlex/masf/protocol/HttpResponse;->responseLength:I

    return v0
.end method
