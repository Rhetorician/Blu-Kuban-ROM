.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntentExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18569
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->PARSER:Lcom/google/protobuf/Parser;

    .line 18979
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    .line 18980
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->initFields()V

    .line 18981
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 18530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18655
    iput-byte v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18531
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->initFields()V

    .line 18532
    const/4 v2, 0x0

    .line 18534
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 18535
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_54

    .line 18536
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 18537
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_58

    .line 18542
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 18544
    const/4 v0, 0x1

    goto :goto_d

    .line 18539
    :sswitch_1e
    const/4 v0, 0x1

    .line 18540
    goto :goto_d

    .line 18549
    :sswitch_20
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    .line 18550
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2c} :catch_45

    goto :goto_d

    .line 18560
    .end local v3           #tag:I
    :catch_2d
    move-exception v1

    .line 18561
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2e
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_33

    .line 18566
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_33
    move-exception v4

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->makeExtensionsImmutable()V

    throw v4

    .line 18554
    .restart local v3       #tag:I
    :sswitch_38
    :try_start_38
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    .line 18555
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_33
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_38 .. :try_end_44} :catch_2d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_45

    goto :goto_d

    .line 18562
    .end local v3           #tag:I
    :catch_45
    move-exception v1

    .line 18563
    .local v1, e:Ljava/io/IOException;
    :try_start_46
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_33

    .line 18566
    .end local v1           #e:Ljava/io/IOException;
    :cond_54
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->makeExtensionsImmutable()V

    .line 18568
    return-void

    .line 18537
    :sswitch_data_58
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
    .line 18508
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18513
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18655
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18515
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18508
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18516
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18655
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18683
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18516
    return-void
.end method

.method static synthetic access$21700(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18508
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18508
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 18508
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$21802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18508
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$21902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18508
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .registers 1

    .prologue
    .line 18520
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 18652
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18653
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18654
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .registers 1

    .prologue
    .line 18760
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->access$21500()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 18763
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
    .registers 2

    .prologue
    .line 18524
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18607
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18608
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18609
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18611
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->name_:Ljava/lang/Object;

    .line 18614
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

    .line 18685
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    .line 18686
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 18698
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 18688
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 18689
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 18690
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18693
    :cond_19
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_28

    .line 18694
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18697
    :cond_28
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedSerializedSize:I

    move v1, v0

    .line 18698
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 18640
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18641
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 18642
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18644
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->value_:Ljava/lang/Object;

    .line 18647
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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18589
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

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
    .line 18622
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

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

    .line 18657
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    .line 18658
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 18669
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 18658
    goto :goto_9

    .line 18660
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasName()Z

    move-result v3

    if-nez v3, :cond_16

    .line 18661
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    move v1, v2

    .line 18662
    goto :goto_9

    .line 18664
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->hasValue()Z

    move-result v3

    if-nez v3, :cond_20

    .line 18665
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    move v1, v2

    .line 18666
    goto :goto_9

    .line 18668
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .registers 2

    .prologue
    .line 18761
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 18508
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;
    .registers 2

    .prologue
    .line 18765
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra$Builder;

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
    .line 18704
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

    .line 18674
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getSerializedSize()I

    .line 18675
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 18676
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18678
    :cond_12
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 18679
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 18681
    :cond_1f
    return-void
.end method
