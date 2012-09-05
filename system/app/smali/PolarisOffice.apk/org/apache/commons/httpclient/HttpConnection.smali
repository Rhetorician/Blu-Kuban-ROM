.class public Lorg/apache/commons/httpclient/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# static fields
.field private static final CRLF:[B

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field static class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

.field private inputStream:Ljava/io/InputStream;

.field protected isOpen:Z

.field private lastResponseInputStream:Ljava/io/InputStream;

.field private localAddress:Ljava/net/InetAddress;

.field private locked:Z

.field private outputStream:Ljava/io/OutputStream;

.field private params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

.field private portNumber:I

.field private protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

.field private proxyHostName:Ljava/lang/String;

.field private proxyPortNumber:I

.field private socket:Ljava/net/Socket;

.field private tunnelEstablished:Z

.field private usingSecureSocket:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1318
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->CRLF:[B

    .line 1321
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    if-nez v0, :cond_1b

    const-string v0, "org.apache.commons.httpclient.HttpConnection"

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpConnection;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    :goto_14
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    return-void

    :cond_1b
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->class$org$apache$commons$httpclient$HttpConnection:Ljava/lang/Class;

    goto :goto_14

    .line 1318
    :array_1e
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .parameter "host"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 104
    const/4 v2, -0x1

    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v6

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .registers 12
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 146
    const/4 v4, 0x0

    const-string v0, "http"

    invoke-static {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 9
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "host"
    .parameter "port"
    .parameter "protocol"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1326
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 1329
    iput v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 1332
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 1335
    iput v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 1338
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1341
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1344
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1347
    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 1350
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    .line 1356
    new-instance v0, Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-direct {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .line 1360
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    .line 1363
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 1366
    iput-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 205
    if-nez p3, :cond_2f

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_2f
    if-nez p5, :cond_39

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_39
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 213
    iput p2, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 214
    iput-object p3, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 215
    invoke-virtual {p5, p4}, Lorg/apache/commons/httpclient/protocol/Protocol;->resolvePort(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 216
    iput-object p5, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 13
    .parameter "proxyHost"
    .parameter "proxyPort"
    .parameter "host"
    .parameter "virtualHost"
    .parameter "port"
    .parameter "protocol"

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 11
    .parameter "host"
    .parameter "port"
    .parameter "protocol"

    .prologue
    const/4 v1, 0x0

    .line 116
    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 12
    .parameter "host"
    .parameter "virtualHost"
    .parameter "port"
    .parameter "protocol"

    .prologue
    .line 129
    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/httpclient/HostConfiguration;)V
    .registers 8
    .parameter "hostConfiguration"

    .prologue
    .line 155
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProxyPort()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getPort()I

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/httpclient/HttpConnection;-><init>(Ljava/lang/String;ILjava/lang/String;ILorg/apache/commons/httpclient/protocol/Protocol;)V

    .line 160
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/HostConfiguration;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    .line 161
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 1321
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


# virtual methods
.method protected assertNotOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1265
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v0, :cond_c

    .line 1266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_c
    return-void
.end method

.method protected assertOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1276
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-nez v0, :cond_c

    .line 1277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_c
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 1148
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.close()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1149
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->closeSocketAndStreams()V

    .line 1150
    return-void
.end method

.method public closeIfStale()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isStale()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 432
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection is stale, closing..."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->close()V

    .line 434
    const/4 v0, 0x1

    .line 436
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected closeSocketAndStreams()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1215
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpConnection.closeSockedAndStreams()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1217
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    .line 1220
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 1222
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_18

    .line 1223
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1224
    .local v1, temp:Ljava/io/OutputStream;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 1226
    :try_start_15
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_33

    .line 1233
    .end local v1           #temp:Ljava/io/OutputStream;
    :cond_18
    :goto_18
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_23

    .line 1234
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1235
    .local v1, temp:Ljava/io/InputStream;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 1237
    :try_start_20
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_3c

    .line 1244
    .end local v1           #temp:Ljava/io/InputStream;
    :cond_23
    :goto_23
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_2e

    .line 1245
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1246
    .local v1, temp:Ljava/net/Socket;
    iput-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 1248
    :try_start_2b
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_45

    .line 1255
    .end local v1           #temp:Ljava/net/Socket;
    :cond_2e
    :goto_2e
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 1256
    iput-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 1257
    return-void

    .line 1227
    .local v1, temp:Ljava/io/OutputStream;
    :catch_33
    move-exception v0

    .line 1228
    .local v0, ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing output"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 1238
    .end local v0           #ex:Ljava/lang/Exception;
    .local v1, temp:Ljava/io/InputStream;
    :catch_3c
    move-exception v0

    .line 1239
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing input"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_23

    .line 1249
    .end local v0           #ex:Ljava/lang/Exception;
    .local v1, temp:Ljava/net/Socket;
    :catch_45
    move-exception v0

    .line 1250
    .restart local v0       #ex:Ljava/lang/Exception;
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception caught when closing socket"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method public flushRequestOutputStream()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.flushRequestOutputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 827
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 828
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 829
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpConnectionManager()Lorg/apache/commons/httpclient/HttpConnectionManager;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    return-object v0
.end method

.method public getLastResponseInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getParams()Lorg/apache/commons/httpclient/params/HttpConnectionParams;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    if-gez v0, :cond_10

    .line 294
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1bb

    .line 296
    :goto_c
    return v0

    .line 294
    :cond_d
    const/16 v0, 0x50

    goto :goto_c

    .line 296
    :cond_10
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    goto :goto_c
.end method

.method public getProtocol()Lorg/apache/commons/httpclient/protocol/Protocol;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    return v0
.end method

.method public getRequestOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 840
    sget-object v2, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v3, "enter HttpConnection.getRequestOutputStream()"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 842
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 843
    .local v0, out:Ljava/io/OutputStream;
    sget-object v2, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-virtual {v2}, Lorg/apache/commons/httpclient/Wire;->enabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 844
    new-instance v1, Lorg/apache/commons/httpclient/WireLogOutputStream;

    sget-object v2, Lorg/apache/commons/httpclient/Wire;->CONTENT_WIRE:Lorg/apache/commons/httpclient/Wire;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/httpclient/WireLogOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/httpclient/Wire;)V

    .end local v0           #out:Ljava/io/OutputStream;
    .local v1, out:Ljava/io/OutputStream;
    move-object v0, v1

    .line 846
    .end local v1           #out:Ljava/io/OutputStream;
    .restart local v0       #out:Ljava/io/OutputStream;
    :cond_1c
    return-object v0
.end method

.method public getResponseInputStream()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 857
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.getResponseInputStream()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 858
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 859
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getSendBufferSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1292
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_6

    .line 1293
    const/4 v0, -0x1

    .line 1295
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    goto :goto_5
.end method

.method public getSoTimeout()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getVirtualHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method protected isLocked()Z
    .registers 2

    .prologue
    .line 1194
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    return v0
.end method

.method public isProxied()Z
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isResponseAvailable()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 874
    sget-object v1, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter HttpConnection.isResponseAvailable()"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 875
    iget-boolean v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v1, :cond_15

    .line 876
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_15

    const/4 v0, 0x1

    .line 878
    :cond_15
    return v0
.end method

.method public isResponseAvailable(I)Z
    .registers 9
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 894
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpConnection.isResponseAvailable(int)"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, result:Z
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_15

    .line 898
    const/4 v3, 0x1

    .line 929
    :goto_14
    return v3

    .line 901
    :cond_15
    :try_start_15
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 902
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->mark(I)V

    .line 903
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 904
    .local v0, byteRead:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_4c

    .line 905
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 906
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Input data available"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_5c
    .catch Ljava/io/InterruptedIOException; {:try_start_15 .. :try_end_35} :catch_54

    .line 907
    const/4 v3, 0x1

    .line 920
    :goto_36
    :try_start_36
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_41} :catch_42

    goto :goto_14

    .line 921
    :catch_42
    move-exception v2

    .line 922
    .local v2, ioe:Ljava/io/IOException;
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "An error ocurred while resetting soTimeout, we will assume that no response is available."

    invoke-interface {v4, v5, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    const/4 v3, 0x0

    .line 927
    goto :goto_14

    .line 909
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_4c
    :try_start_4c
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Input data not available"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_5c
    .catch Ljava/io/InterruptedIOException; {:try_start_4c .. :try_end_53} :catch_54

    goto :goto_36

    .line 911
    .end local v0           #byteRead:I
    :catch_54
    move-exception v1

    .line 912
    .local v1, e:Ljava/io/InterruptedIOException;
    :try_start_55
    invoke-static {v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 913
    throw v1
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_5c

    .line 919
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :catchall_5c
    move-exception v4

    .line 920
    :try_start_5d
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v6}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_68} :catch_a7

    .line 926
    :goto_68
    throw v4

    .line 915
    .restart local v1       #e:Ljava/io/InterruptedIOException;
    :cond_69
    :try_start_69
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 916
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Input data not available after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_8f
    .catchall {:try_start_69 .. :try_end_8f} :catchall_5c

    .line 920
    :cond_8f
    :try_start_8f
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_9a} :catch_9c

    goto/16 :goto_14

    .line 921
    :catch_9c
    move-exception v2

    .line 922
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "An error ocurred while resetting soTimeout, we will assume that no response is available."

    invoke-interface {v4, v5, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    const/4 v3, 0x0

    .line 927
    goto/16 :goto_14

    .line 921
    .end local v1           #e:Ljava/io/InterruptedIOException;
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_a7
    move-exception v2

    .line 922
    .restart local v2       #ioe:Ljava/io/IOException;
    sget-object v5, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "An error ocurred while resetting soTimeout, we will assume that no response is available."

    invoke-interface {v5, v6, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 925
    const/4 v3, 0x0

    goto :goto_68
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/protocol/Protocol;->isSecure()Z

    move-result v0

    return v0
.end method

.method protected isStale()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    const/4 v2, 0x1

    .line 497
    .local v2, isStale:Z
    iget-boolean v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z

    if-eqz v3, :cond_2f

    .line 500
    const/4 v2, 0x0

    .line 502
    :try_start_6
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_b
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_b} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_4b

    move-result v3

    if-gtz v3, :cond_2f

    .line 504
    :try_start_e
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 505
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    .line 506
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_36

    move-result v0

    .line 507
    .local v0, byteRead:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_30

    .line 510
    const/4 v2, 0x1

    .line 515
    :goto_24
    :try_start_24
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2f
    .catch Ljava/io/InterruptedIOException; {:try_start_24 .. :try_end_2f} :catch_43
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_4b

    .line 533
    .end local v0           #byteRead:I
    :cond_2f
    :goto_2f
    return v2

    .line 512
    .restart local v0       #byteRead:I
    :cond_30
    :try_start_30
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_36

    goto :goto_24

    .line 515
    .end local v0           #byteRead:I
    :catchall_36
    move-exception v3

    :try_start_37
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_43
    .catch Ljava/io/InterruptedIOException; {:try_start_37 .. :try_end_43} :catch_43
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_4b

    .line 518
    :catch_43
    move-exception v1

    .line 519
    .local v1, e:Ljava/io/InterruptedIOException;
    invoke-static {v1}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->isSocketTimeoutException(Ljava/io/InterruptedIOException;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 520
    throw v1

    .line 523
    .end local v1           #e:Ljava/io/InterruptedIOException;
    :catch_4b
    move-exception v1

    .line 525
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "An error occurred while reading from the socket, is appears to be stale"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 529
    const/4 v2, 0x1

    goto :goto_2f
.end method

.method public isStaleCheckingEnabled()Z
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->isStaleCheckingEnabled()Z

    move-result v0

    return v0
.end method

.method public isTransparent()Z
    .registers 2

    .prologue
    .line 816
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public open()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "enter HttpConnection.open()"

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 687
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-nez v3, :cond_ef

    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 688
    .local v1, host:Ljava/lang/String;
    :goto_d
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    if-nez v3, :cond_f3

    iget v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 689
    .local v2, port:I
    :goto_13
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 691
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 692
    sget-object v3, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Open connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 696
    :cond_40
    :try_start_40
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-nez v3, :cond_75

    .line 697
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_f7

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v3

    if-nez v3, :cond_f7

    const/4 v3, 0x1

    :goto_51
    iput-boolean v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_fa

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 702
    const-string v3, "http"

    invoke-static {v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getProtocol(Ljava/lang/String;)Lorg/apache/commons/httpclient/protocol/Protocol;

    move-result-object v6

    .line 703
    .local v6, defaultprotocol:Lorg/apache/commons/httpclient/protocol/Protocol;
    invoke-virtual {v6}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v0

    .line 707
    .end local v6           #defaultprotocol:Lorg/apache/commons/httpclient/protocol/Protocol;
    :goto_6a
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/commons/httpclient/params/HttpConnectionParams;)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 721
    .end local v0           #socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    :cond_75
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getTcpNoDelay()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 722
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v4}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSoTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 724
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getLinger()I

    move-result v9

    .line 725
    .local v9, linger:I
    if-ltz v9, :cond_9b

    .line 726
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-lez v9, :cond_102

    const/4 v3, 0x1

    :goto_98
    invoke-virtual {v4, v3, v9}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 729
    :cond_9b
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSendBufferSize()I

    move-result v12

    .line 730
    .local v12, sndBufSize:I
    if-ltz v12, :cond_a8

    .line 731
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v12}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 733
    :cond_a8
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getReceiveBufferSize()I

    move-result v11

    .line 734
    .local v11, rcvBufSize:I
    if-ltz v11, :cond_b5

    .line 735
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v11}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 737
    :cond_b5
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v10

    .line 738
    .local v10, outbuffersize:I
    const/16 v3, 0x800

    if-gt v10, v3, :cond_c1

    if-gtz v10, :cond_c3

    .line 739
    :cond_c1
    const/16 v10, 0x800

    .line 741
    :cond_c3
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v8

    .line 742
    .local v8, inbuffersize:I
    const/16 v3, 0x800

    if-gt v8, v3, :cond_cf

    if-gtz v8, :cond_d1

    .line 743
    :cond_cf
    const/16 v8, 0x800

    .line 745
    :cond_d1
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 746
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 747
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->isOpen:Z
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_ee} :catch_104

    .line 754
    return-void

    .line 687
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    .end local v8           #inbuffersize:I
    .end local v9           #linger:I
    .end local v10           #outbuffersize:I
    .end local v11           #rcvBufSize:I
    .end local v12           #sndBufSize:I
    :cond_ef
    iget-object v1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    goto/16 :goto_d

    .line 688
    .restart local v1       #host:Ljava/lang/String;
    :cond_f3
    iget v2, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    goto/16 :goto_13

    .line 697
    .restart local v2       #port:I
    :cond_f7
    const/4 v3, 0x0

    goto/16 :goto_51

    .line 705
    .restart local v0       #socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    :cond_fa
    :try_start_fa
    iget-object v3, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v3}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    :try_end_ff
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_ff} :catch_104

    move-result-object v0

    goto/16 :goto_6a

    .line 726
    .end local v0           #socketFactory:Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;
    .restart local v9       #linger:I
    :cond_102
    const/4 v3, 0x0

    goto :goto_98

    .line 748
    .end local v9           #linger:I
    :catch_104
    move-exception v7

    .line 751
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->closeSocketAndStreams()V

    .line 752
    throw v7
.end method

.method public print(Ljava/lang/String;)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1016
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.print(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1017
    const-string v0, "ISO-8859-1"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1018
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "data"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1032
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.print(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1033
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1034
    return-void
.end method

.method public printLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1077
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 1079
    return-void
.end method

.method public printLine(Ljava/lang/String;)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1048
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1049
    const-string v0, "ISO-8859-1"

    invoke-static {p1, v0}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine([B)V

    .line 1050
    return-void
.end method

.method public printLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "data"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1065
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.printLine(String)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1066
    invoke-static {p1, p2}, Lorg/apache/commons/httpclient/util/EncodingUtil;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine([B)V

    .line 1067
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1093
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.readLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 1096
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1113
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.readLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 1116
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lorg/apache/commons/httpclient/HttpParser;->readLine(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public releaseConnection()V
    .registers 3

    .prologue
    .line 1174
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.releaseConnection()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1175
    iget-boolean v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    if-eqz v0, :cond_13

    .line 1176
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection is locked.  Call to releaseConnection() ignored."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1183
    :goto_12
    return-void

    .line 1177
    :cond_13
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    if-eqz v0, :cond_24

    .line 1178
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "Releasing connection back to connection manager."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1179
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    invoke-interface {v0, p0}, Lorg/apache/commons/httpclient/HttpConnectionManager;->releaseConnection(Lorg/apache/commons/httpclient/HttpConnection;)V

    goto :goto_12

    .line 1181
    :cond_24
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "HttpConnectionManager is null.  Connection cannot be released."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method public setConnectionTimeout(I)V
    .registers 3
    .parameter "timeout"

    .prologue
    .line 673
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setConnectionTimeout(I)V

    .line 674
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 248
    if-nez p1, :cond_a

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "host parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_a
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 252
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setHttpConnectionManager(Lorg/apache/commons/httpclient/HttpConnectionManager;)V
    .registers 2
    .parameter "httpConnectionManager"

    .prologue
    .line 1165
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->httpConnectionManager:Lorg/apache/commons/httpclient/HttpConnectionManager;

    .line 1166
    return-void
.end method

.method public setLastResponseInputStream(Ljava/io/InputStream;)V
    .registers 2
    .parameter "inStream"

    .prologue
    .line 558
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->lastResponseInputStream:Ljava/io/InputStream;

    .line 559
    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .registers 2
    .parameter "localAddress"

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 408
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->localAddress:Ljava/net/InetAddress;

    .line 409
    return-void
.end method

.method protected setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 1207
    iput-boolean p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->locked:Z

    .line 1208
    return-void
.end method

.method public setParams(Lorg/apache/commons/httpclient/params/HttpConnectionParams;)V
    .registers 4
    .parameter "params"

    .prologue
    .line 599
    if-nez p1, :cond_a

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 602
    :cond_a
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    .line 603
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 309
    iput p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    .line 310
    return-void
.end method

.method public setProtocol(Lorg/apache/commons/httpclient/protocol/Protocol;)V
    .registers 4
    .parameter "protocol"

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 382
    if-nez p1, :cond_d

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocol is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_d
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    .line 388
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 330
    iput-object p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyHostName:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setProxyPort(I)V
    .registers 2
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 351
    iput p1, p0, Lorg/apache/commons/httpclient/HttpConnection;->proxyPortNumber:I

    .line 352
    return-void
.end method

.method public setSendBufferSize(I)V
    .registers 3
    .parameter "sendBufferSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 1312
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setSendBufferSize(I)V

    .line 1313
    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setSoTimeout(I)V

    .line 622
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_e

    .line 623
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 625
    :cond_e
    return-void
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 642
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 643
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 645
    :cond_c
    return-void
.end method

.method public setStaleCheckingEnabled(Z)V
    .registers 3
    .parameter "staleCheckEnabled"

    .prologue
    .line 470
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v0, p1}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->setStaleCheckingEnabled(Z)V

    .line 471
    return-void
.end method

.method public setVirtualHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertNotOpen()V

    .line 282
    return-void
.end method

.method public shutdownOutput()V
    .registers 7

    .prologue
    .line 1126
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "enter HttpConnection.shutdownOutput()"

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1132
    const/4 v4, 0x0

    :try_start_8
    new-array v2, v4, [Ljava/lang/Class;

    .line 1133
    .local v2, paramsClasses:[Ljava/lang/Class;
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "shutdownOutput"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1135
    .local v3, shutdownOutput:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    .line 1136
    .local v1, params:[Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_1f

    .line 1142
    .end local v1           #params:[Ljava/lang/Object;
    .end local v2           #paramsClasses:[Ljava/lang/Class;
    .end local v3           #shutdownOutput:Ljava/lang/reflect/Method;
    :goto_1e
    return-void

    .line 1137
    :catch_1f
    move-exception v0

    .line 1138
    .local v0, ex:Ljava/lang/Exception;
    sget-object v4, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v5, "Unexpected Exception caught"

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method public tunnelCreated()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x1

    .line 767
    sget-object v5, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "enter HttpConnection.tunnelCreated()"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 769
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->isProxied()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 770
    :cond_16
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Connection must be secure and proxied to use this feature"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 775
    :cond_1e
    iget-boolean v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    if-eqz v5, :cond_2a

    .line 776
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Already using a secure socket"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 779
    :cond_2a
    sget-object v5, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 780
    sget-object v5, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Secure tunnel to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    iget v7, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 783
    :cond_58
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->protocolInUse:Lorg/apache/commons/httpclient/protocol/Protocol;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/protocol/Protocol;->getSocketFactory()Lorg/apache/commons/httpclient/protocol/ProtocolSocketFactory;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;

    .line 786
    .local v4, socketFactory:Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->hostName:Ljava/lang/String;

    iget v7, p0, Lorg/apache/commons/httpclient/HttpConnection;->portNumber:I

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/apache/commons/httpclient/protocol/SecureProtocolSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    .line 787
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getSendBufferSize()I

    move-result v3

    .line 788
    .local v3, sndBufSize:I
    if-ltz v3, :cond_79

    .line 789
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 791
    :cond_79
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->params:Lorg/apache/commons/httpclient/params/HttpConnectionParams;

    invoke-virtual {v5}, Lorg/apache/commons/httpclient/params/HttpConnectionParams;->getReceiveBufferSize()I

    move-result v2

    .line 792
    .local v2, rcvBufSize:I
    if-ltz v2, :cond_86

    .line 793
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5, v2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 795
    :cond_86
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v1

    .line 796
    .local v1, outbuffersize:I
    if-le v1, v9, :cond_90

    .line 797
    const/16 v1, 0x800

    .line 799
    :cond_90
    iget-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    .line 800
    .local v0, inbuffersize:I
    if-le v0, v9, :cond_9a

    .line 801
    const/16 v0, 0x800

    .line 803
    :cond_9a
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->inputStream:Ljava/io/InputStream;

    .line 804
    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lorg/apache/commons/httpclient/HttpConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v5, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    .line 805
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpConnection;->usingSecureSocket:Z

    .line 806
    iput-boolean v8, p0, Lorg/apache/commons/httpclient/HttpConnection;->tunnelEstablished:Z

    .line 807
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 942
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.write(byte[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 943
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/httpclient/HttpConnection;->write([BII)V

    .line 944
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 963
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.write(byte[], int, int)"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 965
    if-gez p2, :cond_11

    .line 966
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array offset may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_11
    if-gez p3, :cond_1b

    .line 969
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array length may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    :cond_1b
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_28

    .line 972
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given offset and length exceed the array length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_28
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->assertOpen()V

    .line 975
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 976
    return-void
.end method

.method public writeLine()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1001
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.writeLine()"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 1002
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->CRLF:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 1003
    return-void
.end method

.method public writeLine([B)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 988
    sget-object v0, Lorg/apache/commons/httpclient/HttpConnection;->LOG:Lorg/apache/commons/logging/Log;

    const-string v1, "enter HttpConnection.writeLine(byte[])"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p0, p1}, Lorg/apache/commons/httpclient/HttpConnection;->write([B)V

    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/httpclient/HttpConnection;->writeLine()V

    .line 991
    return-void
.end method