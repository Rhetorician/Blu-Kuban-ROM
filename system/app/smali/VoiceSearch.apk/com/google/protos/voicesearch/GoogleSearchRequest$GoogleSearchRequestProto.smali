.class public final Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GoogleSearchRequest.java"

# interfaces
.implements Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/voicesearch/GoogleSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleSearchRequestProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;,
        Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;


# instance fields
.field private applicationId_:Ljava/lang/Object;

.field private attributes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private clientId_:Ljava/lang/Object;

.field private httpHeader_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;",
            ">;"
        }
    .end annotation
.end field

.field private latLong_:Ljava/lang/Object;

.field private masfCookie_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

.field private safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

.field private utteranceId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 184
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$1;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$1;-><init>()V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->PARSER:Lcom/google/protobuf/Parser;

    .line 1376
    new-instance v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;-><init>(Z)V

    sput-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    .line 1377
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    invoke-direct {v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->initFields()V

    .line 1378
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
    const/4 v7, -0x1

    const/16 v10, 0x100

    const/4 v9, 0x4

    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 482
    iput-byte v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    .line 547
    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedSerializedSize:I

    .line 87
    invoke-direct {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->initFields()V

    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 91
    .local v0, done:Z
    :cond_10
    :goto_10
    if-nez v0, :cond_10e

    .line 92
    :try_start_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 93
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_12a

    .line 98
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_10

    .line 100
    const/4 v0, 0x1

    goto :goto_10

    .line 95
    :sswitch_21
    const/4 v0, 0x1

    .line 96
    goto :goto_10

    .line 105
    :sswitch_23
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_12 .. :try_end_2f} :catch_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2f} :catch_7f

    goto :goto_10

    .line 169
    .end local v5           #tag:I
    :catch_30
    move-exception v1

    .line 170
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_31
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_36

    .line 175
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_36
    move-exception v7

    and-int/lit8 v8, v2, 0x4

    if-ne v8, v9, :cond_43

    .line 176
    iget-object v8, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    .line 178
    :cond_43
    and-int/lit16 v8, v2, 0x100

    if-ne v8, v10, :cond_4f

    .line 179
    iget-object v8, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    .line 181
    :cond_4f
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->makeExtensionsImmutable()V

    throw v7

    .line 110
    .restart local v5       #tag:I
    :sswitch_53
    const/4 v4, 0x0

    .line 111
    .local v4, subBuilder:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    :try_start_54
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v7, v7, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    .line 112
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-virtual {v7}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->toBuilder()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    move-result-object v4

    .line 114
    :cond_61
    sget-object v7, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 115
    if-eqz v4, :cond_78

    .line 116
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-virtual {v4, v7}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->mergeFrom(Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;

    .line 117
    invoke-virtual {v4}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;->buildPartial()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 119
    :cond_78
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I
    :try_end_7e
    .catchall {:try_start_54 .. :try_end_7e} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_54 .. :try_end_7e} :catch_30
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7e} :catch_7f

    goto :goto_10

    .line 171
    .end local v4           #subBuilder:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto$Builder;
    .end local v5           #tag:I
    :catch_7f
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/IOException;
    :try_start_80
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_36

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_8e
    and-int/lit8 v7, v2, 0x4

    if-eq v7, v9, :cond_9b

    .line 124
    :try_start_92
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    .line 125
    or-int/lit8 v2, v2, 0x4

    .line 127
    :cond_9b
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    sget-object v8, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    .line 131
    :sswitch_a8
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 132
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    goto/16 :goto_10

    .line 136
    :sswitch_b6
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 137
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    goto/16 :goto_10

    .line 141
    :sswitch_c4
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    goto/16 :goto_10

    .line 146
    :sswitch_d2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 147
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->valueOf(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    move-result-object v6

    .line 148
    .local v6, value:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    if-eqz v6, :cond_10

    .line 149
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 150
    iput-object v6, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    goto/16 :goto_10

    .line 155
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    :sswitch_e6
    iget v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    .line 156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    goto/16 :goto_10

    .line 160
    :sswitch_f4
    and-int/lit16 v7, v2, 0x100

    if-eq v7, v10, :cond_101

    .line 161
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    .line 162
    or-int/lit16 v2, v2, 0x100

    .line 164
    :cond_101
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    sget-object v8, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10c
    .catchall {:try_start_92 .. :try_end_10c} :catchall_36
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_92 .. :try_end_10c} :catch_30
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_10c} :catch_7f

    goto/16 :goto_10

    .line 175
    .end local v5           #tag:I
    :cond_10e
    and-int/lit8 v7, v2, 0x4

    if-ne v7, v9, :cond_11a

    .line 176
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    .line 178
    :cond_11a
    and-int/lit16 v7, v2, 0x100

    if-ne v7, v10, :cond_126

    .line 179
    iget-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    .line 181
    :cond_126
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->makeExtensionsImmutable()V

    .line 183
    return-void

    .line 93
    :sswitch_data_12a
    .sparse-switch
        0x0 -> :sswitch_21
        0xa -> :sswitch_23
        0x12 -> :sswitch_53
        0x1a -> :sswitch_8e
        0x22 -> :sswitch_a8
        0x2a -> :sswitch_b6
        0x32 -> :sswitch_c4
        0x38 -> :sswitch_d2
        0x42 -> :sswitch_e6
        0x4a -> :sswitch_f4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
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
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 69
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 482
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    .line 547
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedSerializedSize:I

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/voicesearch/GoogleSearchRequest$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 72
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 482
    iput-byte v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    .line 547
    iput v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedSerializedSize:I

    .line 72
    return-void
.end method

.method static synthetic access$1000(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;

    .line 473
    invoke-static {}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->getDefaultInstance()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    .line 474
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    .line 475
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    .line 476
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    .line 477
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->NONE_FILTER:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    .line 479
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    .line 480
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    .line 481
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .registers 1

    .prologue
    .line 652
    #calls: Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->create()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->access$100()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 655
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;->mergeFrom(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;

    .line 267
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 268
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 270
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->applicationId_:Ljava/lang/Object;

    .line 273
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

.method public getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .registers 3
    .parameter "index"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getAttributesCount()I
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClientIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    .line 440
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 441
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 443
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->clientId_:Ljava/lang/Object;

    .line 446
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;
    .registers 2

    .prologue
    .line 80
    sget-object v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->defaultInstance:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;

    return-object v0
.end method

.method public getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;
    .registers 3
    .parameter "index"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    return-object v0
.end method

.method public getHttpHeaderCount()I
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLatLongBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 396
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    .line 397
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 398
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 400
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->latLong_:Ljava/lang/Object;

    .line 403
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

.method public getMasfCookieBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 330
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    .line 331
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 332
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 334
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->masfCookie_:Ljava/lang/Object;

    .line 337
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

.method public getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    return-object v0
.end method

.method public getSafeSearchFilter()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 549
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedSerializedSize:I

    .line 550
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 590
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 552
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 553
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 554
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 557
    :cond_1c
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 558
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 561
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 562
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 565
    :cond_43
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_52

    .line 566
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getMasfCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 569
    :cond_52
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_62

    .line 570
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 573
    :cond_62
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_74

    .line 574
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getLatLongBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 577
    :cond_74
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_88

    .line 578
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    invoke-virtual {v4}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 581
    :cond_88
    iget v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_99

    .line 582
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 585
    :cond_99
    const/4 v0, 0x0

    :goto_9a
    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_b4

    .line 586
    const/16 v4, 0x9

    iget-object v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 589
    :cond_b4
    iput v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedSerializedSize:I

    move v2, v1

    .line 590
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getUtteranceIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    .line 364
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 365
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 367
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->utteranceId_:Ljava/lang/Object;

    .line 370
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

.method public hasApplicationId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 248
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasClientId()Z
    .registers 3

    .prologue
    .line 421
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatLong()Z
    .registers 3

    .prologue
    .line 378
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

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

.method public hasMasfCookie()Z
    .registers 3

    .prologue
    .line 312
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

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

.method public hasRecognitionResultSet()Z
    .registers 3

    .prologue
    .line 281
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

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

.method public hasSafeSearchFilter()Z
    .registers 3

    .prologue
    .line 411
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasUtteranceId()Z
    .registers 3

    .prologue
    .line 345
    iget v0, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

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
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 484
    iget-byte v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    .line 485
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_d

    if-ne v1, v2, :cond_b

    :goto_9
    move v3, v2

    .line 512
    :goto_a
    return v3

    :cond_b
    move v2, v3

    .line 485
    goto :goto_9

    .line 487
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasApplicationId()Z

    move-result v4

    if-nez v4, :cond_16

    .line 488
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    goto :goto_a

    .line 491
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->hasRecognitionResultSet()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 492
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    goto :goto_a

    .line 495
    :cond_1f
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getRecognitionResultSet()Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 496
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    goto :goto_a

    .line 499
    :cond_2c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getAttributesCount()I

    move-result v4

    if-ge v0, v4, :cond_43

    .line 500
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getAttributes(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_40

    .line 501
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    goto :goto_a

    .line 499
    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 505
    :cond_43
    const/4 v0, 0x0

    :goto_44
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getHttpHeaderCount()I

    move-result v4

    if-ge v0, v4, :cond_5a

    .line 506
    invoke-virtual {p0, v0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getHttpHeader(I)Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protos/voicesearch/GoogleSearchRequest$RequestAttributeProto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_57

    .line 507
    iput-byte v3, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    goto :goto_a

    .line 505
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 511
    :cond_5a
    iput-byte v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->memoizedIsInitialized:B

    move v3, v2

    .line 512
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .registers 2

    .prologue
    .line 653
    invoke-static {}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;
    .registers 2

    .prologue
    .line 657
    invoke-static {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->newBuilder(Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;)Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$Builder;

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
    .line 596
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 517
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getSerializedSize()I

    .line 518
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 519
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getApplicationIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 521
    :cond_15
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 522
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->recognitionResultSet_:Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProto;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 524
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 525
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->attributes_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 527
    :cond_38
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_45

    .line 528
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getMasfCookieBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 530
    :cond_45
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_53

    .line 531
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getUtteranceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 533
    :cond_53
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_63

    .line 534
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getLatLongBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 536
    :cond_63
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_75

    .line 537
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->safeSearchFilter_:Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;

    invoke-virtual {v2}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto$SafeSearchFilter;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 539
    :cond_75
    iget v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_84

    .line 540
    invoke-virtual {p0}, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->getClientIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 542
    :cond_84
    const/4 v0, 0x0

    :goto_85
    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9d

    .line 543
    const/16 v2, 0x9

    iget-object v1, p0, Lcom/google/protos/voicesearch/GoogleSearchRequest$GoogleSearchRequestProto;->httpHeader_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    .line 545
    :cond_9d
    return-void
.end method
