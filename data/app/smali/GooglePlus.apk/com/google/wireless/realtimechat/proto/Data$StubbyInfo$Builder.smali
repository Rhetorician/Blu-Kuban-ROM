.class public final Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$StubbyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;",
        "Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$StubbyInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

.field private recipientId_:Lcom/google/protobuf/LazyStringList;

.field private senderId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 3608
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3745
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3781
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3837
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3609
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->maybeForceBuilderInitialization()V

    .line 3610
    return-void
.end method

.method static synthetic access$4700()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 1

    .prologue
    .line 3603
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 1

    .prologue
    .line 3615
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureRecipientIdIsMutable()V
    .registers 3

    .prologue
    .line 3783
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 3784
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3785
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3787
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 3613
    return-void
.end method


# virtual methods
.method public addAllRecipientId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 3819
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->ensureRecipientIdIsMutable()V

    .line 3820
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3822
    return-object p0
.end method

.method public addRecipientId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3809
    if-nez p1, :cond_8

    .line 3810
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3812
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->ensureRecipientIdIsMutable()V

    .line 3813
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3815
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 3

    .prologue
    .line 3638
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    .line 3639
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3640
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3642
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 6

    .prologue
    .line 3656
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;-><init>(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 3657
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3658
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3659
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3660
    or-int/lit8 v2, v2, 0x1

    .line 3662
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->senderId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$4902(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 3664
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3666
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3668
    :cond_2b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5002(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3669
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 3670
    or-int/lit8 v2, v2, 0x2

    .line 3672
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5102(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3673
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5202(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;I)I

    .line 3674
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 2

    .prologue
    .line 3619
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 3620
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3621
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3622
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3623
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3624
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3625
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3626
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 2

    .prologue
    .line 3873
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3875
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3876
    return-object p0
.end method

.method public clearRecipientId()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 2

    .prologue
    .line 3825
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3826
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3828
    return-object p0
.end method

.method public clearSenderId()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 2

    .prologue
    .line 3769
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3770
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getSenderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3772
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3

    .prologue
    .line 3630
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;
    .registers 2

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3603
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
    .registers 2

    .prologue
    .line 3634
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3796
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientIdCount()I
    .registers 2

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getRecipientIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3790
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSenderId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3750
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3751
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3752
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3753
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3756
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasClientVersion()Z
    .registers 3

    .prologue
    .line 3839
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

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

.method public hasSenderId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3747
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 3699
    const/4 v0, 0x1

    return v0
.end method

.method public mergeClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3861
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->getDefaultInstance()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3863
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    invoke-static {v0}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3869
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3870
    return-object p0

    .line 3866
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    goto :goto_1f
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3603
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3603
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3603
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3707
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3708
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 3713
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3715
    :sswitch_d
    return-object p0

    .line 3720
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3721
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    goto :goto_0

    .line 3725
    :sswitch_1b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->ensureRecipientIdIsMutable()V

    .line 3726
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 3730
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/webapps/Version$ClientVersion;->newBuilder()Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    move-result-object v0

    .line 3731
    .local v0, subBuilder:Lcom/google/wireless/webapps/Version$ClientVersion$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->hasClientVersion()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3732
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->mergeFrom(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/webapps/Version$ClientVersion$Builder;

    .line 3734
    :cond_39
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3735
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->buildPartial()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    goto :goto_0

    .line 3708
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3678
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3695
    :cond_6
    :goto_6
    return-object p0

    .line 3679
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->hasSenderId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3680
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getSenderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    .line 3682
    :cond_14
    #getter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5000(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3683
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 3684
    #getter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5000(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    .line 3685
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3692
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3693
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->getClientVersion()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->mergeClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;

    goto :goto_6

    .line 3687
    :cond_40
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->ensureRecipientIdIsMutable()V

    .line 3688
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->recipientId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;->access$5000(Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_32
.end method

.method public setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion$Builder;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3855
    invoke-virtual {p1}, Lcom/google/wireless/webapps/Version$ClientVersion$Builder;->build()Lcom/google/wireless/webapps/Version$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3857
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3858
    return-object p0
.end method

.method public setClientVersion(Lcom/google/wireless/webapps/Version$ClientVersion;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3845
    if-nez p1, :cond_8

    .line 3846
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3848
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->clientVersion_:Lcom/google/wireless/webapps/Version$ClientVersion;

    .line 3850
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3851
    return-object p0
.end method

.method public setRecipientId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3800
    if-nez p2, :cond_8

    .line 3801
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3803
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->ensureRecipientIdIsMutable()V

    .line 3804
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->recipientId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3806
    return-object p0
.end method

.method public setSenderId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3760
    if-nez p1, :cond_8

    .line 3761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3763
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->bitField0_:I

    .line 3764
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo$Builder;->senderId_:Ljava/lang/Object;

    .line 3766
    return-object p0
.end method
