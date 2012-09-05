.class Lorg/apache/commons/httpclient/HttpMethodDirector;
.super Ljava/lang/Object;
.source "HttpMethodDirector.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log; = null

.field public static final PROXY_AUTH_CHALLENGE:Ljava/lang/String; = "Proxy-Authenticate"

.field public static final PROXY_AUTH_RESP:Ljava/lang/String; = "Proxy-Authorization"

.field public static final WWW_AUTH_CHALLENGE:Ljava/lang/String; = "WWW-Authenticate"

.field public static final WWW_AUTH_RESP:Ljava/lang/String; = "Authorization"

.field static class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;


# instance fields
.field private authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

.field private conn:Lorg/apache/commons/httpclient/HttpConnection;

.field private connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

.field private connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

.field private params:Lorg/apache/commons/httpclient/params/HttpClientParams;

.field private redirectLocations:Ljava/util/Set;

.field private releaseConnection:Z

.field private state:Lorg/apache/commons/httpclient/HttpState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.commons.httpclient.HttpMethodDirector"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->class$org$apache$commons$httpclient$HttpMethodDirector:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HttpConnectionManager;Lorg/apache/commons/httpclient/HostConfiguration;Lorg/apache/commons/httpclient/params/HttpClientParams;Lorg/apache/commons/httpclient/HttpState;)V
    .registers 7
    .parameter "connectionManager"
    .parameter "hostConfiguration"
    .parameter "params"
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 95
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 97
    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    .line 106
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 107
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    .line 108
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    .line 109
    iput-object p4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    .line 110
    new-instance v0, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-direct {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;-><init>(Lorg/apache/commons/httpclient/params/HttpParams;)V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    .line 111
    return-void
.end method

.method private applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 6
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    const/4 v1, 0x0

    .line 347
    .local v1, timeout:I
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 348
    .local v0, param:Ljava/lang/Object;
    if-nez v0, :cond_19

    .line 350
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    const-string v3, "http.socket.timeout"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 352
    :cond_19
    if-eqz v0, :cond_21

    .line 353
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #param:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 355
    :cond_21
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2, v1}, Lorg/apache/commons/httpclient/HttpConnection;->setSocketTimeout(I)V

    .line 356
    return-void
.end method

.method private authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 5
    .parameter "method"

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v1

    if-nez v1, :cond_13

    .line 232
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 234
    :cond_13
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_16
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_0 .. :try_end_16} :catch_17

    .line 238
    :goto_16
    return-void

    .line 235
    :catch_17
    move-exception v0

    .line 236
    .local v0, e:Lorg/apache/commons/httpclient/auth/AuthenticationException;
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private authenticateHost(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 12
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v7, "Authorization"

    invoke-direct {p0, p1, v7}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 296
    :cond_8
    :goto_8
    return-void

    .line 262
    :cond_9
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 263
    .local v2, authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 264
    .local v0, authscheme:Lorg/apache/commons/httpclient/auth/AuthScheme;
    if-eqz v0, :cond_8

    .line 267
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v7

    if-nez v7, :cond_1f

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v7

    if-nez v7, :cond_8

    .line 268
    :cond_1f
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, host:Ljava/lang/String;
    if-nez v5, :cond_2f

    .line 270
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 272
    :cond_2f
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v6

    .line 273
    .local v6, port:I
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 277
    .local v1, authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 278
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Authenticating with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 280
    :cond_62
    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v7, v1}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 281
    .local v4, credentials:Lorg/apache/commons/httpclient/Credentials;
    if-eqz v4, :cond_7c

    .line 282
    invoke-interface {v0, v4, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, authstring:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 284
    new-instance v7, Lorg/apache/commons/httpclient/Header;

    const-string v8, "Authorization"

    const/4 v9, 0x1

    invoke-direct {v7, v8, v3, v9}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v7}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_8

    .line 287
    .end local v3           #authstring:Ljava/lang/String;
    :cond_7c
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 288
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Required credentials not available for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 289
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 290
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Preemptive authentication requested but no default credentials available"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method private authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 11
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v5, "Proxy-Authorization"

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/httpclient/HttpMethodDirector;->cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 334
    :cond_8
    :goto_8
    return-void

    .line 305
    :cond_9
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 306
    .local v2, authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v0

    .line 307
    .local v0, authscheme:Lorg/apache/commons/httpclient/auth/AuthScheme;
    if-eqz v0, :cond_8

    .line 310
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isConnectionBased()Z

    move-result v5

    if-nez v5, :cond_8

    .line 311
    :cond_1f
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v6

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 315
    .local v1, authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 316
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Authenticating with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_58
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v5, v1}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 319
    .local v4, credentials:Lorg/apache/commons/httpclient/Credentials;
    if-eqz v4, :cond_72

    .line 320
    invoke-interface {v0, v4, p1}, Lorg/apache/commons/httpclient/auth/AuthScheme;->authenticate(Lorg/apache/commons/httpclient/Credentials;Lorg/apache/commons/httpclient/HttpMethod;)Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, authstring:Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 322
    new-instance v5, Lorg/apache/commons/httpclient/Header;

    const-string v6, "Proxy-Authorization"

    const/4 v7, 0x1

    invoke-direct {v5, v6, v3, v7}, Lorg/apache/commons/httpclient/Header;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_8

    .line 325
    .end local v3           #authstring:Ljava/lang/String;
    :cond_72
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 326
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Required proxy credentials not available for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 327
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthState;->isPreemptive()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 328
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Preemptive authentication requested but no default proxy credentials available"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_8
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanAuthHeaders(Lorg/apache/commons/httpclient/HttpMethod;Ljava/lang/String;)Z
    .registers 8
    .parameter "method"
    .parameter "name"

    .prologue
    .line 242
    invoke-interface {p1, p2}, Lorg/apache/commons/httpclient/HttpMethod;->getRequestHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v1

    .line 243
    .local v1, authheaders:[Lorg/apache/commons/httpclient/Header;
    const/4 v2, 0x1

    .line 244
    .local v2, clean:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    array-length v4, v1

    if-ge v3, v4, :cond_19

    .line 245
    aget-object v0, v1, v3

    .line 246
    .local v0, authheader:Lorg/apache/commons/httpclient/Header;
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->isAutogenerated()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 247
    invoke-interface {p1, v0}, Lorg/apache/commons/httpclient/HttpMethod;->removeRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    .line 244
    :goto_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 249
    :cond_17
    const/4 v2, 0x0

    goto :goto_14

    .line 252
    .end local v0           #authheader:Lorg/apache/commons/httpclient/Header;
    :cond_19
    return v2
.end method

.method private executeConnect()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 476
    new-instance v4, Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-direct {v4, v7}, Lorg/apache/commons/httpclient/ConnectMethod;-><init>(Lorg/apache/commons/httpclient/HostConfiguration;)V

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 477
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v4

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 481
    :cond_1a
    :goto_1a
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_27

    .line 482
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 484
    :cond_27
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 486
    :cond_37
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v7, "Preemptively sending default basic credentials"

    invoke-interface {v4, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 487
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 488
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 491
    :cond_50
    :try_start_50
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticateProxy(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_55
    .catch Lorg/apache/commons/httpclient/auth/AuthenticationException; {:try_start_50 .. :try_end_55} :catch_9a

    .line 495
    :goto_55
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 496
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4, v7, v8}, Lorg/apache/commons/httpclient/ConnectMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I

    .line 497
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusCode()I

    move-result v1

    .line 498
    .local v1, code:I
    const/4 v3, 0x0

    .line 499
    .local v3, retry:Z
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    .line 500
    .local v0, authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    const/16 v4, 0x197

    if-ne v1, v4, :cond_a5

    move v4, v5

    :goto_75
    invoke-virtual {v0, v4}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 501
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 502
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-direct {p0, v4}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 503
    const/4 v3, 0x1

    .line 506
    :cond_87
    if-nez v3, :cond_a7

    .line 513
    const/16 v4, 0xc8

    if-lt v1, v4, :cond_ba

    const/16 v4, 0x12c

    if-ge v1, v4, :cond_ba

    .line 514
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->tunnelCreated()V

    .line 516
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 520
    :goto_99
    return v5

    .line 492
    .end local v0           #authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    .end local v1           #code:I
    .end local v3           #retry:Z
    :catch_9a
    move-exception v2

    .line 493
    .local v2, e:Lorg/apache/commons/httpclient/auth/AuthenticationException;
    sget-object v4, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_55

    .end local v2           #e:Lorg/apache/commons/httpclient/auth/AuthenticationException;
    .restart local v0       #authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    .restart local v1       #code:I
    .restart local v3       #retry:Z
    :cond_a5
    move v4, v6

    .line 500
    goto :goto_75

    .line 509
    :cond_a7
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_1a

    .line 510
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1a

    .line 519
    :cond_ba
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    move v5, v6

    .line 520
    goto :goto_99
.end method

.method private executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 11
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 370
    const/4 v5, 0x0

    .line 375
    .local v5, execCount:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 378
    :try_start_4
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 379
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempt number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " to process request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 381
    :cond_2a
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 382
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->closeIfStale()Z

    .line 384
    :cond_3b
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_63

    .line 387
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->open()V

    .line 388
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_63

    instance-of v2, p1, Lorg/apache/commons/httpclient/ConnectMethod;

    if-nez v2, :cond_63

    .line 391
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeConnect()Z

    move-result v2

    if-nez v2, :cond_63

    .line 463
    :goto_62
    return-void

    .line 397
    :cond_63
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->applyConnectionParams(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 398
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethod;->execute(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)I
    :try_end_6d
    .catch Lorg/apache/commons/httpclient/HttpException; {:try_start_4 .. :try_end_6d} :catch_6e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_6d} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_6d} :catch_c1

    goto :goto_62

    .line 400
    :catch_6e
    move-exception v7

    .line 402
    .local v7, e:Lorg/apache/commons/httpclient/HttpException;
    :try_start_6f
    throw v7
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_70} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_6f .. :try_end_70} :catch_c1

    .line 448
    .end local v7           #e:Lorg/apache/commons/httpclient/HttpException;
    :catch_70
    move-exception v7

    .line 449
    .local v7, e:Ljava/io/IOException;
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 450
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 451
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 453
    :cond_85
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 454
    throw v7

    .line 403
    .end local v7           #e:Ljava/io/IOException;
    :catch_88
    move-exception v7

    .line 404
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_89
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 405
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 410
    instance-of v2, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v2, :cond_d9

    .line 411
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpMethodBase;->getMethodRetryHandler()Lorg/apache/commons/httpclient/MethodRetryHandler;

    move-result-object v1

    .line 413
    .local v1, handler:Lorg/apache/commons/httpclient/MethodRetryHandler;
    if-eqz v1, :cond_d9

    .line 414
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    new-instance v4, Lorg/apache/commons/httpclient/HttpRecoverableException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/commons/httpclient/HttpRecoverableException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->isRequestSent()Z

    move-result v6

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/httpclient/MethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Lorg/apache/commons/httpclient/HttpConnection;Lorg/apache/commons/httpclient/HttpRecoverableException;IZ)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 420
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 422
    throw v7
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_c1} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_89 .. :try_end_c1} :catch_c1

    .line 455
    .end local v1           #handler:Lorg/apache/commons/httpclient/MethodRetryHandler;
    .end local v7           #e:Ljava/io/IOException;
    :catch_c1
    move-exception v7

    .line 456
    .local v7, e:Ljava/lang/RuntimeException;
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 457
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Closing the connection."

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 458
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 460
    :cond_d6
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 461
    throw v7

    .line 427
    .local v7, e:Ljava/io/IOException;
    :cond_d9
    :try_start_d9
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v2

    const-string v3, "http.method.retry-handler"

    invoke-virtual {v2, v3}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;

    .line 430
    .local v1, handler:Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    if-nez v1, :cond_ec

    .line 431
    new-instance v1, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;

    .end local v1           #handler:Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    invoke-direct {v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>()V

    .line 433
    .restart local v1       #handler:Lorg/apache/commons/httpclient/HttpMethodRetryHandler;
    :cond_ec
    invoke-interface {v1, p1, v7, v5}, Lorg/apache/commons/httpclient/HttpMethodRetryHandler;->retryMethod(Lorg/apache/commons/httpclient/HttpMethod;Ljava/io/IOException;I)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 434
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Method retry handler returned false. Automatic recovery will not be attempted"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 436
    throw v7

    .line 438
    :cond_fa
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_130

    .line 439
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "I/O exception ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") caught when processing request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 442
    :cond_130
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_141

    .line 443
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 445
    :cond_141
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Retrying request"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_148} :catch_70
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_148} :catch_c1

    goto/16 :goto_2
.end method

.method private fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 6
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    .line 542
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "CONNECT failed, fake the response for the original method"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 550
    instance-of v0, p1, Lorg/apache/commons/httpclient/HttpMethodBase;

    if-eqz v0, :cond_38

    move-object v0, p1

    .line 551
    check-cast v0, Lorg/apache/commons/httpclient/HttpMethodBase;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getStatusLine()Lorg/apache/commons/httpclient/StatusLine;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseHeaderGroup()Lorg/apache/commons/httpclient/HeaderGroup;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/ConnectMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/commons/httpclient/HttpMethodBase;->fakeResponse(Lorg/apache/commons/httpclient/StatusLine;Lorg/apache/commons/httpclient/HeaderGroup;Ljava/io/InputStream;)V

    .line 556
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/ConnectMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->getAuthScheme()Lorg/apache/commons/httpclient/auth/AuthScheme;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthScheme(Lorg/apache/commons/httpclient/auth/AuthScheme;)V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    .line 564
    :goto_37
    return-void

    .line 560
    :cond_38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    .line 561
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Unable to fake response on method as it is not derived from HttpMethodBase."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_37
.end method

.method private isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 7
    .parameter "method"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 837
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v4, 0x191

    if-ne v0, v4, :cond_45

    move v0, v1

    :goto_f
    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 839
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v0

    const/16 v4, 0x197

    if-ne v0, v4, :cond_47

    move v0, v1

    :goto_1f
    invoke-virtual {v3, v0}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthRequested(Z)V

    .line 841
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthRequested()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 843
    :cond_36
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Authorization required"

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 844
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getDoAuthentication()Z

    move-result v0

    if-eqz v0, :cond_49

    move v2, v1

    .line 852
    :cond_44
    :goto_44
    return v2

    :cond_45
    move v0, v2

    .line 837
    goto :goto_f

    :cond_47
    move v0, v2

    .line 839
    goto :goto_1f

    .line 847
    :cond_49
    sget-object v0, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Authentication requested but doAuthentication is disabled"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_44
.end method

.method private isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 5
    .parameter "method"

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 825
    :cond_8
    :goto_8
    :pswitch_8
    return v0

    .line 818
    :pswitch_9
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Redirect required"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 819
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getFollowRedirects()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 820
    const/4 v0, 0x1

    goto :goto_8

    .line 813
    :pswitch_data_18
    .packed-switch 0x12d
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 6
    .parameter "method"

    .prologue
    const/4 v1, 0x0

    .line 662
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpMethodBase.processAuthenticationResponse(HttpState, HttpConnection)"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 666
    :try_start_8
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2e

    .line 678
    :cond_f
    :goto_f
    return v1

    .line 668
    :sswitch_10
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v1

    goto :goto_f

    .line 670
    :sswitch_15
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1a

    move-result v1

    goto :goto_f

    .line 674
    :catch_1a
    move-exception v0

    .line 675
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 676
    sget-object v2, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_f

    .line 666
    nop

    :sswitch_data_2e
    .sparse-switch
        0x191 -> :sswitch_10
        0x197 -> :sswitch_15
    .end sparse-switch
.end method

.method private processProxyAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 14
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 749
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 750
    .local v2, authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v8, "Proxy-Authenticate"

    invoke-interface {p1, v8}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v5

    .line 752
    .local v5, proxyChallenges:Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 753
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v8, "Proxy authentication challenge(s) not found"

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 800
    :cond_1d
    :goto_1d
    return v6

    .line 756
    :cond_1e
    const/4 v0, 0x0

    .line 758
    .local v0, authscheme:Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_1f
    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v8, v2, v5}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_24
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_1f .. :try_end_24} :catch_97

    move-result-object v0

    .line 764
    :cond_25
    :goto_25
    if-eqz v0, :cond_1d

    .line 767
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v8}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyHost()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v9}, Lorg/apache/commons/httpclient/HttpConnection;->getProxyPort()I

    move-result v9

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v8, v9, v10, v11}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 772
    .local v1, authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 773
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Proxy authentication scope: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 775
    :cond_60
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 777
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    invoke-direct {p0, v0, v8, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 779
    .local v3, credentials:Lorg/apache/commons/httpclient/Credentials;
    if-nez v3, :cond_ab

    .line 780
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 781
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Failure authenticating with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_1d

    .line 759
    .end local v1           #authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v3           #credentials:Lorg/apache/commons/httpclient/Credentials;
    :catch_97
    move-exception v4

    .line 760
    .local v4, e:Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_25

    .line 761
    sget-object v8, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v4           #e:Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    .restart local v1       #authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    .restart local v3       #credentials:Lorg/apache/commons/httpclient/Credentials;
    :cond_ab
    move v6, v7

    .line 785
    goto/16 :goto_1d

    .line 788
    .end local v3           #credentials:Lorg/apache/commons/httpclient/Credentials;
    :cond_ae
    invoke-virtual {v2, v7}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 789
    iget-object v8, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v8, v1}, Lorg/apache/commons/httpclient/HttpState;->getProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 790
    .restart local v3       #credentials:Lorg/apache/commons/httpclient/Credentials;
    if-nez v3, :cond_c1

    .line 791
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v8

    invoke-direct {p0, v0, v8, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v3

    .line 794
    :cond_c1
    if-nez v3, :cond_e5

    .line 795
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 796
    sget-object v7, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "No credentials available for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_e5
    move v6, v7

    .line 800
    goto/16 :goto_1d
.end method

.method private processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 16
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/RedirectException;
        }
    .end annotation

    .prologue
    .line 574
    const-string v1, "location"

    invoke-interface {p1, v1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v11

    .line 575
    .local v11, locationHeader:Lorg/apache/commons/httpclient/Header;
    if-nez v11, :cond_2c

    .line 577
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Received redirect response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " but no location header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 579
    const/4 v1, 0x0

    .line 649
    :goto_2b
    return v1

    .line 581
    :cond_2c
    invoke-virtual {v11}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 582
    .local v10, location:Ljava/lang/String;
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 583
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Redirect requested to location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 588
    :cond_56
    const/4 v12, 0x0

    .line 589
    .local v12, redirectUri:Lorg/apache/commons/httpclient/URI;
    const/4 v7, 0x0

    .line 592
    .local v7, currentUri:Lorg/apache/commons/httpclient/URI;
    :try_start_58
    new-instance v0, Lorg/apache/commons/httpclient/URI;

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/HttpConnection;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/protocol/Protocol;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v4

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_78
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_58 .. :try_end_78} :catch_121

    .line 600
    .end local v7           #currentUri:Lorg/apache/commons/httpclient/URI;
    .local v0, currentUri:Lorg/apache/commons/httpclient/URI;
    :try_start_78
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getUriCharset()Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, charset:Ljava/lang/String;
    new-instance v13, Lorg/apache/commons/httpclient/URI;

    const/4 v1, 0x1

    invoke-direct {v13, v10, v1, v6}, Lorg/apache/commons/httpclient/URI;-><init>(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_86
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_78 .. :try_end_86} :catch_17c

    .line 603
    .end local v12           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .local v13, redirectUri:Lorg/apache/commons/httpclient/URI;
    :try_start_86
    invoke-virtual {v13}, Lorg/apache/commons/httpclient/URI;->isRelativeURI()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 604
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v2, "http.protocol.reject-relative-redirect"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 605
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Relative redirect location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' not allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 606
    const/4 v1, 0x0

    goto/16 :goto_2b

    .line 609
    :cond_b7
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Redirect URI is not absolute - parsing as relative"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 610
    new-instance v12, Lorg/apache/commons/httpclient/URI;

    invoke-direct {v12, v0, v13}, Lorg/apache/commons/httpclient/URI;-><init>(Lorg/apache/commons/httpclient/URI;Lorg/apache/commons/httpclient/URI;)V
    :try_end_c3
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_86 .. :try_end_c3} :catch_17e

    .line 616
    .end local v13           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .restart local v12       #redirectUri:Lorg/apache/commons/httpclient/URI;
    :goto_c3
    :try_start_c3
    invoke-interface {p1, v12}, Lorg/apache/commons/httpclient/HttpMethod;->setURI(Lorg/apache/commons/httpclient/URI;)V

    .line 617
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v1, v12}, Lorg/apache/commons/httpclient/HostConfiguration;->setHost(Lorg/apache/commons/httpclient/URI;)V
    :try_end_cb
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_c3 .. :try_end_cb} :catch_17c

    .line 623
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v2, "http.protocol.allow-circular-redirects"

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 624
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    if-nez v1, :cond_e0

    .line 625
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    .line 627
    :cond_e0
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    :try_start_e5
    invoke-virtual {v12}, Lorg/apache/commons/httpclient/URI;->hasQuery()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lorg/apache/commons/httpclient/URI;->setQuery(Ljava/lang/String;)V
    :try_end_ef
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_e5 .. :try_end_ef} :catch_13c

    .line 637
    :cond_ef
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->redirectLocations:Ljava/util/Set;

    invoke-interface {v1, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_140

    .line 638
    new-instance v1, Lorg/apache/commons/httpclient/CircularRedirectException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    .end local v12           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .restart local v13       #redirectUri:Lorg/apache/commons/httpclient/URI;
    :cond_116
    :try_start_116
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v1, v2}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V
    :try_end_11f
    .catch Lorg/apache/commons/httpclient/URIException; {:try_start_116 .. :try_end_11f} :catch_17e

    move-object v12, v13

    .end local v13           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .restart local v12       #redirectUri:Lorg/apache/commons/httpclient/URI;
    goto :goto_c3

    .line 618
    .end local v0           #currentUri:Lorg/apache/commons/httpclient/URI;
    .end local v6           #charset:Ljava/lang/String;
    .restart local v7       #currentUri:Lorg/apache/commons/httpclient/URI;
    :catch_121
    move-exception v9

    move-object v0, v7

    .line 619
    .end local v7           #currentUri:Lorg/apache/commons/httpclient/URI;
    .restart local v0       #currentUri:Lorg/apache/commons/httpclient/URI;
    .local v9, ex:Lorg/apache/commons/httpclient/URIException;
    :goto_123
    new-instance v1, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid redirect location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10, v9}, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 632
    .end local v9           #ex:Lorg/apache/commons/httpclient/URIException;
    .restart local v6       #charset:Ljava/lang/String;
    :catch_13c
    move-exception v8

    .line 634
    .local v8, e:Lorg/apache/commons/httpclient/URIException;
    const/4 v1, 0x0

    goto/16 :goto_2b

    .line 643
    .end local v8           #e:Lorg/apache/commons/httpclient/URIException;
    :cond_140
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 644
    sget-object v1, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Redirecting from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v12}, Lorg/apache/commons/httpclient/URI;->getEscapedURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 648
    :cond_172
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/httpclient/auth/AuthState;->invalidate()V

    .line 649
    const/4 v1, 0x1

    goto/16 :goto_2b

    .line 618
    .end local v6           #charset:Ljava/lang/String;
    :catch_17c
    move-exception v9

    goto :goto_123

    .end local v12           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .restart local v6       #charset:Ljava/lang/String;
    .restart local v13       #redirectUri:Lorg/apache/commons/httpclient/URI;
    :catch_17e
    move-exception v9

    move-object v12, v13

    .end local v13           #redirectUri:Lorg/apache/commons/httpclient/URI;
    .restart local v12       #redirectUri:Lorg/apache/commons/httpclient/URI;
    goto :goto_123
.end method

.method private processWWWAuthChallenge(Lorg/apache/commons/httpclient/HttpMethod;)Z
    .registers 15
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/auth/MalformedChallengeException;,
            Lorg/apache/commons/httpclient/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 685
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v2

    .line 686
    .local v2, authstate:Lorg/apache/commons/httpclient/auth/AuthState;
    const-string v10, "WWW-Authenticate"

    invoke-interface {p1, v10}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseHeaders(Ljava/lang/String;)[Lorg/apache/commons/httpclient/Header;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/httpclient/auth/AuthChallengeParser;->parseChallenges([Lorg/apache/commons/httpclient/Header;)Ljava/util/Map;

    move-result-object v3

    .line 688
    .local v3, challenges:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 689
    sget-object v9, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v10, "Authentication challenge(s) not found"

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 741
    :cond_1d
    :goto_1d
    return v8

    .line 692
    :cond_1e
    const/4 v0, 0x0

    .line 694
    .local v0, authscheme:Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_start_1f
    iget-object v10, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->authProcessor:Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/httpclient/auth/AuthChallengeProcessor;->processChallenge(Lorg/apache/commons/httpclient/auth/AuthState;Ljava/util/Map;)Lorg/apache/commons/httpclient/auth/AuthScheme;
    :try_end_24
    .catch Lorg/apache/commons/httpclient/auth/AuthChallengeException; {:try_start_1f .. :try_end_24} :catch_a2

    move-result-object v0

    .line 700
    :cond_25
    :goto_25
    if-eqz v0, :cond_1d

    .line 703
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->getVirtualHost()Ljava/lang/String;

    move-result-object v6

    .line 704
    .local v6, host:Ljava/lang/String;
    if-nez v6, :cond_37

    .line 705
    iget-object v10, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/HttpConnection;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 707
    :cond_37
    iget-object v10, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v10}, Lorg/apache/commons/httpclient/HttpConnection;->getPort()I

    move-result v7

    .line 708
    .local v7, port:I
    new-instance v1, Lorg/apache/commons/httpclient/auth/AuthScope;

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v6, v7, v10, v11}, Lorg/apache/commons/httpclient/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 713
    .local v1, authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    sget-object v10, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 714
    sget-object v10, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Authentication scope: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 716
    :cond_6a
    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/AuthState;->isAuthAttempted()Z

    move-result v10

    if-eqz v10, :cond_b9

    invoke-interface {v0}, Lorg/apache/commons/httpclient/auth/AuthScheme;->isComplete()Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 718
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-direct {p0, v0, v10, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 720
    .local v4, credentials:Lorg/apache/commons/httpclient/Credentials;
    if-nez v4, :cond_b6

    .line 721
    sget-object v9, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 722
    sget-object v9, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Failure authenticating with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1d

    .line 695
    .end local v1           #authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    .end local v4           #credentials:Lorg/apache/commons/httpclient/Credentials;
    .end local v6           #host:Ljava/lang/String;
    .end local v7           #port:I
    :catch_a2
    move-exception v5

    .line 696
    .local v5, e:Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    sget-object v10, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 697
    sget-object v10, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthChallengeException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_25

    .end local v5           #e:Lorg/apache/commons/httpclient/auth/AuthChallengeException;
    .restart local v1       #authscope:Lorg/apache/commons/httpclient/auth/AuthScope;
    .restart local v4       #credentials:Lorg/apache/commons/httpclient/Credentials;
    .restart local v6       #host:Ljava/lang/String;
    .restart local v7       #port:I
    :cond_b6
    move v8, v9

    .line 726
    goto/16 :goto_1d

    .line 729
    .end local v4           #credentials:Lorg/apache/commons/httpclient/Credentials;
    :cond_b9
    invoke-virtual {v2, v9}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 730
    iget-object v10, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v10, v1}, Lorg/apache/commons/httpclient/HttpState;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 731
    .restart local v4       #credentials:Lorg/apache/commons/httpclient/Credentials;
    if-nez v4, :cond_cc

    .line 732
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v10

    invoke-direct {p0, v0, v10, v1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;

    move-result-object v4

    .line 735
    :cond_cc
    if-nez v4, :cond_f0

    .line 736
    sget-object v9, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v9}, Lorg/apache/commons/logging/Log;->isInfoEnabled()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 737
    sget-object v9, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "No credentials available for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto/16 :goto_1d

    :cond_f0
    move v8, v9

    .line 741
    goto/16 :goto_1d
.end method

.method private promptForCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 10
    .parameter "authScheme"
    .parameter "params"
    .parameter "authscope"

    .prologue
    .line 861
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Credentials required"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 862
    const/4 v1, 0x0

    .line 863
    .local v1, creds:Lorg/apache/commons/httpclient/Credentials;
    const-string v3, "http.authentication.credential-provider"

    invoke-interface {p2, v3}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 865
    .local v0, credProvider:Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v0, :cond_52

    .line 867
    :try_start_12
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_1e
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_12 .. :try_end_1e} :catch_47

    move-result-object v1

    .line 872
    :goto_1f
    if-eqz v1, :cond_46

    .line 873
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3, p3, v1}, Lorg/apache/commons/httpclient/HttpState;->setCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 874
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 875
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " new credentials given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 881
    :cond_46
    :goto_46
    return-object v1

    .line 869
    :catch_47
    move-exception v2

    .line 870
    .local v2, e:Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1f

    .line 879
    .end local v2           #e:Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :cond_52
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Credentials provider not available"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_46
.end method

.method private promptForProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Lorg/apache/commons/httpclient/params/HttpParams;Lorg/apache/commons/httpclient/auth/AuthScope;)Lorg/apache/commons/httpclient/Credentials;
    .registers 10
    .parameter "authScheme"
    .parameter "params"
    .parameter "authscope"

    .prologue
    .line 889
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy credentials required"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 890
    const/4 v1, 0x0

    .line 891
    .local v1, creds:Lorg/apache/commons/httpclient/Credentials;
    const-string v3, "http.authentication.credential-provider"

    invoke-interface {p2, v3}, Lorg/apache/commons/httpclient/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/httpclient/auth/CredentialsProvider;

    .line 893
    .local v0, credProvider:Lorg/apache/commons/httpclient/auth/CredentialsProvider;
    if-eqz v0, :cond_52

    .line 895
    :try_start_12
    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/apache/commons/httpclient/auth/AuthScope;->getPort()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface {v0, p1, v3, v4, v5}, Lorg/apache/commons/httpclient/auth/CredentialsProvider;->getCredentials(Lorg/apache/commons/httpclient/auth/AuthScheme;Ljava/lang/String;IZ)Lorg/apache/commons/httpclient/Credentials;
    :try_end_1e
    .catch Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException; {:try_start_12 .. :try_end_1e} :catch_47

    move-result-object v1

    .line 900
    :goto_1f
    if-eqz v1, :cond_46

    .line 901
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v3, p3, v1}, Lorg/apache/commons/httpclient/HttpState;->setProxyCredentials(Lorg/apache/commons/httpclient/auth/AuthScope;Lorg/apache/commons/httpclient/Credentials;)V

    .line 902
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 903
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " new credentials given"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 909
    :cond_46
    :goto_46
    return-object v1

    .line 897
    :catch_47
    move-exception v2

    .line 898
    .local v2, e:Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_1f

    .line 907
    .end local v2           #e:Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
    :cond_52
    sget-object v3, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Proxy credentials provider not available"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_46
.end method


# virtual methods
.method public executeMethod(Lorg/apache/commons/httpclient/HttpMethod;)V
    .registers 12
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/httpclient/HttpException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 121
    if-nez p1, :cond_b

    .line 122
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Method may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 126
    :cond_b
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HostParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 127
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getParams()Lorg/apache/commons/httpclient/params/HttpMethodParams;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HttpMethodParams;->setDefaults(Lorg/apache/commons/httpclient/params/HttpParams;)V

    .line 130
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HostConfiguration;->getParams()Lorg/apache/commons/httpclient/params/HostParams;

    move-result-object v5

    const-string v6, "http.default-headers"

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/params/HostParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 132
    .local v0, defaults:Ljava/util/Collection;
    if-eqz v0, :cond_47

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 134
    .local v1, i:Ljava/util/Iterator;
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/httpclient/Header;

    invoke-interface {p1, v5}, Lorg/apache/commons/httpclient/HttpMethod;->addRequestHeader(Lorg/apache/commons/httpclient/Header;)V

    goto :goto_37

    .line 140
    .end local v1           #i:Ljava/util/Iterator;
    :cond_47
    :try_start_47
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    const-string v6, "http.protocol.max-redirects"

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v2

    .line 142
    .local v2, maxRedirects:I
    const/4 v3, 0x0

    .line 145
    .local v3, redirectCount:I
    :cond_52
    :goto_52
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/HostConfiguration;->hostEquals(Lorg/apache/commons/httpclient/HttpConnection;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 146
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 147
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 148
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    .line 152
    :cond_6e
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-nez v5, :cond_cd

    .line 153
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/params/HttpClientParams;->getConnectionManagerTimeout()J

    move-result-wide v7

    invoke-interface {v5, v6, v7, v8}, Lorg/apache/commons/httpclient/HttpConnectionManager;->getConnectionWithTimeout(Lorg/apache/commons/httpclient/HostConfiguration;J)Lorg/apache/commons/httpclient/HttpConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    .line 157
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 158
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpClientParams;->isAuthenticationPreemptive()Z

    move-result v5

    if-nez v5, :cond_98

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpState;->isAuthenticationPreemptive()Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 161
    :cond_98
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Preemptively sending default basic credentials"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 163
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getHostAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 164
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v5

    if-eqz v5, :cond_cd

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v5

    if-nez v5, :cond_cd

    .line 165
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/auth/AuthState;->setPreemptive()V

    .line 166
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getProxyAuthState()Lorg/apache/commons/httpclient/auth/AuthState;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/commons/httpclient/auth/AuthState;->setAuthAttempted(Z)V

    .line 170
    :cond_cd
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->authenticate(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 171
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->executeWithRetry(Lorg/apache/commons/httpclient/HttpMethod;)V

    .line 172
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectMethod:Lorg/apache/commons/httpclient/ConnectMethod;

    if-eqz v5, :cond_f7

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->fakeResponse(Lorg/apache/commons/httpclient/HttpMethod;)V
    :try_end_da
    .catchall {:try_start_47 .. :try_end_da} :catchall_12f

    .line 210
    :cond_da
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v5, :cond_e3

    .line 211
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5, v9}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_e3
    iget-boolean v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v5, :cond_ed

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_f6

    :cond_ed
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v5, :cond_f6

    .line 222
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    .line 226
    :cond_f6
    return-void

    .line 177
    :cond_f7
    const/4 v4, 0x0

    .line 178
    .local v4, retry:Z
    :try_start_f8
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isRedirectNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_177

    .line 179
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processRedirectResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_177

    .line 180
    const/4 v4, 0x1

    .line 181
    add-int/lit8 v3, v3, 0x1

    .line 182
    if-lt v3, v2, :cond_14d

    .line 183
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Narrowly avoided an infinite loop in execute"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;)V

    .line 184
    new-instance v5, Lorg/apache/commons/httpclient/RedirectException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Maximum redirects ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ") exceeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_12f
    .catchall {:try_start_f8 .. :try_end_12f} :catchall_12f

    .line 210
    .end local v2           #maxRedirects:I
    .end local v3           #redirectCount:I
    .end local v4           #retry:Z
    :catchall_12f
    move-exception v5

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v6, :cond_139

    .line 211
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6, v9}, Lorg/apache/commons/httpclient/HttpConnection;->setLocked(Z)V

    .line 218
    :cond_139
    iget-boolean v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->releaseConnection:Z

    if-nez v6, :cond_143

    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v6

    if-nez v6, :cond_14c

    :cond_143
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    if-eqz v6, :cond_14c

    .line 222
    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->conn:Lorg/apache/commons/httpclient/HttpConnection;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/HttpConnection;->releaseConnection()V

    :cond_14c
    throw v5

    .line 187
    .restart local v2       #maxRedirects:I
    .restart local v3       #redirectCount:I
    .restart local v4       #retry:Z
    :cond_14d
    :try_start_14d
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_177

    .line 188
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Execute redirect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 192
    :cond_177
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->isAuthenticationNeeded(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 193
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpMethodDirector;->processAuthenticationResponse(Lorg/apache/commons/httpclient/HttpMethod;)Z

    move-result v5

    if-eqz v5, :cond_18b

    .line 194
    sget-object v5, Lorg/apache/commons/httpclient/HttpMethodDirector;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Retry authentication"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 195
    const/4 v4, 0x1

    .line 198
    :cond_18b
    if-eqz v4, :cond_da

    .line 204
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 205
    invoke-interface {p1}, Lorg/apache/commons/httpclient/HttpMethod;->getResponseBodyAsStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_19a
    .catchall {:try_start_14d .. :try_end_19a} :catchall_12f

    goto/16 :goto_52
.end method

.method public getConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .registers 2

    .prologue
    .line 930
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->connectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    return-object v0
.end method

.method public getHostConfiguration()Lorg/apache/commons/httpclient/HostConfiguration;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->hostConfiguration:Lorg/apache/commons/httpclient/HostConfiguration;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpParams;
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->params:Lorg/apache/commons/httpclient/params/HttpClientParams;

    return-object v0
.end method

.method public getState()Lorg/apache/commons/httpclient/HttpState;
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpMethodDirector;->state:Lorg/apache/commons/httpclient/HttpState;

    return-object v0
.end method