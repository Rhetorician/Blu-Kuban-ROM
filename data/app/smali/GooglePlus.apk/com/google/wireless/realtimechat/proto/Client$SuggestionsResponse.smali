.class public final Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SuggestionsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestError_:Ljava/lang/Object;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private suggestion_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41276
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    .line 41277
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->initFields()V

    .line 41278
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 40774
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 40856
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedIsInitialized:B

    .line 40879
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedSerializedSize:I

    .line 40775
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40769
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 40776
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 40856
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedIsInitialized:B

    .line 40879
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedSerializedSize:I

    .line 40776
    return-void
.end method

.method static synthetic access$56702(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40769
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$56802(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40769
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$56900(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40769
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$56902(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40769
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$57002(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40769
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 1

    .prologue
    .line 40780
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method private getRequestErrorBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 40819
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    .line 40820
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 40821
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 40823
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    .line 40826
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
    .line 40852
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 40853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    .line 40854
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    .line 40855
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 1

    .prologue
    .line 40975
    #calls: Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->access$56500()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 40978
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40769
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    .registers 2

    .prologue
    .line 40784
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    return-object v0
.end method

.method public getRequestError()Ljava/lang/String;
    .registers 5

    .prologue
    .line 40805
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    .line 40806
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 40807
    check-cast v1, Ljava/lang/String;

    .line 40815
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 40809
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 40811
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 40812
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 40813
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->requestError_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 40815
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40881
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedSerializedSize:I

    .line 40882
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_9

    move v2, v1

    .line 40898
    .end local v1           #size:I
    .local v2, size:I
    :goto_8
    return v2

    .line 40884
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_9
    const/4 v1, 0x0

    .line 40885
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1b

    .line 40886
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 40889
    :cond_1b
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2a

    .line 40890
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 40893
    :cond_2a
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2b
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_44

    .line 40894
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 40893
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 40897
    :cond_44
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 40898
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_8
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 40795
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getSuggestion(I)Lcom/google/wireless/realtimechat/proto/Client$Suggestion;
    .registers 3
    .parameter "index"

    .prologue
    .line 40844
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$Suggestion;

    return-object v0
.end method

.method public getSuggestionCount()I
    .registers 2

    .prologue
    .line 40841
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSuggestionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40834
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public getSuggestionOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 40848
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;

    return-object v0
.end method

.method public getSuggestionOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$SuggestionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40838
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    return-object v0
.end method

.method public hasRequestError()Z
    .registers 3

    .prologue
    .line 40802
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 40792
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

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

    .line 40858
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedIsInitialized:B

    .line 40859
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 40862
    :goto_8
    return v1

    .line 40859
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 40861
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40769
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 40976
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40769
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;
    .registers 2

    .prologue
    .line 40980
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->newBuilder(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse$Builder;

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
    .line 40905
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

    .line 40867
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getSerializedSize()I

    .line 40868
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_14

    .line 40869
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 40871
    :cond_14
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_21

    .line 40872
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->getRequestErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 40874
    :cond_21
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 40875
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;->suggestion_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 40874
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 40877
    :cond_39
    return-void
.end method
