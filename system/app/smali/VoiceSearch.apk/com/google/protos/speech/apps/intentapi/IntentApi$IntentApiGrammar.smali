.class public final Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IntentApi.java"

# interfaces
.implements Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammarOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/apps/intentapi/IntentApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentApiGrammar"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

.field public static final intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$Grammar;",
            "Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private grxmlGrammar_:Ljava/lang/Object;

.field private languageModel_:Ljava/lang/Object;

.field private maxNbest_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 114
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$1;

    invoke-direct {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->PARSER:Lcom/google/protobuf/Parser;

    .line 626
    new-instance v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    .line 627
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    invoke-direct {v0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->initFields()V

    .line 635
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$Grammar;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$Grammar;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->intentApiGrammar:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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
    const/4 v5, -0x1

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 222
    iput-byte v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 58
    invoke-direct {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->initFields()V

    .line 59
    const/4 v2, 0x0

    .line 61
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 62
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_8d

    .line 63
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 64
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_92

    .line 69
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 71
    const/4 v0, 0x1

    goto :goto_d

    .line 66
    :sswitch_1e
    const/4 v0, 0x1

    .line 67
    goto :goto_d

    .line 76
    :sswitch_20
    iget v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 77
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 105
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 106
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 111
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->makeExtensionsImmutable()V

    throw v5

    .line 81
    .restart local v4       #tag:I
    :sswitch_38
    :try_start_38
    iget v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 107
    .end local v4           #tag:I
    :catch_45
    move-exception v1

    .line 108
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 86
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_54
    const/4 v3, 0x0

    .line 87
    .local v3, subBuilder:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    :try_start_55
    iget v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_62

    .line 88
    iget-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {v5}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->toBuilder()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    move-result-object v3

    .line 90
    :cond_62
    sget-object v5, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    iput-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 91
    if-eqz v3, :cond_79

    .line 92
    iget-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->mergeFrom(Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;

    .line 93
    invoke-virtual {v3}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;->buildPartial()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 95
    :cond_79
    iget v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    goto :goto_d

    .line 99
    .end local v3           #subBuilder:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext$Builder;
    :sswitch_80
    iget v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    .line 100
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;
    :try_end_8c
    .catchall {:try_start_55 .. :try_end_8c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_8c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_8c} :catch_45

    goto :goto_d

    .line 111
    .end local v4           #tag:I
    :cond_8d
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->makeExtensionsImmutable()V

    .line 113
    return-void

    .line 64
    nop

    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x10 -> :sswitch_38
        0x1a -> :sswitch_54
        0x22 -> :sswitch_80
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/apps/intentapi/IntentApi$1;)V
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
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 222
    iput-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/apps/intentapi/IntentApi$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 222
    iput-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 248
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 43
    return-void
.end method

.method static synthetic access$300(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    return p1
.end method

.method static synthetic access$502(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;)Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 217
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    .line 219
    invoke-static {}, Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;->getDefaultInstance()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .registers 1

    .prologue
    .line 333
    #calls: Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->create()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->access$100()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 336
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;->mergeFrom(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->defaultInstance:Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;

    return-object v0
.end method

.method public getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 206
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 207
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 209
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->grxmlGrammar_:Ljava/lang/Object;

    .line 212
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

.method public getLanguageModelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 153
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 154
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 156
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->languageModel_:Ljava/lang/Object;

    .line 159
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

.method public getMaxNbest()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    return v0
.end method

.method public getRecognitionContext()Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 250
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    .line 251
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 271
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 253
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 254
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 255
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 258
    :cond_1a
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 259
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 262
    :cond_27
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 263
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 266
    :cond_35
    iget v2, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 267
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 270
    :cond_46
    iput v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedSerializedSize:I

    move v1, v0

    .line 271
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasGrxmlGrammar()Z
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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

.method public hasLanguageModel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 134
    iget v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxNbest()Z
    .registers 3

    .prologue
    .line 167
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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

.method public hasRecognitionContext()Z
    .registers 3

    .prologue
    .line 177
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 224
    iget-byte v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    .line 225
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 228
    :goto_8
    return v1

    .line 225
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 227
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilderForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .registers 2

    .prologue
    .line 334
    invoke-static {}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->toBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;
    .registers 2

    .prologue
    .line 338
    invoke-static {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->newBuilder(Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;)Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar$Builder;

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
    .line 277
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

    .line 233
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getSerializedSize()I

    .line 234
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 235
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getLanguageModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 237
    :cond_13
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 238
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->maxNbest_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 240
    :cond_1e
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 241
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->recognitionContext_:Lcom/google/protos/speech/common/RecognitionContextProto$RecognitionContext;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 243
    :cond_2a
    iget v0, p0, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 244
    invoke-virtual {p0}, Lcom/google/protos/speech/apps/intentapi/IntentApi$IntentApiGrammar;->getGrxmlGrammarBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 246
    :cond_39
    return-void
.end method
