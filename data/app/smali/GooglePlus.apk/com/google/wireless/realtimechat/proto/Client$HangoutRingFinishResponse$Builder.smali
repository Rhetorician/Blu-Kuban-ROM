.class public final Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 41994
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 42108
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42132
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 41995
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->maybeForceBuilderInitialization()V

    .line 41996
    return-void
.end method

.method static synthetic access$57900()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 1

    .prologue
    .line 41989
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 1

    .prologue
    .line 42001
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 41999
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 3

    .prologue
    .line 42022
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    .line 42023
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 42024
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 42026
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 6

    .prologue
    .line 42040
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V

    .line 42041
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42042
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 42043
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 42044
    or-int/lit8 v2, v2, 0x1

    .line 42046
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->access$58102(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42047
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 42048
    or-int/lit8 v2, v2, 0x2

    .line 42050
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->requestError_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->access$58202(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42051
    #setter for: Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->access$58302(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;I)I

    .line 42052
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 2

    .prologue
    .line 42005
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 42006
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42007
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42008
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 42009
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42010
    return-object p0
.end method

.method public clearRequestError()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 2

    .prologue
    .line 42156
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42157
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 42159
    return-object p0
.end method

.method public clearStatus()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 2

    .prologue
    .line 42125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42126
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42128
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 3

    .prologue
    .line 42014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41989
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;
    .registers 2

    .prologue
    .line 42018
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42137
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 42138
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 42139
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 42140
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 42143
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 42113
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 42134
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42110
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 42067
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41989
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 41989
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41989
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42075
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 42076
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 42081
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 42083
    :sswitch_d
    return-object p0

    .line 42088
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 42089
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v2

    .line 42090
    .local v2, value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    if-eqz v2, :cond_0

    .line 42091
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42092
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    goto :goto_0

    .line 42097
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42098
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    goto :goto_0

    .line 42076
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 42056
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 42063
    :cond_6
    :goto_6
    return-object p0

    .line 42057
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 42058
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    .line 42060
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->hasRequestError()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42061
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse;->getRequestError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;

    goto :goto_6
.end method

.method public setRequestError(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42147
    if-nez p1, :cond_8

    .line 42148
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42150
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42151
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->requestError_:Ljava/lang/Object;

    .line 42153
    return-object p0
.end method

.method public setStatus(Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 42116
    if-nez p1, :cond_8

    .line 42117
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42119
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->bitField0_:I

    .line 42120
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$HangoutRingFinishResponse$Builder;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 42122
    return-object p0
.end method
