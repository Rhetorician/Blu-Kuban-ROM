.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebSearchRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;


# instance fields
.field private bitField0_:I

.field private googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

.field private serverHttpUrl_:Ljava/lang/Object;

.field private serverProtoUrl_:Ljava/lang/Object;

.field private skipWebsearchAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private skipWebsearchAlways_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8869
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    .line 9515
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9516
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->initFields()V

    .line 9517
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 14
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v10, 0x10

    .line 8779
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9002
    iput-byte v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8780
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->initFields()V

    .line 8781
    const/4 v3, 0x0

    .line 8783
    .local v3, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 8784
    .local v0, done:Z
    :cond_f
    :goto_f
    if-nez v0, :cond_de

    .line 8785
    :try_start_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 8786
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_ee

    .line 8791
    invoke-virtual {p0, p1, p2, v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_f

    .line 8793
    const/4 v0, 0x1

    goto :goto_f

    .line 8788
    :sswitch_20
    const/4 v0, 0x1

    .line 8789
    goto :goto_f

    .line 8798
    :sswitch_22
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 8799
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    move-result-object v7

    .line 8800
    .local v7, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    if-eqz v7, :cond_f

    .line 8801
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8802
    iput-object v7, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_3b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_11 .. :try_end_34} :catch_35
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_34} :catch_59

    goto :goto_f

    .line 8857
    .end local v5           #rawValue:I
    .end local v6           #tag:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    :catch_35
    move-exception v1

    .line 8858
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_36
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3b

    .line 8863
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_3b
    move-exception v8

    and-int/lit8 v9, v3, 0x10

    if-ne v9, v10, :cond_48

    .line 8864
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8866
    :cond_48
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->makeExtensionsImmutable()V

    throw v8

    .line 8807
    .restart local v6       #tag:I
    :sswitch_4c
    :try_start_4c
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8808
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_3b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4c .. :try_end_58} :catch_35
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_58} :catch_59

    goto :goto_f

    .line 8859
    .end local v6           #tag:I
    :catch_59
    move-exception v1

    .line 8860
    .local v1, e:Ljava/io/IOException;
    :try_start_5a
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_68
    .catchall {:try_start_5a .. :try_end_68} :catchall_3b

    .line 8812
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_68
    :try_start_68
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    goto :goto_f

    .line 8817
    :sswitch_75
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    goto :goto_f

    .line 8822
    :sswitch_82
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 8823
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    .line 8824
    .local v7, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v7, :cond_f

    .line 8825
    and-int/lit8 v8, v3, 0x10

    if-eq v8, v10, :cond_99

    .line 8826
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8827
    or-int/lit8 v3, v3, 0x10

    .line 8829
    :cond_99
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 8834
    .end local v5           #rawValue:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :sswitch_a0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 8835
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 8836
    .local v4, oldLimit:I
    :cond_a8
    :goto_a8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_cb

    .line 8837
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 8838
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v7

    .line 8839
    .restart local v7       #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v7, :cond_a8

    .line 8840
    and-int/lit8 v8, v3, 0x10

    if-eq v8, v10, :cond_c5

    .line 8841
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8842
    or-int/lit8 v3, v3, 0x10

    .line 8844
    :cond_c5
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    .line 8847
    .end local v5           #rawValue:I
    .end local v7           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :cond_cb
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_f

    .line 8851
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    :sswitch_d0
    iget v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    .line 8852
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z
    :try_end_dc
    .catchall {:try_start_68 .. :try_end_dc} :catchall_3b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_68 .. :try_end_dc} :catch_35
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_dc} :catch_59

    goto/16 :goto_f

    .line 8863
    .end local v6           #tag:I
    :cond_de
    and-int/lit8 v8, v3, 0x10

    if-ne v8, v10, :cond_ea

    .line 8864
    iget-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 8866
    :cond_ea
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->makeExtensionsImmutable()V

    .line 8868
    return-void

    .line 8786
    :sswitch_data_ee
    .sparse-switch
        0x0 -> :sswitch_20
        0x8 -> :sswitch_22
        0x12 -> :sswitch_4c
        0x1a -> :sswitch_68
        0x22 -> :sswitch_75
        0x28 -> :sswitch_82
        0x2a -> :sswitch_a0
        0x30 -> :sswitch_d0
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
    .line 8757
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 8762
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9002
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8764
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 8765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9002
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9038
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 8765
    return-void
.end method

.method static synthetic access$10602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$10800(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10900(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 8757
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    return p1
.end method

.method static synthetic access$11202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8757
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .registers 1

    .prologue
    .line 8769
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 8995
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->NONE:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    .line 8996
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    .line 8997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8999
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    .line 9000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    .line 9001
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .registers 1

    .prologue
    .line 9136
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->access$10400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9139
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .registers 2

    .prologue
    .line 8773
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method public getGoogleSearchRequestProto()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 8902
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResponseContentEncoding()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;
    .registers 2

    .prologue
    .line 8892
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 9040
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    .line 9041
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 9074
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 9043
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 9044
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 9045
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 9048
    :cond_1c
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 9049
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9052
    :cond_29
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_39

    .line 9053
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9056
    :cond_39
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4a

    .line 9057
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9061
    :cond_4a
    const/4 v0, 0x0

    .line 9062
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_68

    .line 9063
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 9062
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 9066
    :cond_68
    add-int/2addr v2, v0

    .line 9067
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9069
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_82

    .line 9070
    const/4 v4, 0x6

    iget-boolean v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 9073
    :cond_82
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedSerializedSize:I

    move v3, v2

    .line 9074
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8927
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8928
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8929
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8931
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverHttpUrl_:Ljava/lang/Object;

    .line 8934
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

.method public getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 8960
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8961
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 8962
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8964
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->serverProtoUrl_:Ljava/lang/Object;

    .line 8967
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

.method public getSkipWebsearchAlways()Z
    .registers 2

    .prologue
    .line 8991
    iget-boolean v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    return v0
.end method

.method public hasGoogleSearchRequestProto()Z
    .registers 3

    .prologue
    .line 8899
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasResponseContentEncoding()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8889
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasServerHttpUrl()Z
    .registers 3

    .prologue
    .line 8909
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasServerProtoUrl()Z
    .registers 3

    .prologue
    .line 8942
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

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

.method public hasSkipWebsearchAlways()Z
    .registers 3

    .prologue
    .line 8988
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9004
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    .line 9005
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 9012
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 9005
    goto :goto_9

    .line 9007
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->hasGoogleSearchRequestProto()Z

    move-result v3

    if-nez v3, :cond_16

    .line 9008
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    move v1, v2

    .line 9009
    goto :goto_9

    .line 9011
    :cond_16
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .registers 2

    .prologue
    .line 9137
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 8757
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    .registers 2

    .prologue
    .line 9141
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

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
    .line 9080
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 9017
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getSerializedSize()I

    .line 9018
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 9019
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->responseContentEncoding_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultiModalData$ContentEncoding;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9021
    :cond_15
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 9022
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->googleSearchRequestProto_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9024
    :cond_20
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_2e

    .line 9025
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerHttpUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9027
    :cond_2e
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    .line 9028
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getServerProtoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 9030
    :cond_3d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3e
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 9031
    const/4 v2, 0x5

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9030
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 9033
    :cond_59
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_67

    .line 9034
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->skipWebsearchAlways_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9036
    :cond_67
    return-void
.end method
