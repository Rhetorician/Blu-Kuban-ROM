.class public final Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;",
        ">;",
        "Lcom/google/protos/speech/service/SpeechService$ApplicationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 20809
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 20892
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20810
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 20811
    return-void
.end method

.method static synthetic access$25500()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 1

    .prologue
    .line 20804
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 1

    .prologue
    .line 20816
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 20814
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->build()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .registers 3

    .prologue
    .line 20835
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    .line 20836
    .local v0, result:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 20837
    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 20839
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .registers 6

    .prologue
    .line 20843
    new-instance v1, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V

    .line 20844
    .local v1, result:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20845
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 20846
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 20847
    or-int/lit8 v2, v2, 0x1

    .line 20849
    :cond_10
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    #setter for: Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    invoke-static {v1, v3}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->access$25702(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20850
    #setter for: Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->access$25802(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;I)I

    .line 20851
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 3

    .prologue
    .line 20827
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->create()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

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
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->clone()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 20804
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    .registers 2

    .prologue
    .line 20831
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;
    .registers 2

    .prologue
    .line 20897
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    return-object v0
.end method

.method public hasInputData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 20894
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

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
    .line 20863
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 20864
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 20866
    const/4 v0, 0x0

    .line 20869
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
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
    .line 20804
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20804
    check-cast p1, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

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
    .line 20804
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20876
    const/4 v2, 0x0

    .line 20878
    .local v2, parsedMessage:Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;
    :try_start_1
    sget-object v3, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 20883
    if-eqz v2, :cond_10

    .line 20884
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    .line 20887
    :cond_10
    return-object p0

    .line 20879
    :catch_11
    move-exception v1

    .line 20880
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-object v2, v0

    .line 20881
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 20883
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 20884
    invoke-virtual {p0, v2}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 20855
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 20859
    :cond_6
    :goto_6
    return-object p0

    .line 20856
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->hasInputData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20857
    invoke-virtual {p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest;->getInputData()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;

    goto :goto_6
.end method

.method public mergeInputData(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 20916
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 20918
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    invoke-static {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->newBuilder(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$ApplicationData;)Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$ApplicationData$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    .line 20924
    :goto_1f
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->bitField0_:I

    .line 20925
    return-object p0

    .line 20921
    :cond_26
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$ApplicationRequest$Builder;->inputData_:Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    goto :goto_1f
.end method
