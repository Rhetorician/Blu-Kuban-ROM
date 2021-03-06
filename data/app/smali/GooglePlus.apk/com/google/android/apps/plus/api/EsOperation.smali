.class abstract Lcom/google/android/apps/plus/api/EsOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "EsOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/EsOperation$1;
    }
.end annotation


# instance fields
.field protected mMode:I

.field protected mProcessMasterResponseFirst:Z

.field protected final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/api/EsRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 74
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/EsOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "method"
    .parameter "url"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mMode:I

    .line 65
    return-void
.end method

.method private checkForErrors(Lcom/google/wireless/tacotruck/proto/Network$Response;)V
    .registers 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasRequestType()Z

    move-result v0

    if-nez v0, :cond_e

    .line 170
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Received a response without request type"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_e
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasErrorCode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->handleError(Lcom/google/wireless/tacotruck/proto/Network$Response;)V

    .line 176
    :cond_17
    return-void
.end method

.method private createBatchRequest()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    .registers 9

    .prologue
    .line 233
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    move-result-object v1

    .line 235
    .local v1, batchRequestBuilder:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    iget-object v5, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 236
    iget-object v5, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/api/EsRequest;

    .line 237
    .local v3, request:Lcom/google/android/apps/plus/api/EsRequest;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$Request;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    move-result-object v4

    .line 238
    .local v4, requestBuilder:Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 239
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/EsRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestType(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 240
    invoke-virtual {v3}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/protobuf/MessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->setRequestBody(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;

    .line 241
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$Request;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 244
    .end local v3           #request:Lcom/google/android/apps/plus/api/EsRequest;
    .end local v4           #requestBuilder:Lcom/google/wireless/tacotruck/proto/Network$Request$Builder;
    :cond_3c
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getActionToken()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, actionToken:Ljava/lang/String;
    const-string v5, "HttpTransaction"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 246
    const-string v5, "HttpTransaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using action token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_61
    invoke-virtual {v1, v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->setActionToken(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;

    .line 250
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v5

    return-object v5
.end method

.method protected static createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 289
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ES_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/api/EsOperation;->appendLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isFullSync(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/api/EsOperation;->appendSyncParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActionToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ME_AT"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/network/AuthData;->getActionToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setActionToken(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ME_AT"

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/network/AuthData;->setActionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method


# virtual methods
.method protected addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V
    .registers 5
    .parameter "type"
    .parameter "message"

    .prologue
    .line 268
    new-instance v0, Lcom/google/android/apps/plus/api/EsRequest;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/plus/api/EsRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 269
    .local v0, request:Lcom/google/android/apps/plus/api/EsRequest;
    iget-object v1, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/google/android/apps/plus/api/EsOperation;->createBatchRequest()Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;

    move-result-object v0

    .line 83
    .local v0, batchRequest:Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchRequest;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 84
    .local v1, data:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 85
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NO OP"

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/api/EsRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/EsRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected handleError(Lcom/google/wireless/tacotruck/proto/Network$Response;)V
    .registers 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    .line 183
    .local v0, errorCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    .line 184
    .local v2, requestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    .line 185
    .local v3, typeName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, msg:Ljava/lang/String;
    const-string v4, "HttpTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error for request type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->getNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v4, Lcom/google/android/apps/plus/api/EsOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_8c

    .line 201
    new-instance v4, Lcom/google/android/apps/plus/api/ServerException;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/plus/api/ServerException;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;Ljava/lang/String;)V

    throw v4

    .line 191
    :pswitch_76
    iget-object v4, p0, Lcom/google/android/apps/plus/api/EsOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/AndroidNotification;->showUpgradeRequiredNotification(Landroid/content/Context;)V

    .line 192
    new-instance v4, Lcom/google/android/apps/plus/api/ServerException;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/plus/api/ServerException;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;Ljava/lang/String;)V

    throw v4

    .line 196
    :pswitch_81
    iget-object v4, p0, Lcom/google/android/apps/plus/api/EsOperation;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/apps/plus/service/AndroidNotification;->showOutOfBoxRequiredNotification(Landroid/content/Context;)V

    .line 197
    new-instance v4, Lcom/google/android/apps/plus/api/ServerException;

    invoke-direct {v4, v0, v1}, Lcom/google/android/apps/plus/api/ServerException;-><init>(Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;Ljava/lang/String;)V

    throw v4

    .line 189
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_76
        :pswitch_81
    .end packed-switch
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 3
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method

.method protected isAuthenticationError(Ljava/lang/Exception;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 220
    instance-of v0, p1, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v0, :cond_16

    .line 221
    sget-object v1, Lcom/google/android/apps/plus/api/EsOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/api/ServerException;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1e

    .line 226
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->isAuthenticationError(Ljava/lang/Exception;)Z

    move-result v0

    :goto_1a
    return v0

    .line 223
    :pswitch_1b
    const/4 v0, 0x1

    goto :goto_1a

    .line 221
    nop

    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_1b
    .end packed-switch
.end method

.method protected isImmediatelyRetryableError(Ljava/lang/Exception;)Z
    .registers 4
    .parameter "e"

    .prologue
    .line 208
    instance-of v0, p1, Lcom/google/android/apps/plus/api/ServerException;

    if-eqz v0, :cond_16

    .line 209
    sget-object v1, Lcom/google/android/apps/plus/api/EsOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/api/ServerException;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/api/ServerException;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1e

    .line 215
    :cond_16
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->isImmediatelyRetryableError(Ljava/lang/Exception;)Z

    move-result v0

    :goto_1a
    return v0

    .line 212
    :pswitch_1b
    const/4 v0, 0x1

    goto :goto_1a

    .line 209
    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 4
    .parameter "cookie"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 147
    const-string v0, "ME_AT"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 148
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/api/EsOperation;->setActionToken(Ljava/lang/String;)V

    .line 150
    :cond_16
    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 12
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;

    move-result-object v0

    .line 96
    .local v0, batchResponse:Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/EsOperation;->onStartResultProcessing()V

    .line 100
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getResponseCount()I

    move-result v5

    .line 101
    .local v5, responseCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v5, :cond_19

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v4

    .line 103
    .local v4, response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/api/EsOperation;->checkForErrors(Lcom/google/wireless/tacotruck/proto/Network$Response;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 106
    .end local v4           #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    :cond_19
    iget-boolean v6, p0, Lcom/google/android/apps/plus/api/EsOperation;->mProcessMasterResponseFirst:Z

    if-eqz v6, :cond_63

    .line 108
    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v5, :cond_4a

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v4

    .line 111
    .restart local v4       #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasIsMasterResponse()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getIsMasterResponse()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 112
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, requestId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/api/EsRequest;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 115
    .local v2, originalRequest:Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0, v4, v2}, Lcom/google/android/apps/plus/api/EsOperation;->handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V

    .line 108
    .end local v2           #originalRequest:Lcom/google/protobuf/MessageLite;
    .end local v3           #requestId:Ljava/lang/String;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 120
    .end local v4           #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v5, :cond_94

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v4

    .line 123
    .restart local v4       #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasIsMasterResponse()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getIsMasterResponse()Z

    move-result v6

    if-nez v6, :cond_60

    .line 124
    :cond_5d
    invoke-virtual {p0, v4, v8}, Lcom/google/android/apps/plus/api/EsOperation;->handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V

    .line 120
    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 129
    .end local v4           #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    :cond_63
    const/4 v1, 0x0

    :goto_64
    if-ge v1, v5, :cond_94

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$BatchResponse;->getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;

    move-result-object v4

    .line 132
    .restart local v4       #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasIsMasterResponse()Z

    move-result v6

    if-eqz v6, :cond_90

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getIsMasterResponse()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 133
    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestId()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3       #requestId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/plus/api/EsOperation;->mRequests:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/api/EsRequest;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/api/EsRequest;->getMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 136
    .restart local v2       #originalRequest:Lcom/google/protobuf/MessageLite;
    invoke-virtual {p0, v4, v2}, Lcom/google/android/apps/plus/api/EsOperation;->handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V

    .line 129
    .end local v2           #originalRequest:Lcom/google/protobuf/MessageLite;
    .end local v3           #requestId:Ljava/lang/String;
    :goto_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .line 138
    :cond_90
    invoke-virtual {p0, v4, v8}, Lcom/google/android/apps/plus/api/EsOperation;->handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V

    goto :goto_8d

    .line 142
    .end local v4           #response:Lcom/google/wireless/tacotruck/proto/Network$Response;
    :cond_94
    return-void
.end method
