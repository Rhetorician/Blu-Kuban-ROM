.class public final Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionClientAlternates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private span_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end field

.field private unit_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 557
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$1;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->PARSER:Lcom/google/protobuf/Parser;

    .line 992
    new-instance v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    .line 993
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    invoke-direct {v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->initFields()V

    .line 994
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

    const/4 v6, 0x1

    .line 507
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 619
    iput-byte v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 652
    iput v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 508
    invoke-direct {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->initFields()V

    .line 509
    const/4 v2, 0x0

    .line 511
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 512
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_7a

    .line 513
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 514
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_8a

    .line 519
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 521
    const/4 v0, 0x1

    goto :goto_e

    .line 516
    :sswitch_1f
    const/4 v0, 0x1

    .line 517
    goto :goto_e

    .line 526
    :sswitch_21
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v6, :cond_2e

    .line 527
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 528
    or-int/lit8 v2, v2, 0x1

    .line 530
    :cond_2e
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    sget-object v5, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_39} :catch_5e

    goto :goto_e

    .line 545
    .end local v3           #tag:I
    :catch_3a
    move-exception v1

    .line 546
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3b
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v4

    throw v4
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 551
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_40
    move-exception v4

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v6, :cond_4d

    .line 552
    iget-object v5, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 554
    :cond_4d
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->makeExtensionsImmutable()V

    throw v4

    .line 534
    .restart local v3       #tag:I
    :sswitch_51
    :try_start_51
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 535
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I
    :try_end_5d
    .catchall {:try_start_51 .. :try_end_5d} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_51 .. :try_end_5d} :catch_3a
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5d} :catch_5e

    goto :goto_e

    .line 547
    .end local v3           #tag:I
    :catch_5e
    move-exception v1

    .line 548
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
    .catchall {:try_start_5f .. :try_end_6d} :catchall_40

    .line 539
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #tag:I
    :sswitch_6d
    :try_start_6d
    iget v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    .line 540
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    iput v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I
    :try_end_79
    .catchall {:try_start_6d .. :try_end_79} :catchall_40
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6d .. :try_end_79} :catch_3a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_79} :catch_5e

    goto :goto_e

    .line 551
    .end local v3           #tag:I
    :cond_7a
    and-int/lit8 v4, v2, 0x1

    if-ne v4, v6, :cond_86

    .line 552
    iget-object v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 554
    :cond_86
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->makeExtensionsImmutable()V

    .line 556
    return-void

    .line 514
    :sswitch_data_8a
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x10 -> :sswitch_51
        0x18 -> :sswitch_6d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/common/Alternates$1;)V
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
    .line 485
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 490
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 619
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 652
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 492
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/common/Alternates$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 493
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 619
    iput-byte v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 652
    iput v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 493
    return-void
.end method

.method static synthetic access$1000(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    return p1
.end method

.method static synthetic access$1302(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 485
    iput p1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .registers 1

    .prologue
    .line 497
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 615
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    .line 616
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    .line 617
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    .line 618
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .registers 1

    .prologue
    .line 733
    #calls: Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->create()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->access$800()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 736
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;->mergeFrom(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
    .registers 2

    .prologue
    .line 501
    sget-object v0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->defaultInstance:Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;

    return-object v0
.end method

.method public getMaxSpanLength()I
    .registers 2

    .prologue
    .line 601
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 654
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    .line 655
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 671
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 657
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 658
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_23

    .line 659
    iget-object v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 658
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 662
    :cond_23
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_30

    .line 663
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 666
    :cond_30
    iget v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_3e

    .line 667
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 670
    :cond_3e
    iput v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedSerializedSize:I

    move v2, v1

    .line 671
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
    .registers 3
    .parameter "index"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    return-object v0
.end method

.method public getSpanCount()I
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    return-object v0
.end method

.method public getUnit()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 598
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUnit()Z
    .registers 3

    .prologue
    .line 608
    iget v0, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

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
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 621
    iget-byte v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    .line 622
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 635
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 622
    goto :goto_9

    .line 624
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->hasMaxSpanLength()Z

    move-result v4

    if-nez v4, :cond_16

    .line 625
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    move v2, v3

    .line 626
    goto :goto_9

    .line 628
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpanCount()I

    move-result v4

    if-ge v0, v4, :cond_2e

    .line 629
    invoke-virtual {p0, v0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/speech/common/Alternates$AlternateSpan;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 630
    iput-byte v3, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    move v2, v3

    .line 631
    goto :goto_9

    .line 628
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 634
    :cond_2e
    iput-byte v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .registers 2

    .prologue
    .line 734
    invoke-static {}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;
    .registers 2

    .prologue
    .line 738
    invoke-static {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->newBuilder(Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;)Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates$Builder;

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
    .line 677
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

    .line 640
    invoke-virtual {p0}, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->getSerializedSize()I

    .line 641
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 642
    iget-object v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->span_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 644
    :cond_1c
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_27

    .line 645
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->maxSpanLength_:I

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 647
    :cond_27
    iget v1, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_33

    .line 648
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;->unit_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 650
    :cond_33
    return-void
.end method
