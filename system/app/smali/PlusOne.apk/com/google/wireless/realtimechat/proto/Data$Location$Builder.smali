.class public final Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$Location;",
        "Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private accuracy_:D

.field private bitField0_:I

.field private latitude_:D

.field private longitude_:D

.field private name_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1990
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 1790
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->maybeForceBuilderInitialization()V

    .line 1791
    return-void
.end method

.method static synthetic access$1900()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 1784
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 1

    .prologue
    .line 1796
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1794
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 3

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    .line 1822
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1823
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1825
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 6

    .prologue
    .line 1839
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Location;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 1840
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$Location;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1841
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1842
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1843
    or-int/lit8 v2, v2, 0x1

    .line 1845
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Location;->latitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Location;->access$2102(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D

    .line 1846
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1847
    or-int/lit8 v2, v2, 0x2

    .line 1849
    :cond_1c
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Location;->longitude_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Location;->access$2202(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D

    .line 1850
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1851
    or-int/lit8 v2, v2, 0x4

    .line 1853
    :cond_28
    iget-wide v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Location;->accuracy_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/realtimechat/proto/Data$Location;->access$2302(Lcom/google/wireless/realtimechat/proto/Data$Location;D)D

    .line 1854
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1855
    or-int/lit8 v2, v2, 0x8

    .line 1857
    :cond_35
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Location;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$Location;->access$2402(Lcom/google/wireless/realtimechat/proto/Data$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$Location;->access$2502(Lcom/google/wireless/realtimechat/proto/Data$Location;I)I

    .line 1859
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 1800
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1801
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    .line 1802
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1803
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    .line 1804
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1805
    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    .line 1806
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1807
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 1808
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1809
    return-object p0
.end method

.method public clearAccuracy()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 1983
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1984
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    .line 1986
    return-object p0
.end method

.method public clearLatitude()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 1941
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1942
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    .line 1944
    return-object p0
.end method

.method public clearLongitude()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 1962
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1963
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    .line 1965
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 2

    .prologue
    .line 2014
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 2015
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 2017
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 3

    .prologue
    .line 1813
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

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
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccuracy()D
    .registers 3

    .prologue
    .line 1974
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1784
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 1817
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 1932
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 1953
    iget-wide v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1995
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 1996
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1997
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1998
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 2001
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

.method public hasAccuracy()Z
    .registers 3

    .prologue
    .line 1971
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasLatitude()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1929
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLongitude()Z
    .registers 3

    .prologue
    .line 1950
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 1992
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

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
    .line 1784
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

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
    .line 1784
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1888
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1889
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 1894
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1896
    :sswitch_d
    return-object p0

    .line 1901
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1902
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    goto :goto_0

    .line 1906
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1907
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    goto :goto_0

    .line 1911
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    goto :goto_0

    .line 1916
    :sswitch_35
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1917
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    goto :goto_0

    .line 1889
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
        0x11 -> :sswitch_1b
        0x19 -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1863
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1876
    :cond_6
    :goto_6
    return-object p0

    .line 1864
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1865
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->setLatitude(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 1867
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1868
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->setLongitude(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 1870
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1871
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getAccuracy()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->setAccuracy(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 1873
    :cond_2e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->hasName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1874
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    goto :goto_6
.end method

.method public setAccuracy(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1977
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1978
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->accuracy_:D

    .line 1980
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1935
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1936
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->latitude_:D

    .line 1938
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1956
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 1957
    iput-wide p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->longitude_:D

    .line 1959
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2005
    if-nez p1, :cond_8

    .line 2006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2008
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->bitField0_:I

    .line 2009
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->name_:Ljava/lang/Object;

    .line 2011
    return-object p0
.end method