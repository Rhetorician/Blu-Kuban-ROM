.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityRequestData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private maxResults_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41512
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 41513
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->initFields()V

    .line 41514
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 41105
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 41176
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 41199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 41106
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41100
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 41107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 41176
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 41199
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 41107
    return-void
.end method

.method static synthetic access$55602(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41100
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$55702(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41100
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    return p1
.end method

.method static synthetic access$55802(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41100
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    return p1
.end method

.method static synthetic access$55902(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41100
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 1

    .prologue
    .line 41111
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method private getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 41140
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41141
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 41142
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 41144
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41147
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
    .line 41172
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41173
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    .line 41174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    .line 41175
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 41295
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->access$55400()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 41298
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 41168
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 41100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 41115
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 41158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41201
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    .line 41202
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 41218
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 41204
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 41205
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 41206
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41209
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 41210
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 41213
    :cond_26
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 41214
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 41217
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedSerializedSize:I

    move v1, v0

    .line 41218
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 5

    .prologue
    .line 41126
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 41127
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 41128
    check-cast v1, Ljava/lang/String;

    .line 41136
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 41130
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 41132
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 41133
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 41134
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 41136
    goto :goto_8
.end method

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 41165
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    .line 41155
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41123
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

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

    .line 41178
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    .line 41179
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 41182
    :goto_8
    return v1

    .line 41179
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 41181
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41296
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 41100
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 41300
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

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
    .line 41225
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

    .line 41187
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getSerializedSize()I

    .line 41188
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 41189
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 41191
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 41192
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 41194
    :cond_1d
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 41195
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 41197
    :cond_2a
    return-void
.end method
