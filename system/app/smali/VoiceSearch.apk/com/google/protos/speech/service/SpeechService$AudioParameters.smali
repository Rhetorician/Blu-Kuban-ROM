.class public final Lcom/google/protos/speech/service/SpeechService$AudioParameters;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$AudioParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioParameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$AudioParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$AudioParameters;


# instance fields
.field private bitField0_:I

.field private encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

.field private endpointerEnabled_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private noiseCancelerEnabled_:Z

.field private sampleRate_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8336
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->PARSER:Lcom/google/protobuf/Parser;

    .line 8723
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    .line 8724
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->initFields()V

    .line 8725
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

    .line 8283
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8398
    iput-byte v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    .line 8428
    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedSerializedSize:I

    .line 8284
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->initFields()V

    .line 8285
    const/4 v2, 0x0

    .line 8287
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8288
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_74

    .line 8289
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 8290
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 8295
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 8297
    const/4 v0, 0x1

    goto :goto_d

    .line 8292
    :sswitch_1e
    const/4 v0, 0x1

    .line 8293
    goto :goto_d

    .line 8302
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 8303
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/speech/service/SpeechService$Encoding;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Encoding;

    move-result-object v5

    .line 8304
    .local v5, value:Lcom/google/protos/speech/service/SpeechService$Encoding;
    if-eqz v5, :cond_d

    .line 8305
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    .line 8306
    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 8327
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/speech/service/SpeechService$Encoding;
    :catch_33
    move-exception v1

    .line 8328
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 8333
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->makeExtensionsImmutable()V

    throw v6

    .line 8311
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    .line 8312
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 8329
    .end local v4           #tag:I
    :catch_4b
    move-exception v1

    .line 8330
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
    .catchall {:try_start_4c .. :try_end_5a} :catchall_39

    .line 8316
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    .line 8317
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    goto :goto_d

    .line 8321
    :sswitch_67
    iget v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    .line 8322
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_73} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_73} :catch_4b

    goto :goto_d

    .line 8333
    .end local v4           #tag:I
    :cond_74
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->makeExtensionsImmutable()V

    .line 8335
    return-void

    .line 8290
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_5a
        0x20 -> :sswitch_67
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
    .line 8261
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8266
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8398
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    .line 8428
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedSerializedSize:I

    .line 8268
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8269
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8398
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    .line 8428
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedSerializedSize:I

    .line 8269
    return-void
.end method

.method static synthetic access$10002(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    return p1
.end method

.method static synthetic access$10102(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    iput-boolean p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z

    return p1
.end method

.method static synthetic access$10202(Lcom/google/protos/speech/service/SpeechService$AudioParameters;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    return p1
.end method

.method static synthetic access$9802(Lcom/google/protos/speech/service/SpeechService$AudioParameters;Lcom/google/protos/speech/service/SpeechService$Encoding;)Lcom/google/protos/speech/service/SpeechService$Encoding;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object p1
.end method

.method static synthetic access$9902(Lcom/google/protos/speech/service/SpeechService$AudioParameters;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8261
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .registers 1

    .prologue
    .line 8273
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8393
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$Encoding;->ULAW:Lcom/google/protos/speech/service/SpeechService$Encoding;

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    .line 8394
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I

    .line 8395
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    .line 8396
    iput-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z

    .line 8397
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .registers 1

    .prologue
    .line 8513
    #calls: Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->create()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->access$9600()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 8516
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters;
    .registers 2

    .prologue
    .line 8277
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$AudioParameters;

    return-object v0
.end method

.method public getEncoding()Lcom/google/protos/speech/service/SpeechService$Encoding;
    .registers 2

    .prologue
    .line 8359
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    return-object v0
.end method

.method public getEndpointerEnabled()Z
    .registers 2

    .prologue
    .line 8379
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    return v0
.end method

.method public getNoiseCancelerEnabled()Z
    .registers 2

    .prologue
    .line 8389
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .prologue
    .line 8369
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8430
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedSerializedSize:I

    .line 8431
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 8451
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 8433
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 8434
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1c

    .line 8435
    iget-object v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v2}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8438
    :cond_1c
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 8439
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8442
    :cond_29
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 8443
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8446
    :cond_37
    iget v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_46

    .line 8447
    iget-boolean v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8450
    :cond_46
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedSerializedSize:I

    move v1, v0

    .line 8451
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasEncoding()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8356
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEndpointerEnabled()Z
    .registers 3

    .prologue
    .line 8376
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

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

.method public hasNoiseCancelerEnabled()Z
    .registers 3

    .prologue
    .line 8386
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

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

.method public hasSampleRate()Z
    .registers 3

    .prologue
    .line 8366
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 8400
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    .line 8401
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 8408
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 8401
    goto :goto_9

    .line 8403
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->hasEncoding()Z

    move-result v3

    if-nez v3, :cond_16

    .line 8404
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    move v1, v2

    .line 8405
    goto :goto_9

    .line 8407
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .registers 2

    .prologue
    .line 8514
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8261
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->toBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;
    .registers 2

    .prologue
    .line 8518
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->newBuilder(Lcom/google/protos/speech/service/SpeechService$AudioParameters;)Lcom/google/protos/speech/service/SpeechService$AudioParameters$Builder;

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
    .line 8457
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

    .line 8413
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->getSerializedSize()I

    .line 8414
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 8415
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->encoding_:Lcom/google/protos/speech/service/SpeechService$Encoding;

    invoke-virtual {v0}, Lcom/google/protos/speech/service/SpeechService$Encoding;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8417
    :cond_15
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 8418
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->sampleRate_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8420
    :cond_20
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 8421
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->endpointerEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8423
    :cond_2c
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 8424
    iget-boolean v0, p0, Lcom/google/protos/speech/service/SpeechService$AudioParameters;->noiseCancelerEnabled_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 8426
    :cond_39
    return-void
.end method
