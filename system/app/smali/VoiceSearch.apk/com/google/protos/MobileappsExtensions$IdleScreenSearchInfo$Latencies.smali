.class public final Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatenciesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Latencies"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;


# instance fields
.field private bitField0_:I

.field private durationMs_:I

.field private factor_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timeout_:Z

.field private type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4899
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$1;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$1;-><init>()V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->PARSER:Lcom/google/protobuf/Parser;

    .line 5278
    new-instance v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Z)V

    sput-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    .line 5279
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    invoke-direct {v0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->initFields()V

    .line 5280
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

    .line 4846
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4961
    iput-byte v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4987
    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4847
    invoke-direct {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->initFields()V

    .line 4848
    const/4 v2, 0x0

    .line 4850
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 4851
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_74

    .line 4852
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 4853
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_78

    .line 4858
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 4860
    const/4 v0, 0x1

    goto :goto_d

    .line 4855
    :sswitch_1e
    const/4 v0, 0x1

    .line 4856
    goto :goto_d

    .line 4865
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 4866
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->valueOf(I)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    move-result-object v5

    .line 4867
    .local v5, value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    if-eqz v5, :cond_d

    .line 4868
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4869
    iput-object v5, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_4b

    goto :goto_d

    .line 4890
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v5           #value:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    :catch_33
    move-exception v1

    .line 4891
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 4896
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v6

    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->makeExtensionsImmutable()V

    throw v6

    .line 4874
    .restart local v4       #tag:I
    :sswitch_3e
    :try_start_3e
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4875
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_4a} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4a} :catch_4b

    goto :goto_d

    .line 4892
    .end local v4           #tag:I
    :catch_4b
    move-exception v1

    .line 4893
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

    .line 4879
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_5a
    :try_start_5a
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4880
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    goto :goto_d

    .line 4884
    :sswitch_67
    iget v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    .line 4885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z
    :try_end_73
    .catchall {:try_start_5a .. :try_end_73} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5a .. :try_end_73} :catch_33
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_73} :catch_4b

    goto :goto_d

    .line 4896
    .end local v4           #tag:I
    :cond_74
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->makeExtensionsImmutable()V

    .line 4898
    return-void

    .line 4853
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_1e
        0x138 -> :sswitch_20
        0x140 -> :sswitch_3e
        0x148 -> :sswitch_5a
        0x150 -> :sswitch_67
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/MobileappsExtensions$1;)V
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
    .line 4824
    invoke-direct {p0, p1, p2}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4829
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4961
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4987
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4831
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/MobileappsExtensions$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    invoke-direct {p0, p1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4832
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4961
    iput-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4987
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4832
    return-void
.end method

.method static synthetic access$4202(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    iput-object p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    return p1
.end method

.method static synthetic access$4402(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    iput-boolean p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4824
    iput p1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .registers 1

    .prologue
    .line 4836
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4956
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->PHONE_TOP_SUGGESTION_CONTACT:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    iput-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    .line 4957
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    .line 4958
    iput v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    .line 4959
    iput-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    .line 4960
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .registers 1

    .prologue
    .line 5072
    #calls: Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->create()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->access$4000()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5075
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;->mergeFrom(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4824
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;
    .registers 2

    .prologue
    .line 4840
    sget-object v0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->defaultInstance:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;

    return-object v0
.end method

.method public getDurationMs()I
    .registers 2

    .prologue
    .line 4932
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    return v0
.end method

.method public getFactor()I
    .registers 2

    .prologue
    .line 4942
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    .line 4989
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    .line 4990
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 5010
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 4992
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 4993
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 4994
    const/16 v2, 0x27

    iget-object v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v3}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4997
    :cond_1c
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c

    .line 4998
    const/16 v2, 0x28

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5001
    :cond_2c
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    .line 5002
    const/16 v2, 0x29

    iget v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5005
    :cond_3c
    iget v2, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4d

    .line 5006
    const/16 v2, 0x2a

    iget-boolean v3, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 5009
    :cond_4d
    iput v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedSerializedSize:I

    move v1, v0

    .line 5010
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public getTimeout()Z
    .registers 2

    .prologue
    .line 4952
    iget-boolean v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    return v0
.end method

.method public getType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;
    .registers 2

    .prologue
    .line 4922
    iget-object v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    return-object v0
.end method

.method public hasDurationMs()Z
    .registers 3

    .prologue
    .line 4929
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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

.method public hasFactor()Z
    .registers 3

    .prologue
    .line 4939
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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

.method public hasTimeout()Z
    .registers 3

    .prologue
    .line 4949
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4919
    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4963
    iget-byte v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    .line 4964
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4967
    :goto_8
    return v1

    .line 4964
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4966
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4824
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .registers 2

    .prologue
    .line 5073
    invoke-static {}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4824
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;
    .registers 2

    .prologue
    .line 5077
    invoke-static {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->newBuilder(Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;)Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies$Builder;

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
    .line 5016
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4972
    invoke-virtual {p0}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->getSerializedSize()I

    .line 4973
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 4974
    const/16 v0, 0x27

    iget-object v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->type_:Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;

    invoke-virtual {v1}, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$LatencyType;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 4976
    :cond_15
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 4977
    const/16 v0, 0x28

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->durationMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4979
    :cond_23
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_31

    .line 4980
    const/16 v0, 0x29

    iget v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->factor_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4982
    :cond_31
    iget v0, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_40

    .line 4983
    const/16 v0, 0x2a

    iget-boolean v1, p0, Lcom/google/protos/MobileappsExtensions$IdleScreenSearchInfo$Latencies;->timeout_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 4985
    :cond_40
    return-void
.end method
