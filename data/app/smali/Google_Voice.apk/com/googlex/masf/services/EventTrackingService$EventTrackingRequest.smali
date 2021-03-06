.class Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlex/masf/services/EventTrackingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventTrackingRequest"
.end annotation


# instance fields
.field private requestData:[B

.field private final serviceCallback:Lcom/googlex/masf/ServiceCallback;


# direct methods
.method public constructor <init>(ILcom/googlex/masf/ServiceCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->serviceCallback:Lcom/googlex/masf/ServiceCallback;

    invoke-direct {p0, p1}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->buildActivationProtoBuf(I)Lcom/googlex/common/io/protocol/ProtoBuf;

    move-result-object v0

    :try_start_9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->requestData:[B
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/googlex/masf/services/EventTrackingService;->access$000()Lcom/googlex/debug/LogSource;

    move-result-object v1

    const-string v2, "logActivation() Error reading protoBuf"

    invoke-virtual {v1, v2, v0}, Lcom/googlex/debug/LogSource;->severe(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_17
.end method

.method private buildActivationProtoBuf(I)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/googlex/masf/services/TrackerServiceMessageTypes;->EVENT_LOGGING_REQUEST:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    invoke-direct {p0}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    new-instance v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/googlex/masf/services/TrackerServiceMessageTypes;->EVENT:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    const/16 v2, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setInt(II)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setInt(II)V

    const/4 v2, 0x6

    invoke-static {}, Lcom/googlex/common/Config;->getCarrier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    const/4 v2, 0x4

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlex/common/Config;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->setValue(Lcom/googlex/common/io/protocol/ProtoBuf;ILjava/lang/String;)V

    const/16 v2, 0xc

    const-string v3, "DistributionChannel"

    invoke-direct {p0, v1, v2, v3}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->setProperty(Lcom/googlex/common/io/protocol/ProtoBuf;ILjava/lang/String;)V

    const/4 v2, 0x5

    const-string v3, "DownloadLocale"

    invoke-direct {p0, v1, v2, v3}, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->setProperty(Lcom/googlex/common/io/protocol/ProtoBuf;ILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/googlex/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method private getSessionId()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    const-string v1, "MIDlet-Install-Notify"

    invoke-virtual {v0, v1}, Lcom/googlex/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v1, Lcom/googlex/common/io/HttpRequestDesc;

    invoke-direct {v1, v0}, Lcom/googlex/common/io/HttpRequestDesc;-><init>(Ljava/lang/String;)V

    const-string v0, "session"

    invoke-virtual {v1, v0}, Lcom/googlex/common/io/HttpRequestDesc;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    :try_start_1d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_20} :catch_22

    move-result-wide v0

    return-wide v0

    :catch_22
    move-exception v0

    :cond_23
    new-instance v0, Ljava/io/IOException;

    const-string v1, "getSessionId() could not find a sessionID."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setProperty(Lcom/googlex/common/io/protocol/ProtoBuf;ILjava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/googlex/common/Config;->getAppProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method private setValue(Lcom/googlex/common/io/protocol/ProtoBuf;ILjava/lang/String;)V
    .registers 5

    invoke-static {p3}, Lcom/googlex/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, p2, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public logActivation()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->getSingleton()Lcom/googlex/masf/MobileServiceMux;

    move-result-object v0

    new-instance v1, Lcom/googlex/masf/protocol/PlainRequest;

    const-string v2, "g:trk/log"

    iget-object v3, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->requestData:[B

    invoke-direct {v1, v2, v4, v3}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v1, p0}, Lcom/googlex/masf/protocol/Request;->setListener(Lcom/googlex/masf/protocol/Request$Listener;)V

    invoke-virtual {v0, v1, v4}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;Z)V

    return-void
.end method

.method public requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
    .registers 7

    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Lcom/googlex/masf/protocol/Response;->getStatusCode()I

    move-result v0

    invoke-static {}, Lcom/googlex/masf/services/EventTrackingService;->access$000()Lcom/googlex/debug/LogSource;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventTrackingService.requestComplete: status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/googlex/debug/LogSource;->fine(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->serviceCallback:Lcom/googlex/masf/ServiceCallback;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->serviceCallback:Lcom/googlex/masf/ServiceCallback;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/googlex/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 5

    invoke-static {}, Lcom/googlex/masf/services/EventTrackingService;->access$000()Lcom/googlex/debug/LogSource;

    move-result-object v0

    const-string v1, "Failed to register application activation."

    invoke-virtual {v0, v1}, Lcom/googlex/debug/LogSource;->warning(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->serviceCallback:Lcom/googlex/masf/ServiceCallback;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/googlex/masf/services/EventTrackingService$EventTrackingRequest;->serviceCallback:Lcom/googlex/masf/ServiceCallback;

    invoke-interface {v0, p2}, Lcom/googlex/masf/ServiceCallback;->onRequestComplete(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
