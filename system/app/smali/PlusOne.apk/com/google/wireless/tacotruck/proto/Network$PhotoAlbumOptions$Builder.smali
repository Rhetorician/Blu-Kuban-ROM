.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptionsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxPreviewCount_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46781
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 46782
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maybeForceBuilderInitialization()V

    .line 46783
    return-void
.end method

.method static synthetic access$65600()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 1

    .prologue
    .line 46776
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 1

    .prologue
    .line 46788
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 46786
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 3

    .prologue
    .line 46807
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    .line 46808
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 46809
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 46811
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 6

    .prologue
    .line 46825
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 46826
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    .line 46827
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 46828
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 46829
    or-int/lit8 v2, v2, 0x1

    .line 46831
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->maxPreviewCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->access$65802(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;I)I

    .line 46832
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->access$65902(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;I)I

    .line 46833
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 2

    .prologue
    .line 46792
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 46793
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    .line 46794
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    .line 46795
    return-object p0
.end method

.method public clearMaxPreviewCount()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 2

    .prologue
    .line 46891
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    .line 46892
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    .line 46894
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 3

    .prologue
    .line 46799
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

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
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 46776
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
    .registers 2

    .prologue
    .line 46803
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPreviewCount()I
    .registers 2

    .prologue
    .line 46882
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    return v0
.end method

.method public hasMaxPreviewCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 46879
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 46776
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

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
    .line 46776
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46853
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 46854
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 46859
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46861
    :sswitch_d
    return-object p0

    .line 46866
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    .line 46867
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    goto :goto_0

    .line 46854
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 46837
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 46841
    :cond_6
    :goto_6
    return-object p0

    .line 46838
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->hasMaxPreviewCount()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46839
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;->getMaxPreviewCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->setMaxPreviewCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;

    goto :goto_6
.end method

.method public setMaxPreviewCount(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 46885
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->bitField0_:I

    .line 46886
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions$Builder;->maxPreviewCount_:I

    .line 46888
    return-object p0
.end method