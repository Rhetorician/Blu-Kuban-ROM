.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItemOrBuilder;"
    }
.end annotation


# instance fields
.field private address_:Ljava/lang/Object;

.field private bitField0_:I

.field private name_:Ljava/lang/Object;

.field private phoneNumber_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    .line 14027
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->maybeForceBuilderInitialization()V

    .line 14028
    return-void
.end method

.method static synthetic access$16400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .registers 1

    .prologue
    .line 14021
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .registers 1

    .prologue
    .line 14033
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14031
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .registers 3

    .prologue
    .line 14056
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    .line 14057
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14058
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14060
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .registers 6

    .prologue
    .line 14064
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 14065
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14066
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14067
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14068
    or-int/lit8 v2, v2, 0x1

    .line 14070
    :cond_10
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14071
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14072
    or-int/lit8 v2, v2, 0x2

    .line 14074
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14075
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 14076
    or-int/lit8 v2, v2, 0x4

    .line 14078
    :cond_28
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14079
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;I)I

    .line 14080
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .registers 3

    .prologue
    .line 14048
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

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
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14021
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    .registers 2

    .prologue
    .line 14052
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14137
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumber()Z
    .registers 3

    .prologue
    .line 14190
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 14104
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->hasName()Z

    move-result v1

    if-nez v1, :cond_8

    .line 14112
    :cond_7
    :goto_7
    return v0

    .line 14108
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14112
    const/4 v0, 0x1

    goto :goto_7
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
    .line 14021
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14021
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

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
    .line 14021
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14119
    const/4 v2, 0x0

    .line 14121
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;
    :try_start_1
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 14126
    if-eqz v2, :cond_10

    .line 14127
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    .line 14130
    :cond_10
    return-object p0

    .line 14122
    :catch_11
    move-exception v1

    .line 14123
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-object v2, v0

    .line 14124
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 14126
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 14127
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14084
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14100
    :cond_6
    :goto_6
    return-object p0

    .line 14085
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 14086
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14087
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->name_:Ljava/lang/Object;

    .line 14090
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 14091
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14092
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 14095
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->hasAddress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14096
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->bitField0_:I

    .line 14097
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->address_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;->access$16800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$BusinessResponseItem$Builder;->address_:Ljava/lang/Object;

    goto :goto_6
.end method
