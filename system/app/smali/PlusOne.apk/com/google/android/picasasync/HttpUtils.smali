.class Lcom/google/android/picasasync/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager;
    }
.end annotation


# static fields
.field private static final sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static final sHttpClientParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x4e20

    .line 59
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 60
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-wide/16 v2, 0x4e20

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 63
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 64
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 65
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 68
    new-instance v2, Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager;

    invoke-direct {v2, v0, v1}, Lcom/google/android/picasasync/HttpUtils$MetricsTrackingConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/google/android/picasasync/HttpUtils;->sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 70
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 71
    .restart local v0       #params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 72
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 73
    invoke-static {v0, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 74
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 75
    const-string v2, "PicasaSync/1.0"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 76
    sput-object v0, Lcom/google/android/picasasync/HttpUtils;->sHttpClientParams:Lorg/apache/http/params/HttpParams;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static abortConnectionSilently(Ljava/io/InputStream;)V
    .registers 2
    .parameter "is"

    .prologue
    .line 158
    instance-of v0, p0, Lorg/apache/http/conn/ConnectionReleaseTrigger;

    if-eqz v0, :cond_9

    .line 160
    :try_start_4
    check-cast p0, Lorg/apache/http/conn/ConnectionReleaseTrigger;

    .end local p0
    invoke-interface {p0}, Lorg/apache/http/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 164
    :cond_9
    :goto_9
    return-void

    .line 161
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static createDefaultHttpClientParams()Lorg/apache/http/params/HttpParams;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/picasasync/HttpUtils;->sHttpClientParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0}, Lorg/apache/http/params/HttpParams;->copy()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public static freeHttpEntity(Lorg/apache/http/HttpEntity;)V
    .registers 4
    .parameter "entity"

    .prologue
    .line 109
    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 113
    :cond_5
    :goto_5
    return-void

    .line 110
    :catch_6
    move-exception v0

    .line 111
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "HttpUtils"

    const-string v2, "cannot free entity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public static getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/picasasync/HttpUtils;->sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    return-object v0
.end method

.method public static openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v5, Lcom/google/android/picasasync/HttpUtils;->sConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    sget-object v6, Lcom/google/android/picasasync/HttpUtils;->sHttpClientParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 92
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 93
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 94
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 96
    .local v3, result:Ljava/io/InputStream;
    :try_start_17
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 97
    .local v4, status:I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_43

    .line 98
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_3c

    .line 102
    .end local v4           #status:I
    :catchall_3c
    move-exception v5

    if-nez v3, :cond_42

    invoke-static {v1}, Lcom/google/android/picasasync/HttpUtils;->freeHttpEntity(Lorg/apache/http/HttpEntity;)V

    :cond_42
    throw v5

    .line 100
    .restart local v4       #status:I
    :cond_43
    :try_start_43
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3c

    move-result-object v3

    .line 102
    if-nez v3, :cond_4c

    invoke-static {v1}, Lcom/google/android/picasasync/HttpUtils;->freeHttpEntity(Lorg/apache/http/HttpEntity;)V

    .line 104
    :cond_4c
    return-object v3
.end method