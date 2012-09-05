.class public final Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CapabilitiesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final capabilitiesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            "Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private synthesisVoice_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 9189
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 9664
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    .line 9665
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->initFields()V

    .line 9673
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ResponseMessage;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ResponseMessage;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x15

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->capabilitiesResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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
    const/4 v4, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 9138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9250
    iput-byte v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9139
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->initFields()V

    .line 9140
    const/4 v2, 0x0

    .line 9142
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 9143
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_86

    .line 9144
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 9145
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_a2

    .line 9150
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 9152
    const/4 v0, 0x1

    goto :goto_f

    .line 9147
    :sswitch_20
    const/4 v0, 0x1

    .line 9148
    goto :goto_f

    .line 9157
    :sswitch_22
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_2f

    .line 9158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9159
    or-int/lit8 v2, v2, 0x1

    .line 9161
    :cond_2f
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_41
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_77

    goto :goto_f

    .line 9174
    .end local v3           #tag:I
    :catch_3b
    move-exception v1

    .line 9175
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3c
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    .line 9180
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_41
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_4e

    .line 9181
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9183
    :cond_4e
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_5a

    .line 9184
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9186
    :cond_5a
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->makeExtensionsImmutable()V

    throw v4

    .line 9165
    .restart local v3       #tag:I
    :sswitch_5e
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v7, :cond_6b

    .line 9166
    :try_start_62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9167
    or-int/lit8 v2, v2, 0x2

    .line 9169
    :cond_6b
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_41
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_62 .. :try_end_76} :catch_3b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_f

    .line 9176
    .end local v3           #tag:I
    :catch_77
    move-exception v1

    .line 9177
    .local v1, e:Ljava/io/IOException;
    :try_start_78
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_41

    .line 9180
    .end local v1           #e:Ljava/io/IOException;
    :cond_86
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_92

    .line 9181
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9183
    :cond_92
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v7, :cond_9e

    .line 9184
    iget-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9186
    :cond_9e
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->makeExtensionsImmutable()V

    .line 9188
    return-void

    .line 9145
    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_5e
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 9116
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9121
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9250
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9116
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9250
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9282
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9124
    return-void
.end method

.method static synthetic access$11200(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9116
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11202(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9116
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11300(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9116
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11302(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9116
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .registers 1

    .prologue
    .line 9128
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    .line 9248
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    .line 9249
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .registers 1

    .prologue
    .line 9359
    #calls: Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->create()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->access$11000()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9362
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;
    .registers 2

    .prologue
    .line 9132
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;

    return-object v0
.end method

.method public getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .registers 3
    .parameter "index"

    .prologue
    .line 9218
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method public getRecognitionLanguageCount()I
    .registers 2

    .prologue
    .line 9215
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 9284
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    .line 9285
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 9297
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 9287
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 9288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 9289
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9288
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 9292
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 9293
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 9292
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 9296
    :cond_3c
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 9297
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;
    .registers 3
    .parameter "index"

    .prologue
    .line 9239
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    return-object v0
.end method

.method public getSynthesisVoiceCount()I
    .registers 2

    .prologue
    .line 9236
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9252
    iget-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    .line 9253
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 9268
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 9253
    goto :goto_9

    .line 9255
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getRecognitionLanguageCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 9256
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getRecognitionLanguage(I)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 9257
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 9258
    goto :goto_9

    .line 9255
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 9261
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSynthesisVoiceCount()I

    move-result v4

    if-ge v0, v4, :cond_3c

    .line 9262
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSynthesisVoice(I)Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/service/SpeechService$SynthesisVoice;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_39

    .line 9263
    iput-byte v3, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 9264
    goto :goto_9

    .line 9261
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 9267
    :cond_3c
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .registers 2

    .prologue
    .line 9360
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9116
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;
    .registers 2

    .prologue
    .line 9364
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->newBuilder(Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;)Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse$Builder;

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
    .line 9303
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9273
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->getSerializedSize()I

    .line 9274
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 9275
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->recognitionLanguage_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9274
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 9277
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 9278
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$CapabilitiesResponse;->synthesisVoice_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9277
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 9280
    :cond_33
    return-void
.end method
