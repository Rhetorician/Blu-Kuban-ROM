.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;,
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;


# instance fields
.field private action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

.field private sentence_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4875
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->PARSER:Lcom/google/protobuf/Parser;

    .line 5490
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    .line 5491
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->initFields()V

    .line 5492
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4818
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5086
    iput-byte v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    .line 5120
    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedSerializedSize:I

    .line 4819
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->initFields()V

    .line 4820
    const/4 v2, 0x0

    .line 4822
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4823
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_7a

    .line 4824
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4825
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_7e

    .line 4830
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 4832
    const/4 v0, 0x1

    goto :goto_d

    .line 4827
    :sswitch_1e
    const/4 v0, 0x1

    .line 4828
    goto :goto_d

    .line 4837
    :sswitch_20
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    .line 4838
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_4b

    goto :goto_d

    .line 4866
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 4867
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 4872
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->makeExtensionsImmutable()V

    throw v6

    .line 4842
    .restart local v4       #tag:I
    :sswitch_38
    :try_start_38
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4843
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    move-result-object v5

    .line 4844
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    if-eqz v5, :cond_d

    .line 4845
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    .line 4846
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :try_end_4a
    .catchall {:try_start_38 .. :try_end_4a} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_4a} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 4868
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    :catch_4b
    move-exception v1

    .line 4869
    .local v1, e:Ljava/io/IOException;
    :try_start_4c
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_5a
    .catchall {:try_start_4c .. :try_end_5a} :catchall_33

    .line 4851
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_5a
    :try_start_5a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4852
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    move-result-object v5

    .line 4853
    .local v5, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    if-eqz v5, :cond_d

    .line 4854
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    .line 4855
    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    goto :goto_d

    .line 4860
    .end local v3           #rawValue:I
    .end local v5           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    :sswitch_6d
    iget v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    .line 4861
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_5a .. :try_end_79} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_79} :catch_2d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_79} :catch_4b

    goto :goto_d

    .line 4872
    .end local v4           #tag:I
    :cond_7a
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->makeExtensionsImmutable()V

    .line 4874
    return-void

    .line 4825
    :sswitch_data_7e
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
        0x18 -> :sswitch_5a
        0x22 -> :sswitch_6d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4796
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4801
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5086
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    .line 5120
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedSerializedSize:I

    .line 4803
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4804
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5086
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    .line 5120
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedSerializedSize:I

    .line 4804
    return-void
.end method

.method static synthetic access$5900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4796
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object p1
.end method

.method static synthetic access$6102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4796
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4796
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .registers 1

    .prologue
    .line 4808
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 5081
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;

    .line 5082
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->MOBILE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    .line 5083
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->CALL:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    .line 5084
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;

    .line 5085
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .registers 1

    .prologue
    .line 5205
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->access$5700()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5208
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;
    .registers 2

    .prologue
    .line 5044
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .registers 2

    .prologue
    .line 4812
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5016
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;

    .line 5017
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5018
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5020
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->name_:Ljava/lang/Object;

    .line 5023
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPhoneNumberType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
    .registers 2

    .prologue
    .line 5034
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    return-object v0
.end method

.method public getSentenceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 5069
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;

    .line 5070
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 5071
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5073
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->sentence_:Ljava/lang/Object;

    .line 5076
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5122
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedSerializedSize:I

    .line 5123
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 5143
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 5125
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 5126
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 5127
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5130
    :cond_1a
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2b

    .line 5131
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5134
    :cond_2b
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 5135
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5138
    :cond_3d
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    .line 5139
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5142
    :cond_4e
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedSerializedSize:I

    move v1, v0

    .line 5143
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAction()Z
    .registers 3

    .prologue
    .line 5041
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4998
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhoneNumberType()Z
    .registers 3

    .prologue
    .line 5031
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

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

.method public hasSentence()Z
    .registers 3

    .prologue
    .line 5051
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5088
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    .line 5089
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 5100
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 5089
    goto :goto_9

    .line 5091
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasName()Z

    move-result v3

    if-nez v3, :cond_16

    .line 5092
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    move v1, v2

    .line 5093
    goto :goto_9

    .line 5095
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->hasSentence()Z

    move-result v3

    if-nez v3, :cond_20

    .line 5096
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    move v1, v2

    .line 5097
    goto :goto_9

    .line 5099
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .registers 2

    .prologue
    .line 5206
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4796
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;
    .registers 2

    .prologue
    .line 5210
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 5149
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5105
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getSerializedSize()I

    .line 5106
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 5107
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5109
    :cond_13
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 5110
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->phoneNumberType_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;

    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5112
    :cond_22
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 5113
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->action_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$Action;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5115
    :cond_32
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 5116
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->getSentenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5118
    :cond_41
    return-void
.end method
