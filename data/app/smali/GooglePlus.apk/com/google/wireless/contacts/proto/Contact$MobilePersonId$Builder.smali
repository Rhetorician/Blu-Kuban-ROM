.class public final Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Contact.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Contact$MobilePersonIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;",
        "Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Contact$MobilePersonIdOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4341
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4228
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->maybeForceBuilderInitialization()V

    .line 4229
    return-void
.end method

.method static synthetic access$5100()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 1

    .prologue
    .line 4222
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 1

    .prologue
    .line 4234
    new-instance v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 4232
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    .registers 3

    .prologue
    .line 4255
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    .line 4256
    .local v0, result:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4257
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 4259
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    .registers 6

    .prologue
    .line 4273
    new-instance v1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;-><init>(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;Lcom/google/wireless/contacts/proto/Contact$1;)V

    .line 4274
    .local v1, result:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4275
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4276
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 4277
    or-int/lit8 v2, v2, 0x1

    .line 4279
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->access$5302(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4280
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 4281
    or-int/lit8 v2, v2, 0x2

    .line 4283
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->access$5402(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4284
    #setter for: Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->access$5502(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;I)I

    .line 4285
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->clear()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 2

    .prologue
    .line 4238
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 4239
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4240
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4241
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4242
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4243
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 2

    .prologue
    .line 4358
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4359
    sget-object v0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->CONTACT:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4361
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 2

    .prologue
    .line 4389
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4390
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4392
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 3

    .prologue
    .line 4247
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->create()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

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
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->clone()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4222
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;
    .registers 2

    .prologue
    .line 4251
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    .registers 2

    .prologue
    .line 4346
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4371
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 4372
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4373
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4376
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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4343
    iget v1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 4367
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 4300
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
    .line 4222
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 4222
    check-cast p1, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

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
    .line 4222
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4308
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4309
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2e

    .line 4314
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4316
    :sswitch_d
    return-object p0

    .line 4321
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4322
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;->valueOf(I)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    move-result-object v2

    .line 4323
    .local v2, value:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    if-eqz v2, :cond_0

    .line 4324
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4325
    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    goto :goto_0

    .line 4330
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;
    :sswitch_21
    iget v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4331
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4309
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 4289
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 4296
    :cond_6
    :goto_6
    return-object p0

    .line 4290
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->hasType()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4291
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getType()Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->setType(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    .line 4293
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4294
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4349
    if-nez p1, :cond_8

    .line 4350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4352
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4353
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->type_:Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$IdType;

    .line 4355
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 4380
    if-nez p1, :cond_8

    .line 4381
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4383
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->bitField0_:I

    .line 4384
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Contact$MobilePersonId$Builder;->value_:Ljava/lang/Object;

    .line 4386
    return-object p0
.end method
