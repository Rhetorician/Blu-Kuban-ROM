.class public final Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PersonSuggestion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private confidenceScore_:F

.field private focusObfuscatedId_:Ljava/lang/Object;

.field private gaiaId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22001
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    .line 22002
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->initFields()V

    .line 22003
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 21594
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 21665
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedIsInitialized:B

    .line 21688
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedSerializedSize:I

    .line 21595
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21589
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 21596
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21665
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedIsInitialized:B

    .line 21688
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedSerializedSize:I

    .line 21596
    return-void
.end method

.method static synthetic access$29102(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21589
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J

    return-wide p1
.end method

.method static synthetic access$29202(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21589
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$29302(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21589
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F

    return p1
.end method

.method static synthetic access$29402(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21589
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 1

    .prologue
    .line 21600
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method private getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 21639
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21640
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 21641
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 21643
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21646
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
    .line 21661
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J

    .line 21662
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21663
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F

    .line 21664
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 1

    .prologue
    .line 21784
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->access$28900()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 21787
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidenceScore()F
    .registers 2

    .prologue
    .line 21657
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 21589
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
    .registers 2

    .prologue
    .line 21604
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;

    return-object v0
.end method

.method public getFocusObfuscatedId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 21625
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    .line 21626
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 21627
    check-cast v1, Ljava/lang/String;

    .line 21635
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 21629
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 21631
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 21632
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 21633
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->focusObfuscatedId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 21635
    goto :goto_8
.end method

.method public getGaiaId()J
    .registers 3

    .prologue
    .line 21615
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 21690
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedSerializedSize:I

    .line 21691
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 21707
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 21693
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 21694
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_17

    .line 21695
    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21698
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    .line 21699
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 21702
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_35

    .line 21703
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21706
    :cond_35
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedSerializedSize:I

    move v1, v0

    .line 21707
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasConfidenceScore()Z
    .registers 3

    .prologue
    .line 21654
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

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

.method public hasFocusObfuscatedId()Z
    .registers 3

    .prologue
    .line 21622
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

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

.method public hasGaiaId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21612
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

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

    .line 21667
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedIsInitialized:B

    .line 21668
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 21671
    :goto_8
    return v1

    .line 21668
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 21670
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21589
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 2

    .prologue
    .line 21785
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 21589
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;
    .registers 2

    .prologue
    .line 21789
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion$Builder;

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
    .line 21714
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

    .line 21676
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getSerializedSize()I

    .line 21677
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_10

    .line 21678
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->gaiaId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21680
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    .line 21681
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->confidenceScore_:F

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 21683
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_2a

    .line 21684
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;->getFocusObfuscatedIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 21686
    :cond_2a
    return-void
.end method
