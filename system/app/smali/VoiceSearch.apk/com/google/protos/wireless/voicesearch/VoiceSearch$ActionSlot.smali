.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionSlot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12460
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->PARSER:Lcom/google/protobuf/Parser;

    .line 12843
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    .line 12844
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->initFields()V

    .line 12845
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

    .line 12413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12523
    iput-byte v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    .line 12555
    iput v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedSerializedSize:I

    .line 12414
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->initFields()V

    .line 12415
    const/4 v2, 0x0

    .line 12417
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 12418
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_73

    .line 12419
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 12420
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 12425
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_d

    .line 12427
    const/4 v0, 0x1

    goto :goto_d

    .line 12422
    :sswitch_1e
    const/4 v0, 0x1

    .line 12423
    goto :goto_d

    .line 12432
    :sswitch_20
    iget v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    .line 12433
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_64

    goto :goto_d

    .line 12451
    .end local v4           #tag:I
    :catch_2d
    move-exception v1

    .line 12452
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 12457
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v5

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->makeExtensionsImmutable()V

    throw v5

    .line 12437
    .restart local v4       #tag:I
    :sswitch_38
    const/4 v3, 0x0

    .line 12438
    .local v3, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    :try_start_39
    iget v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_46

    .line 12439
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-virtual {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    move-result-object v3

    .line 12441
    :cond_46
    sget-object v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12442
    if-eqz v3, :cond_5d

    .line 12443
    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-virtual {v3, v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;

    .line 12444
    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12446
    :cond_5d
    iget v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I
    :try_end_63
    .catchall {:try_start_39 .. :try_end_63} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_39 .. :try_end_63} :catch_2d
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_63} :catch_64

    goto :goto_d

    .line 12453
    .end local v3           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue$Builder;
    .end local v4           #tag:I
    :catch_64
    move-exception v1

    .line 12454
    .local v1, e:Ljava/io/IOException;
    :try_start_65
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_33

    .line 12457
    .end local v1           #e:Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->makeExtensionsImmutable()V

    .line 12459
    return-void

    .line 12420
    nop

    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_20
        0x12 -> :sswitch_38
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
    .line 12391
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12396
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12523
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    .line 12555
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedSerializedSize:I

    .line 12398
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12391
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12399
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12523
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    .line 12555
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedSerializedSize:I

    .line 12399
    return-void
.end method

.method static synthetic access$15100(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12391
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$15102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12391
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12391
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object p1
.end method

.method static synthetic access$15302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12391
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .registers 1

    .prologue
    .line 12403
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 12520
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    .line 12521
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    .line 12522
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .registers 1

    .prologue
    .line 12632
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->access$14900()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 12635
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 12391
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;
    .registers 2

    .prologue
    .line 12407
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 12483
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    .line 12484
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 12485
    check-cast v1, Ljava/lang/String;

    .line 12493
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 12487
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12489
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 12490
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 12491
    iput-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 12493
    goto :goto_8
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 12498
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    .line 12499
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 12500
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12502
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->key_:Ljava/lang/Object;

    .line 12505
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
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12557
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedSerializedSize:I

    .line 12558
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 12570
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 12560
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 12561
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 12562
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12565
    :cond_19
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 12566
    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12569
    :cond_26
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedSerializedSize:I

    move v1, v0

    .line 12570
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;
    .registers 2

    .prologue
    .line 12516
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    return-object v0
.end method

.method public hasKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 12480
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

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
    .line 12513
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 12525
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    .line 12526
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 12541
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 12526
    goto :goto_9

    .line 12528
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->hasKey()Z

    move-result v3

    if-nez v3, :cond_16

    .line 12529
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    goto :goto_a

    .line 12532
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->hasValue()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 12533
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    goto :goto_a

    .line 12536
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getValue()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 12537
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    goto :goto_a

    .line 12540
    :cond_2c
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->memoizedIsInitialized:B

    move v2, v1

    .line 12541
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12391
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .registers 2

    .prologue
    .line 12633
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 12391
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;
    .registers 2

    .prologue
    .line 12637
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot$Builder;

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
    .line 12576
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 12546
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getSerializedSize()I

    .line 12547
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 12548
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 12550
    :cond_12
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 12551
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlot;->value_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValue;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12553
    :cond_1d
    return-void
.end method
