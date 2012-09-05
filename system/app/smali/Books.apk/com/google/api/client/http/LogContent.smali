.class final Lcom/google/api/client/http/LogContent;
.super Ljava/lang/Object;
.source "LogContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field private final contentEncoding:Ljava/lang/String;

.field private final contentLength:J

.field private final contentType:Ljava/lang/String;

.field private final httpContent:Lcom/google/api/client/http/HttpContent;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpContent;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .parameter "httpContent"
    .parameter "contentType"
    .parameter "contentEncoding"
    .parameter "contentLength"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    .line 49
    iput-object p2, p0, Lcom/google/api/client/http/LogContent;->contentType:Ljava/lang/String;

    .line 50
    iput-wide p4, p0, Lcom/google/api/client/http/LogContent;->contentLength:J

    .line 51
    iput-object p3, p0, Lcom/google/api/client/http/LogContent;->contentEncoding:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static isTextBasedContentType(Ljava/lang/String;)Z
    .registers 2
    .parameter "contentType"

    .prologue
    .line 83
    if-eqz p0, :cond_14

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/google/api/client/http/LogContent;->contentLength:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v0}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 56
    .local v1, debugStream:Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/google/api/client/http/LogContent;->httpContent:Lcom/google/api/client/http/HttpContent;

    invoke-interface {v2, v1}, Lcom/google/api/client/http/HttpContent;->writeTo(Ljava/io/OutputStream;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 58
    .local v0, debugContent:[B
    sget-object v2, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 60
    return-void
.end method