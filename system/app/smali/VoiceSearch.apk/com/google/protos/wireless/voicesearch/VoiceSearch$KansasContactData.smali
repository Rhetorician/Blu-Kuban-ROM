.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KansasContactData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

.field public static final kansasContactData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation
.end field

.field private kansasId_:Ljava/lang/Object;

.field private language_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 6090
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->PARSER:Lcom/google/protobuf/Parser;

    .line 6631
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    .line 6632
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->initFields()V

    .line 6640
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xc

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasContactData:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x2

    .line 6040
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6198
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6041
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->initFields()V

    .line 6042
    const/4 v2, 0x0

    .line 6044
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 6045
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_7a

    .line 6046
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 6047
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8a

    .line 6052
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 6054
    const/4 v0, 0x1

    goto :goto_e

    .line 6049
    :sswitch_1f
    const/4 v0, 0x1

    .line 6050
    goto :goto_e

    .line 6059
    :sswitch_21
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    .line 6060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_5e

    goto :goto_e

    .line 6078
    .end local v3           #tag:I
    :catch_2e
    move-exception v1

    .line 6079
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 6084
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v4

    and-int/lit8 v5, v2, 0x2

    if-ne v5, v6, :cond_41

    .line 6085
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6087
    :cond_41
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->makeExtensionsImmutable()V

    throw v4

    .line 6064
    .restart local v3       #tag:I
    :sswitch_45
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v6, :cond_52

    .line 6065
    :try_start_49
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6066
    or-int/lit8 v2, v2, 0x2

    .line 6068
    :cond_52
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_49 .. :try_end_5d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 6080
    .end local v3           #tag:I
    :catch_5e
    move-exception v1

    .line 6081
    .local v1, e:Ljava/io/IOException;
    :try_start_5f
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_34

    .line 6072
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_6d
    :try_start_6d
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    .line 6073
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6d .. :try_end_79} :catch_2e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_79} :catch_5e

    goto :goto_e

    .line 6084
    .end local v3           #tag:I
    :cond_7a
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v6, :cond_86

    .line 6085
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6087
    :cond_86
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->makeExtensionsImmutable()V

    .line 6089
    return-void

    .line 6047
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_45
        0x1a -> :sswitch_6d
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
    .line 6018
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6023
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6198
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6025
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6018
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6198
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6227
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6026
    return-void
.end method

.method static synthetic access$7300(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7400(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7402(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$7500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6018
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6018
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .registers 1

    .prologue
    .line 6030
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 6194
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    .line 6196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6197
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .registers 1

    .prologue
    .line 6308
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->access$7100()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 6311
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
    .registers 3
    .parameter "index"

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    return-object v0
.end method

.method public getContactCount()I
    .registers 2

    .prologue
    .line 6150
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;
    .registers 2

    .prologue
    .line 6034
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;

    return-object v0
.end method

.method public getKansasIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6128
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6129
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6130
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6132
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->kansasId_:Ljava/lang/Object;

    .line 6135
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

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 6182
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6183
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 6184
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6186
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->language_:Ljava/lang/Object;

    .line 6189
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
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6229
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    .line 6230
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 6246
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 6232
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 6233
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_19

    .line 6234
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6237
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 6238
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6237
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 6241
    :cond_32
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_42

    .line 6242
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 6245
    :cond_42
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedSerializedSize:I

    move v2, v1

    .line 6246
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public hasKansasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 6110
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLanguage()Z
    .registers 3

    .prologue
    .line 6164
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6200
    iget-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    .line 6201
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 6210
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 6201
    goto :goto_9

    .line 6203
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getContactCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 6204
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 6205
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    move v2, v3

    .line 6206
    goto :goto_9

    .line 6203
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 6209
    :cond_24
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .registers 2

    .prologue
    .line 6309
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;
    .registers 2

    .prologue
    .line 6313
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData$Builder;

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
    .line 6252
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
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 6215
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getSerializedSize()I

    .line 6216
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_12

    .line 6217
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getKansasIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6219
    :cond_12
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 6220
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->contact_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6219
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 6222
    :cond_29
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_37

    .line 6223
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactData;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6225
    :cond_37
    return-void
.end method
