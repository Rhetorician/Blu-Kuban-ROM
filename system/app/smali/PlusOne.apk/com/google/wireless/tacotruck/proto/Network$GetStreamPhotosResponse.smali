.class public final Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetStreamPhotosResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29218
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    .line 29219
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->initFields()V

    .line 29220
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 28857
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 28894
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedIsInitialized:B

    .line 28917
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedSerializedSize:I

    .line 28858
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28852
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 28859
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 28894
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedIsInitialized:B

    .line 28917
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedSerializedSize:I

    .line 28859
    return-void
.end method

.method static synthetic access$40400(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28852
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$40402(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28852
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 1

    .prologue
    .line 28863
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 28892
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    .line 28893
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    .registers 1

    .prologue
    .line 29005
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->access$40200()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 28941
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;->access$40100(Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 28852
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;
    .registers 2

    .prologue
    .line 28867
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;

    return-object v0
.end method

.method public getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    .registers 3
    .parameter "index"

    .prologue
    .line 28884
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    return-object v0
.end method

.method public getPhotoCount()I
    .registers 2

    .prologue
    .line 28881
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPhotoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28874
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getPhotoOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 28888
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;

    return-object v0
.end method

.method public getPhotoOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28878
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 28919
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedSerializedSize:I

    .line 28920
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 28928
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 28922
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 28923
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 28924
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 28923
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 28927
    :cond_22
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 28928
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28896
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedIsInitialized:B

    .line 28897
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 28906
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 28897
    goto :goto_9

    .line 28899
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getPhotoCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 28900
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 28901
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedIsInitialized:B

    move v2, v3

    .line 28902
    goto :goto_9

    .line 28899
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 28905
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 28935
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
    .line 28911
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->getSerializedSize()I

    .line 28912
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 28913
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosResponse;->photo_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 28912
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 28915
    :cond_1b
    return-void
.end method