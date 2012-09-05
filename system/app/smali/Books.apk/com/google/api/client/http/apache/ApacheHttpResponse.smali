.class final Lcom/google/api/client/http/apache/ApacheHttpResponse;
.super Lcom/google/api/client/http/LowLevelHttpResponse;
.source "ApacheHttpResponse.java"


# instance fields
.field private final allHeaders:[Lorg/apache/http/Header;

.field private final request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final response:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/http/LowLevelHttpResponse;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 36
    iput-object p2, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    .line 37
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lorg/apache/http/Header;

    .line 38
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 49
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_9
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 4

    .prologue
    .line 54
    iget-object v2, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 55
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_13

    .line 56
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 57
    .local v0, contentEncodingHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_13

    .line 58
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 61
    .end local v0           #contentEncodingHeader:Lorg/apache/http/Header;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getContentLength()J
    .registers 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 67
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_b

    const-wide/16 v1, -0x1

    :goto_a
    return-wide v1

    :cond_b
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    goto :goto_a
.end method

.method public getContentType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    iget-object v2, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 73
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_13

    .line 74
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 75
    .local v0, contentTypeHeader:Lorg/apache/http/Header;
    if-eqz v0, :cond_13

    .line 76
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 79
    .end local v0           #contentTypeHeader:Lorg/apache/http/Header;
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public getHeaderCount()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lorg/apache/http/Header;

    array-length v0, v0

    return v0
.end method

.method public getHeaderName(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lorg/apache/http/Header;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->allHeaders:[Lorg/apache/http/Header;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 85
    .local v0, statusLine:Lorg/apache/http/StatusLine;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getStatusCode()I
    .registers 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 43
    .local v0, statusLine:Lorg/apache/http/StatusLine;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return v1

    :cond_a
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    goto :goto_9
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/api/client/http/apache/ApacheHttpResponse;->response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 91
    .local v0, statusLine:Lorg/apache/http/StatusLine;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method
