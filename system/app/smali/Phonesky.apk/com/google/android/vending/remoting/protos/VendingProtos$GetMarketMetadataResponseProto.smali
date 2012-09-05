.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetMarketMetadataResponseProto"
.end annotation


# instance fields
.field private billingEventsEnabled_:Z

.field private billingParameter_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private commentPostEnabled_:Z

.field private hasBillingEventsEnabled:Z

.field private hasCommentPostEnabled:Z

.field private hasInAppBillingEnabled:Z

.field private hasInAppBillingMaxApiVersion:Z

.field private hasLatestClientUrl:Z

.field private hasLatestClientVersionCode:Z

.field private hasPaidAppsEnabled:Z

.field private hasWarningMessage:Z

.field private inAppBillingEnabled_:Z

.field private inAppBillingMaxApiVersion_:I

.field private latestClientUrl_:Ljava/lang/String;

.field private latestClientVersionCode_:I

.field private paidAppsEnabled_:Z

.field private warningMessage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 15614
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15619
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    .line 15636
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    .line 15653
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    .line 15669
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    .line 15703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    .line 15720
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    .line 15737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    .line 15754
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    .line 15771
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    .line 15838
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    .line 15614
    return-void
.end method


# virtual methods
.method public addBillingParameter(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15686
    if-nez p1, :cond_8

    .line 15687
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15689
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 15690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    .line 15692
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15693
    return-object p0
.end method

.method public getBillingEventsEnabled()Z
    .registers 2

    .prologue
    .line 15721
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    return v0
.end method

.method public getBillingParameterList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15672
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingParameter_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 15840
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 15842
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getSerializedSize()I

    .line 15844
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    return v0
.end method

.method public getCommentPostEnabled()Z
    .registers 2

    .prologue
    .line 15704
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    return v0
.end method

.method public getInAppBillingEnabled()Z
    .registers 2

    .prologue
    .line 15755
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    return v0
.end method

.method public getInAppBillingMaxApiVersion()I
    .registers 2

    .prologue
    .line 15772
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    return v0
.end method

.method public getLatestClientUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15637
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestClientVersionCode()I
    .registers 2

    .prologue
    .line 15620
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    return v0
.end method

.method public getPaidAppsEnabled()Z
    .registers 2

    .prologue
    .line 15654
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 15848
    const/4 v2, 0x0

    .line 15849
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 15850
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 15853
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 15854
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15857
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 15858
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 15861
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingParameterList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    .line 15862
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 15865
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 15866
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 15869
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 15870
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingEventsEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 15873
    :cond_6c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 15874
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getWarningMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 15877
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 15878
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 15881
    :cond_8d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion()Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 15882
    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingMaxApiVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 15885
    :cond_9e
    iput v2, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->cachedSize:I

    .line 15886
    return v2
.end method

.method public getWarningMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15738
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBillingEventsEnabled()Z
    .registers 2

    .prologue
    .line 15722
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled:Z

    return v0
.end method

.method public hasCommentPostEnabled()Z
    .registers 2

    .prologue
    .line 15705
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled:Z

    return v0
.end method

.method public hasInAppBillingEnabled()Z
    .registers 2

    .prologue
    .line 15756
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled:Z

    return v0
.end method

.method public hasInAppBillingMaxApiVersion()Z
    .registers 2

    .prologue
    .line 15773
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion:Z

    return v0
.end method

.method public hasLatestClientUrl()Z
    .registers 2

    .prologue
    .line 15638
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl:Z

    return v0
.end method

.method public hasLatestClientVersionCode()Z
    .registers 2

    .prologue
    .line 15621
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode:Z

    return v0
.end method

.method public hasPaidAppsEnabled()Z
    .registers 2

    .prologue
    .line 15655
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled:Z

    return v0
.end method

.method public hasWarningMessage()Z
    .registers 2

    .prologue
    .line 15739
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15893
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 15894
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_5a

    .line 15898
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15899
    :sswitch_d
    return-object p0

    .line 15904
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setLatestClientVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15908
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setLatestClientUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15912
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setPaidAppsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15916
    :sswitch_26
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;-><init>()V

    .line 15917
    .local v1, value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 15918
    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->addBillingParameter(Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15922
    .end local v1           #value:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setCommentPostEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15926
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setBillingEventsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15930
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setWarningMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15934
    :sswitch_4a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setInAppBillingEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15938
    :sswitch_52
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->setInAppBillingMaxApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    goto :goto_0

    .line 15894
    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x22 -> :sswitch_26
        0x28 -> :sswitch_32
        0x30 -> :sswitch_3a
        0x3a -> :sswitch_42
        0x40 -> :sswitch_4a
        0x48 -> :sswitch_52
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15612
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;

    move-result-object v0

    return-object v0
.end method

.method public setBillingEventsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled:Z

    .line 15725
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->billingEventsEnabled_:Z

    .line 15726
    return-object p0
.end method

.method public setCommentPostEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled:Z

    .line 15708
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->commentPostEnabled_:Z

    .line 15709
    return-object p0
.end method

.method public setInAppBillingEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled:Z

    .line 15759
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingEnabled_:Z

    .line 15760
    return-object p0
.end method

.method public setInAppBillingMaxApiVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion:Z

    .line 15776
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->inAppBillingMaxApiVersion_:I

    .line 15777
    return-object p0
.end method

.method public setLatestClientUrl(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl:Z

    .line 15641
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientUrl_:Ljava/lang/String;

    .line 15642
    return-object p0
.end method

.method public setLatestClientVersionCode(I)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode:Z

    .line 15624
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->latestClientVersionCode_:I

    .line 15625
    return-object p0
.end method

.method public setPaidAppsEnabled(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled:Z

    .line 15658
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->paidAppsEnabled_:Z

    .line 15659
    return-object p0
.end method

.method public setWarningMessage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 15741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage:Z

    .line 15742
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->warningMessage_:Ljava/lang/String;

    .line 15743
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15809
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientVersionCode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15810
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientVersionCode()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15812
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasLatestClientUrl()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 15813
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getLatestClientUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15815
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasPaidAppsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 15816
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getPaidAppsEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15818
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingParameterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;

    .line 15819
    .local v0, element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 15821
    .end local v0           #element:Lcom/google/android/vending/remoting/protos/VendingProtos$BillingParameterProto;
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasCommentPostEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 15822
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getCommentPostEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15824
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasBillingEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 15825
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getBillingEventsEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15827
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasWarningMessage()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 15828
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getWarningMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 15830
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 15831
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingEnabled()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 15833
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->hasInAppBillingMaxApiVersion()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 15834
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$GetMarketMetadataResponseProto;->getInAppBillingMaxApiVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 15836
    :cond_8b
    return-void
.end method