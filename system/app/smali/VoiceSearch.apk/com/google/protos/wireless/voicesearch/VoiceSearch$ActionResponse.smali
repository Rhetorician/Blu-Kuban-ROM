.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;


# instance fields
.field private bitField0_:I

.field private displayDisambiguation_:Z

.field private hypothesis_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;",
            ">;"
        }
    .end annotation
.end field

.field private interpretation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 16356
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 16882
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    .line 16883
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->initFields()V

    .line 16891
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x19

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->actionResponse:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

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

    .line 16300
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16429
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16301
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->initFields()V

    .line 16302
    const/4 v2, 0x0

    .line 16304
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 16305
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_94

    .line 16306
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 16307
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_b0

    .line 16312
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 16314
    const/4 v0, 0x1

    goto :goto_f

    .line 16309
    :sswitch_20
    const/4 v0, 0x1

    .line 16310
    goto :goto_f

    .line 16319
    :sswitch_22
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_2f

    .line 16320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16321
    or-int/lit8 v2, v2, 0x1

    .line 16323
    :cond_2f
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_11 .. :try_end_3a} :catchall_41
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_3a} :catch_77

    goto :goto_f

    .line 16341
    .end local v3           #tag:I
    :catch_3b
    move-exception v1

    .line 16342
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3c
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    .line 16347
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_41
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_4e

    .line 16348
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16350
    :cond_4e
    and-int/lit8 v5, v2, 0x2

    if-ne v5, v7, :cond_5a

    .line 16351
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16353
    :cond_5a
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->makeExtensionsImmutable()V

    throw v4

    .line 16327
    .restart local v3       #tag:I
    :sswitch_5e
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v7, :cond_6b

    .line 16328
    :try_start_62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16329
    or-int/lit8 v2, v2, 0x2

    .line 16331
    :cond_6b
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_41
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_62 .. :try_end_76} :catch_3b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_f

    .line 16343
    .end local v3           #tag:I
    :catch_77
    move-exception v1

    .line 16344
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

    .line 16335
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_86
    :try_start_86
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    .line 16336
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v4

    iput-boolean v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z
    :try_end_92
    .catchall {:try_start_86 .. :try_end_92} :catchall_41
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_86 .. :try_end_92} :catch_3b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_92} :catch_77

    goto/16 :goto_f

    .line 16347
    .end local v3           #tag:I
    :cond_94
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_a0

    .line 16348
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16350
    :cond_a0
    and-int/lit8 v4, v2, 0x2

    if-ne v4, v7, :cond_ac

    .line 16351
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16353
    :cond_ac
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->makeExtensionsImmutable()V

    .line 16355
    return-void

    .line 16307
    :sswitch_data_b0
    .sparse-switch
        0x0 -> :sswitch_20
        0xa -> :sswitch_22
        0x12 -> :sswitch_5e
        0x18 -> :sswitch_86
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
    .line 16278
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 16283
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 16429
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16285
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16278
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 16286
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 16429
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16464
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16286
    return-void
.end method

.method static synthetic access$19500(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16278
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19502(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16278
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16278
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$19602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16278
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$19702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16278
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    return p1
.end method

.method static synthetic access$19802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16278
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .registers 1

    .prologue
    .line 16290
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 16425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    .line 16426
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    .line 16427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    .line 16428
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .registers 1

    .prologue
    .line 16545
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->access$19300()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 16548
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;
    .registers 2

    .prologue
    .line 16294
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;

    return-object v0
.end method

.method public getDisplayDisambiguation()Z
    .registers 2

    .prologue
    .line 16421
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    return v0
.end method

.method public getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;
    .registers 3
    .parameter "index"

    .prologue
    .line 16386
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    return-object v0
.end method

.method public getHypothesisCount()I
    .registers 2

    .prologue
    .line 16383
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;
    .registers 3
    .parameter "index"

    .prologue
    .line 16407
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    return-object v0
.end method

.method public getInterpretationCount()I
    .registers 2

    .prologue
    .line 16404
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 16466
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    .line 16467
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 16483
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 16469
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 16470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 16471
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 16470
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 16474
    :cond_22
    const/4 v0, 0x0

    :goto_23
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 16475
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 16474
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 16478
    :cond_3c
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_4a

    .line 16479
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 16482
    :cond_4a
    iput v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 16483
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasDisplayDisambiguation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 16418
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16431
    iget-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    .line 16432
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 16447
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 16432
    goto :goto_9

    .line 16434
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getHypothesisCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 16435
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getHypothesis(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionHypothesis;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 16436
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 16437
    goto :goto_9

    .line 16434
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 16440
    :cond_24
    const/4 v0, 0x0

    :goto_25
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretationCount()I

    move-result v4

    if-ge v0, v4, :cond_3c

    .line 16441
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getInterpretation(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_39

    .line 16442
    iput-byte v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 16443
    goto :goto_9

    .line 16440
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 16446
    :cond_3c
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .registers 2

    .prologue
    .line 16546
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 16278
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;
    .registers 2

    .prologue
    .line 16550
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse$Builder;

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
    .line 16489
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
    const/4 v3, 0x1

    .line 16452
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->getSerializedSize()I

    .line 16453
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 16454
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->hypothesis_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16453
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 16456
    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 16457
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->interpretation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 16456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 16459
    :cond_33
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3f

    .line 16460
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionResponse;->displayDisambiguation_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 16462
    :cond_3f
    return-void
.end method
