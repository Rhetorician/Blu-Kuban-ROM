.class public final Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetActivitiesResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

.field private static final serialVersionUID:J


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nextContinuationToken_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4675
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    .line 4676
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->initFields()V

    .line 4677
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4221
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4292
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedIsInitialized:B

    .line 4318
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedSerializedSize:I

    .line 4222
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4216
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4223
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4292
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedIsInitialized:B

    .line 4318
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedSerializedSize:I

    .line 4223
    return-void
.end method

.method static synthetic access$5600(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4216
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4216
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5702(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4216
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4216
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 1

    .prologue
    .line 4227
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    return-object v0
.end method

.method private getNextContinuationTokenBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4277
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    .line 4278
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4279
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4281
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    .line 4284
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

.method private initFields()V
    .registers 2

    .prologue
    .line 4289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    .line 4290
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    .line 4291
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 1

    .prologue
    .line 4410
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->access$5400()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 4413
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4352
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;->access$5300(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 4249
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 4246
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4239
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public getActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 4253
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;

    return-object v0
.end method

.method public getActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4243
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4216
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;
    .registers 2

    .prologue
    .line 4231
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;

    return-object v0
.end method

.method public getNextContinuationToken()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4263
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    .line 4264
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4265
    check-cast v1, Ljava/lang/String;

    .line 4273
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4267
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4269
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4270
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4271
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->nextContinuationToken_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4273
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4320
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedSerializedSize:I

    .line 4321
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 4333
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 4323
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 4324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 4325
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4324
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4328
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 4329
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 4332
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 4333
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public hasNextContinuationToken()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4260
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I

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
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4294
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedIsInitialized:B

    .line 4295
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 4304
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 4295
    goto :goto_9

    .line 4297
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getActivityCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 4298
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 4299
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 4300
    goto :goto_9

    .line 4297
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 4303
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4216
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4411
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4216
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;
    .registers 2

    .prologue
    .line 4415
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse$Builder;

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
    .line 4340
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
    const/4 v2, 0x1

    .line 4309
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getSerializedSize()I

    .line 4310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 4311
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->activity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4310
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4313
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 4314
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetActivitiesResponse;->getNextContinuationTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4316
    :cond_29
    return-void
.end method
