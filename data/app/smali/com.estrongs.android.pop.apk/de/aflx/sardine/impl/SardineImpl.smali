.class public Lde/aflx/sardine/impl/SardineImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lde/aflx/sardine/Sardine;


# static fields
.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static log:Lde/aflx/sardine/util/Logger;


# instance fields
.field protected _currentRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field protected _isAborted:Z

.field private client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private context:Lorg/apache/http/protocol/HttpContext;

.field preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lde/aflx/sardine/util/Logger;

    invoke-direct {v0}, Lde/aflx/sardine/util/Logger;-><init>()V

    sput-object v0, Lde/aflx/sardine/impl/SardineImpl;->log:Lde/aflx/sardine/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lde/aflx/sardine/impl/SardineImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lde/aflx/sardine/impl/SardineImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/ProxySelector;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_isAborted:Z

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->context:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lde/aflx/sardine/impl/SardineImpl$1;

    invoke-direct {v0, p0}, Lde/aflx/sardine/impl/SardineImpl$1;-><init>(Lde/aflx/sardine/impl/SardineImpl;)V

    iput-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {p0, p3}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultClient(Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lde/aflx/sardine/impl/SardineImpl;->init(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lde/aflx/sardine/impl/SardineImpl;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_isAborted:Z

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->context:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lde/aflx/sardine/impl/SardineImpl$1;

    invoke-direct {v0, p0}, Lde/aflx/sardine/impl/SardineImpl$1;-><init>(Lde/aflx/sardine/impl/SardineImpl;)V

    iput-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    invoke-direct {p0, p1, p2, p3}, Lde/aflx/sardine/impl/SardineImpl;->init(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init(Lorg/apache/http/impl/client/AbstractHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lde/aflx/sardine/impl/SardineImpl;->preemptiveAuth:Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    invoke-virtual {p0, p2, p3}, Lde/aflx/sardine/impl/SardineImpl;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lde/aflx/sardine/impl/SardineImpl;->log:Lde/aflx/sardine/util/Logger;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Lde/aflx/sardine/util/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_isAborted:Z

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_currentRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    return-void
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpCopy;

    invoke-direct {v0, p1, p2}, Lde/aflx/sardine/impl/methods/HttpCopy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method protected createDefaultClient(Ljava/net/ProxySelector;)Lorg/apache/http/impl/client/AbstractHttpClient;
    .registers 6

    invoke-virtual {p0}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultConnectionManager(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-virtual {p0}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {p0, v0, p1}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultRoutePlanner(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)V

    return-object v3
.end method

.method protected createDefaultConnectionManager(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 4

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {p0}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createDefaultHttpParams()Lorg/apache/http/params/HttpParams;
    .registers 5

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {}, Lde/aflx/sardine/Version;->getSpecification()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "UNAVAILABLE"

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sardine/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "ISO-8859-1"

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2000

    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    return-object v1
.end method

.method protected createDefaultRoutePlanner(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .registers 4

    new-instance v0, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/ProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;)V

    return-object v0
.end method

.method protected createDefaultSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .registers 6

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-virtual {p0}, Lde/aflx/sardine/impl/SardineImpl;->createDefaultSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_15
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v2, Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory;

    invoke-direct {v2, p0, v1}, Lde/aflx/sardine/impl/SardineImpl$MySSLSocketFactory;-><init>(Lde/aflx/sardine/impl/SardineImpl;Ljava/security/KeyStore;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_39

    :goto_38
    return-object v0

    :catch_39
    move-exception v1

    goto :goto_38
.end method

.method protected createDefaultSecureSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 2

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected createDefaultSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .registers 2

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public createDirectory(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpMkCol;

    invoke-direct {v0, p1}, Lde/aflx/sardine/impl/methods/HttpMkCol;-><init>(Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method public disableCompression()V
    .registers 1

    return-void
.end method

.method public disablePreemptiveAuthentication()V
    .registers 1

    return-void
.end method

.method public enableCompression()V
    .registers 1

    return-void
.end method

.method public enablePreemptiveAuthentication(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lde/aflx/sardine/impl/SardineImpl;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    throw v0
.end method

.method protected execute(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Lde/aflx/sardine/impl/SardineImpl;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    :catch_9
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    throw v0
.end method

.method public exists(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/ExistsResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/ExistsResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lde/aflx/sardine/impl/io/ConsumingInputStream;
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lde/aflx/sardine/impl/SardineImpl;->get(Ljava/lang/String;Ljava/util/Map;)Lde/aflx/sardine/impl/io/ConsumingInputStream;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;)Lde/aflx/sardine/impl/io/ConsumingInputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lde/aflx/sardine/impl/io/ConsumingInputStream;"
        }
    .end annotation

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0, v2}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    :try_start_1c
    invoke-virtual {v1, v0}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Void;

    new-instance v1, Lde/aflx/sardine/impl/io/ConsumingInputStream;

    invoke-direct {v1, v0}, Lde/aflx/sardine/impl/io/ConsumingInputStream;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_35

    return-object v1

    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_35
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    throw v0
.end method

.method public getCurrentRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .registers 2

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_currentRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lde/aflx/sardine/impl/SardineImpl;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAborted()Z
    .registers 2

    iget-boolean v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_isAborted:Z

    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/aflx/sardine/impl/SardineImpl;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpPropFind;

    invoke-direct {v0, p1}, Lde/aflx/sardine/impl/methods/HttpPropFind;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/aflx/sardine/impl/methods/HttpPropFind;->setDepth(Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/model/Propfind;

    invoke-direct {v1}, Lde/aflx/sardine/model/Propfind;-><init>()V

    new-instance v2, Lde/aflx/sardine/model/Allprop;

    invoke-direct {v2}, Lde/aflx/sardine/model/Allprop;-><init>()V

    invoke-virtual {v1, v2}, Lde/aflx/sardine/model/Propfind;->setAllprop(Lde/aflx/sardine/model/Allprop;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\" ?><D:propfind xmlns:D=\"DAV:\">  <D:allprop/></D:propfind>"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/aflx/sardine/impl/methods/HttpPropFind;->setEntity(Lorg/apache/http/HttpEntity;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/MultiStatusResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/MultiStatusResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/model/Multistatus;

    invoke-virtual {v0}, Lde/aflx/sardine/model/Multistatus;->getResponse()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_48

    return-object v1

    :cond_48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/model/Response;

    :try_start_4e
    new-instance v3, Lde/aflx/sardine/DavResource;

    invoke-direct {v3, v0}, Lde/aflx/sardine/DavResource;-><init>(Lde/aflx/sardine/model/Response;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/net/URISyntaxException; {:try_start_4e .. :try_end_56} :catch_57

    goto :goto_41

    :catch_57
    move-exception v3

    sget-object v3, Lde/aflx/sardine/impl/SardineImpl;->log:Lde/aflx/sardine/util/Logger;

    const-string v4, "Ignore resource with invalid URI %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lde/aflx/sardine/model/Response;->getHref()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lde/aflx/sardine/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_41
.end method

.method public lock(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpLock;

    invoke-direct {v0, p1}, Lde/aflx/sardine/impl/methods/HttpLock;-><init>(Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/model/Lockinfo;

    invoke-direct {v1}, Lde/aflx/sardine/model/Lockinfo;-><init>()V

    new-instance v2, Lde/aflx/sardine/model/Lockscope;

    invoke-direct {v2}, Lde/aflx/sardine/model/Lockscope;-><init>()V

    new-instance v3, Lde/aflx/sardine/model/Exclusive;

    invoke-direct {v3}, Lde/aflx/sardine/model/Exclusive;-><init>()V

    invoke-virtual {v2, v3}, Lde/aflx/sardine/model/Lockscope;->setExclusive(Lde/aflx/sardine/model/Exclusive;)V

    invoke-virtual {v1, v2}, Lde/aflx/sardine/model/Lockinfo;->setLockscope(Lde/aflx/sardine/model/Lockscope;)V

    new-instance v2, Lde/aflx/sardine/model/Locktype;

    invoke-direct {v2}, Lde/aflx/sardine/model/Locktype;-><init>()V

    new-instance v3, Lde/aflx/sardine/model/Write;

    invoke-direct {v3}, Lde/aflx/sardine/model/Write;-><init>()V

    invoke-virtual {v2, v3}, Lde/aflx/sardine/model/Locktype;->setWrite(Lde/aflx/sardine/model/Write;)V

    invoke-virtual {v1, v2}, Lde/aflx/sardine/model/Lockinfo;->setLocktype(Lde/aflx/sardine/model/Locktype;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/LockResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/LockResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpMove;

    invoke-direct {v0, p1, p2}, Lde/aflx/sardine/impl/methods/HttpMove;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method

.method public patch(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lde/aflx/sardine/impl/SardineImpl;->patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lde/aflx/sardine/util/QName;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/util/QName;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lde/aflx/sardine/DavResource;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p2, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, p1, v0, p3}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_c

    const-string v1, "Content-Type"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz p4, :cond_15

    const-string v1, "Expect"

    const-string v2, "100-continue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {p0, p1, p2, v0}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpEntity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lde/aflx/sardine/impl/SardineImpl;->_currentRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/aflx/sardine/impl/SardineImpl;->_isAborted:Z

    invoke-virtual {v2, p2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "Content-Type"

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPut;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :try_start_2a
    new-instance v0, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v0}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v2, v0}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_32
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2a .. :try_end_32} :catch_43

    :goto_32
    return-void

    :cond_33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1a1

    if-ne v1, v3, :cond_60

    const-string v1, "Expect"

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPut;->removeHeaders(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_60

    new-instance v0, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v0}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v2, v0}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    goto :goto_32

    :cond_60
    throw v0
.end method

.method public put(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 6

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lde/aflx/sardine/impl/SardineImpl;->put(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Z)V

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, p1, p2, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v5, -0x1

    if-eqz p1, :cond_4e

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "NTLM"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    invoke-direct {v2, p1, p2, p4, p3}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "Basic"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    iget-object v0, p0, Lde/aflx/sardine/impl/SardineImpl;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    new-instance v1, Lorg/apache/http/auth/AuthScope;

    sget-object v2, Lorg/apache/http/auth/AuthScope;->ANY_HOST:Ljava/lang/String;

    sget-object v3, Lorg/apache/http/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    const-string v4, "Digest"

    invoke-direct {v1, v2, v5, v3, v4}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v2, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    :cond_4e
    return-void
.end method

.method public setCustomProps(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Lde/aflx/sardine/util/SardineUtil;->toQName(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Lde/aflx/sardine/util/SardineUtil;->toQName(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->patch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lde/aflx/sardine/impl/methods/HttpUnlock;

    invoke-direct {v0, p1, p2}, Lde/aflx/sardine/impl/methods/HttpUnlock;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lde/aflx/sardine/model/Lockinfo;

    invoke-direct {v1}, Lde/aflx/sardine/model/Lockinfo;-><init>()V

    new-instance v2, Lde/aflx/sardine/model/Lockscope;

    invoke-direct {v2}, Lde/aflx/sardine/model/Lockscope;-><init>()V

    new-instance v3, Lde/aflx/sardine/model/Exclusive;

    invoke-direct {v3}, Lde/aflx/sardine/model/Exclusive;-><init>()V

    invoke-virtual {v2, v3}, Lde/aflx/sardine/model/Lockscope;->setExclusive(Lde/aflx/sardine/model/Exclusive;)V

    invoke-virtual {v1, v2}, Lde/aflx/sardine/model/Lockinfo;->setLockscope(Lde/aflx/sardine/model/Lockscope;)V

    new-instance v2, Lde/aflx/sardine/model/Locktype;

    invoke-direct {v2}, Lde/aflx/sardine/model/Locktype;-><init>()V

    new-instance v3, Lde/aflx/sardine/model/Write;

    invoke-direct {v3}, Lde/aflx/sardine/model/Write;-><init>()V

    invoke-virtual {v2, v3}, Lde/aflx/sardine/model/Locktype;->setWrite(Lde/aflx/sardine/model/Write;)V

    invoke-virtual {v1, v2}, Lde/aflx/sardine/model/Lockinfo;->setLocktype(Lde/aflx/sardine/model/Locktype;)V

    new-instance v1, Lde/aflx/sardine/impl/handler/VoidResponseHandler;

    invoke-direct {v1}, Lde/aflx/sardine/impl/handler/VoidResponseHandler;-><init>()V

    invoke-virtual {p0, v0, v1}, Lde/aflx/sardine/impl/SardineImpl;->execute(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    return-void
.end method
