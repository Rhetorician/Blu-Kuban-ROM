.class public final Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupantOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutOccupant"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

.field private static final serialVersionUID:J


# instance fields
.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39957
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    .line 39958
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->initFields()V

    .line 39959
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39423
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39549
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 39575
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 39424
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;-><init>(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39425
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39549
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 39575
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 39425
    return-void
.end method

.method static synthetic access$53302(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53402(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53502(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    return-wide p1
.end method

.method static synthetic access$53602(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$53702(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39418
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    return p1
.end method

.method private getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39490
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 39491
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39492
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39494
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 39497
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 1

    .prologue
    .line 39429
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39532
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 39533
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39534
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39536
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 39539
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

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39458
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 39459
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39460
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39462
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 39465
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
    .registers 3

    .prologue
    .line 39544
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 39545
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 39546
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    .line 39547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 39548
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 1

    .prologue
    .line 39675
    #calls: Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->access$53100()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39678
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39476
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    .line 39477
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39478
    check-cast v1, Ljava/lang/String;

    .line 39486
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39480
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39482
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39483
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39484
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->avatarUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39486
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39418
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    .registers 2

    .prologue
    .line 39433
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39518
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    .line 39519
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39520
    check-cast v1, Ljava/lang/String;

    .line 39528
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39522
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39524
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39525
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39526
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39528
    goto :goto_8
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 39508
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39444
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    .line 39445
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39446
    check-cast v1, Ljava/lang/String;

    .line 39454
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39448
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39450
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39451
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39452
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->name_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39454
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 39577
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    .line 39578
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 39598
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 39580
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 39581
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 39582
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39585
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 39586
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39589
    :cond_29
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_37

    .line 39590
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 39593
    :cond_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 39594
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 39597
    :cond_48
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedSerializedSize:I

    move v1, v0

    .line 39598
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasAvatarUrl()Z
    .registers 3

    .prologue
    .line 39473
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 39515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    .line 39505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39441
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

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

    .line 39551
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    .line 39552
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 39555
    :goto_8
    return v1

    .line 39552
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 39554
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39418
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 39676
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39418
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;
    .registers 2

    .prologue
    .line 39680
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;)Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant$Builder;

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
    .line 39605
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

    .line 39560
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getSerializedSize()I

    .line 39561
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 39562
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39564
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 39565
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getAvatarUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39567
    :cond_20
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2c

    .line 39568
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->gaiaId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 39570
    :cond_2c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 39571
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39573
    :cond_3b
    return-void
.end method
