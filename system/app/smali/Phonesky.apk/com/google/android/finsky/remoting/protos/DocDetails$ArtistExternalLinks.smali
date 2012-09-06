.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistExternalLinks"
.end annotation


# instance fields
.field private cachedSize:I

.field private googlePlusProfileUrl_:Ljava/lang/String;

.field private hasGooglePlusProfileUrl:Z

.field private hasYoutubeChannelUrl:Z

.field private websiteUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private youtubeChannelUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 2170
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    .line 2208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    .line 2225
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    .line 2265
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    .line 2170
    return-void
.end method


# virtual methods
.method public addWebsiteUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 3
    .parameter "value"

    .prologue
    .line 2191
    if-nez p1, :cond_8

    .line 2192
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2194
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    .line 2197
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2198
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 2268
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    if-gez v0, :cond_7

    .line 2270
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getSerializedSize()I

    .line 2272
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    return v0
.end method

.method public getGooglePlusProfileUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 2277
    const/4 v3, 0x0

    .line 2279
    .local v3, size:I
    const/4 v0, 0x0

    .line 2280
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2281
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_a

    .line 2284
    .end local v1           #element:Ljava/lang/String;
    :cond_1c
    add-int/2addr v3, v0

    .line 2285
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2287
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2288
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2291
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2292
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2295
    :cond_48
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    .line 2296
    return v3
.end method

.method public getWebsiteUrlCount()I
    .registers 2

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWebsiteUrlList()Ljava/util/List;
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
    .line 2177
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getYoutubeChannelUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGooglePlusProfileUrl()Z
    .registers 2

    .prologue
    .line 2210
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl:Z

    return v0
.end method

.method public hasYoutubeChannelUrl()Z
    .registers 2

    .prologue
    .line 2227
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2304
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2305
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 2309
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2310
    :sswitch_d
    return-object p0

    .line 2315
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->addWebsiteUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2319
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->setGooglePlusProfileUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2323
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->setYoutubeChannelUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2305
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2167
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v0

    return-object v0
.end method

.method public setGooglePlusProfileUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 3
    .parameter "value"

    .prologue
    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl:Z

    .line 2213
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    .line 2214
    return-object p0
.end method

.method public setYoutubeChannelUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .registers 3
    .parameter "value"

    .prologue
    .line 2229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl:Z

    .line 2230
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    .line 2231
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2255
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_8

    .line 2257
    .end local v0           #element:Ljava/lang/String;
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2258
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2260
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2261
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2263
    :cond_35
    return-void
.end method
