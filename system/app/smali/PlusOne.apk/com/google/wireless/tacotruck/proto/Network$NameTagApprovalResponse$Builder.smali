.class public final Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36702
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 36703
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->maybeForceBuilderInitialization()V

    .line 36704
    return-void
.end method

.method static synthetic access$50900(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36697
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$51000()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 1

    .prologue
    .line 36697
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 36735
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    .line 36736
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 36737
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 36740
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 1

    .prologue
    .line 36709
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 36707
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 3

    .prologue
    .line 36744
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 36745
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 1

    .prologue
    .line 36713
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 36714
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 3

    .prologue
    .line 36718
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

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
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 36697
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;
    .registers 2

    .prologue
    .line 36722
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    return-object v0
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
    .line 36697
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

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
    .line 36697
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36762
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 36763
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 36768
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36770
    :pswitch_d
    return-object p0

    .line 36763
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;)Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 36749
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$NameTagApprovalResponse;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 36750
    :cond_6
    return-object p0
.end method