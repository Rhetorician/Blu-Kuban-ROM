.class public final Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "LocationDescriptorProto.java"

# interfaces
.implements Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/location/unified/LocationDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationDescriptor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;


# instance fields
.field private bitField0_:I

.field private confidence_:I

.field private featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

.field private historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private language_:Ljava/lang/Object;

.field private latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

.field private loc_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

.field private provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

.field private radius_:F

.field private role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2187
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$1;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$1;-><init>()V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->PARSER:Lcom/google/protobuf/Parser;

    .line 3190
    new-instance v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Z)V

    sput-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    .line 3191
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    invoke-direct {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->initFields()V

    .line 3192
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 2049
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2394
    iput-byte v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2050
    invoke-direct {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->initFields()V

    .line 2051
    const/4 v2, 0x0

    .line 2053
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 2054
    .local v0, done:Z
    :cond_d
    :goto_d
    if-nez v0, :cond_16a

    .line 2055
    :try_start_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 2056
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_16e

    .line 2061
    invoke-virtual {p0, p1, p2, v5}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2063
    const/4 v0, 0x1

    goto :goto_d

    .line 2058
    :sswitch_1e
    const/4 v0, 0x1

    .line 2059
    goto :goto_d

    .line 2068
    :sswitch_20
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2069
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v6

    .line 2070
    .local v6, value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    if-eqz v6, :cond_d

    .line 2071
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2072
    iput-object v6, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    :try_end_32
    .catchall {:try_start_f .. :try_end_32} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_f .. :try_end_32} :catch_33
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_51

    goto :goto_d

    .line 2178
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    :catch_33
    move-exception v1

    .line 2179
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_34
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_39

    .line 2184
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_39
    move-exception v7

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->makeExtensionsImmutable()V

    throw v7

    .line 2077
    .restart local v5       #tag:I
    :sswitch_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2078
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v6

    .line 2079
    .local v6, value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    if-eqz v6, :cond_d

    .line 2080
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2081
    iput-object v6, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3e .. :try_end_50} :catch_33
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_50} :catch_51

    goto :goto_d

    .line 2180
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    :catch_51
    move-exception v1

    .line 2181
    .local v1, e:Ljava/io/IOException;
    :try_start_52
    new-instance v7, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v7

    throw v7
    :try_end_60
    .catchall {:try_start_52 .. :try_end_60} :catchall_39

    .line 2086
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_60
    :try_start_60
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2087
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    goto :goto_d

    .line 2091
    :sswitch_6d
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2092
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    goto :goto_d

    .line 2096
    :sswitch_7a
    const/4 v4, 0x0

    .line 2097
    .local v4, subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_89

    .line 2098
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v4

    .line 2100
    :cond_89
    sget-object v7, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2101
    if-eqz v4, :cond_a0

    .line 2102
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v4, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 2103
    invoke-virtual {v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2105
    :cond_a0
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_d

    .line 2109
    .end local v4           #subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    :sswitch_a8
    const/4 v4, 0x0

    .line 2110
    .restart local v4       #subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v7, v7, 0x20

    const/16 v8, 0x20

    if-ne v7, v8, :cond_b7

    .line 2111
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    move-result-object v4

    .line 2113
    :cond_b7
    sget-object v7, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2114
    if-eqz v4, :cond_ce

    .line 2115
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {v4, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;

    .line 2116
    invoke-virtual {v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2118
    :cond_ce
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_d

    .line 2122
    .end local v4           #subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng$Builder;
    :sswitch_d6
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit8 v7, v7, 0x40

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v7

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    goto/16 :goto_d

    .line 2127
    :sswitch_e4
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x80

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v7

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    goto/16 :goto_d

    .line 2132
    :sswitch_f2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2133
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    move-result-object v6

    .line 2134
    .local v6, value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    if-eqz v6, :cond_d

    .line 2135
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x400

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2136
    iput-object v6, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    goto/16 :goto_d

    .line 2141
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    :sswitch_106
    const/4 v4, 0x0

    .line 2142
    .local v4, subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v7, v7, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_115

    .line 2143
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    move-result-object v4

    .line 2145
    :cond_115
    sget-object v7, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2146
    if-eqz v4, :cond_12c

    .line 2147
    iget-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {v4, v7}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;

    .line 2148
    invoke-virtual {v4}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;->buildPartial()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2150
    :cond_12c
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x100

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    goto/16 :goto_d

    .line 2154
    .end local v4           #subBuilder:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto$Builder;
    :sswitch_134
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x200

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    goto/16 :goto_d

    .line 2159
    :sswitch_142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2160
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    move-result-object v6

    .line 2161
    .local v6, value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    if-eqz v6, :cond_d

    .line 2162
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x800

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2163
    iput-object v6, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    goto/16 :goto_d

    .line 2168
    .end local v3           #rawValue:I
    .end local v6           #value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    :sswitch_156
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 2169
    .restart local v3       #rawValue:I
    invoke-static {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->valueOf(I)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    move-result-object v6

    .line 2170
    .local v6, value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    if-eqz v6, :cond_d

    .line 2171
    iget v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    or-int/lit16 v7, v7, 0x1000

    iput v7, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    .line 2172
    iput-object v6, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    :try_end_168
    .catchall {:try_start_60 .. :try_end_168} :catchall_39
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_60 .. :try_end_168} :catch_33
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_168} :catch_51

    goto/16 :goto_d

    .line 2184
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v6           #value:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    :cond_16a
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->makeExtensionsImmutable()V

    .line 2186
    return-void

    .line 2056
    :sswitch_data_16e
    .sparse-switch
        0x0 -> :sswitch_1e
        0x8 -> :sswitch_20
        0x10 -> :sswitch_3e
        0x18 -> :sswitch_60
        0x22 -> :sswitch_6d
        0x2a -> :sswitch_7a
        0x32 -> :sswitch_a8
        0x3d -> :sswitch_d6
        0x40 -> :sswitch_e4
        0x48 -> :sswitch_f2
        0x52 -> :sswitch_106
        0x5a -> :sswitch_134
        0x60 -> :sswitch_142
        0x68 -> :sswitch_156
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2027
    invoke-direct {p0, p1, p2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2032
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2394
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2034
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/location/unified/LocationDescriptorProto$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    invoke-direct {p0, p1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2035
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2394
    iput-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2447
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2035
    return-void
.end method

.method static synthetic access$2402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-wide p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;)Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return p1
.end method

.method static synthetic access$3102(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return p1
.end method

.method static synthetic access$3202(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;)Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2027
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput-object p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2027
    iput p1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .registers 1

    .prologue
    .line 2039
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    .line 2380
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2381
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2382
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    .line 2383
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2384
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2385
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    .line 2386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    .line 2387
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    .line 2388
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;->getDefaultInstance()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    .line 2389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2390
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->UNREMARKABLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    .line 2391
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->UNKNOWN_ROLE:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    .line 2392
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->UNKNOWN_PRODUCER:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    .line 2393
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .registers 1

    .prologue
    .line 2568
    #calls: Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->create()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->access$2200()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2571
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;->mergeFrom(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfidence()I
    .registers 2

    .prologue
    .line 2303
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;
    .registers 2

    .prologue
    .line 2043
    sget-object v0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->defaultInstance:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;

    return-object v0
.end method

.method public getFeatureId()Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;
    .registers 2

    .prologue
    .line 2313
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    return-object v0
.end method

.method public getHistoricalProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .registers 2

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getHistoricalRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .registers 2

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2338
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2339
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2340
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2342
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->language_:Ljava/lang/Object;

    .line 2345
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

.method public getLatlng()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 2

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLatlngSpan()Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;
    .registers 2

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    return-object v0
.end method

.method public getLocBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2255
    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2256
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2257
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2259
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->loc_:Ljava/lang/Object;

    .line 2262
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

.method public getProducer()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;
    .registers 2

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    return-object v0
.end method

.method public getProvenance()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;
    .registers 2

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    return-object v0
.end method

.method public getRadius()F
    .registers 2

    .prologue
    .line 2293
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    return v0
.end method

.method public getRole()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;
    .registers 2

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2449
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    .line 2450
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 2506
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 2452
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 2453
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1e

    .line 2454
    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2457
    :cond_1e
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2f

    .line 2458
    iget-object v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v2}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2461
    :cond_2f
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3d

    .line 2462
    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2465
    :cond_3d
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4c

    .line 2466
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLocBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2469
    :cond_4c
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5c

    .line 2470
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2473
    :cond_5c
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6c

    .line 2474
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2477
    :cond_6c
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7c

    .line 2478
    const/4 v2, 0x7

    iget v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 2481
    :cond_7c
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8b

    .line 2482
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2485
    :cond_8b
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a0

    .line 2486
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-virtual {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2489
    :cond_a0
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_b1

    .line 2490
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2493
    :cond_b1
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_c4

    .line 2494
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2497
    :cond_c4
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_d9

    .line 2498
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2501
    :cond_d9
    iget v2, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v2, v2, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_ee

    .line 2502
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v3}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2505
    :cond_ee
    iput v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedSerializedSize:I

    move v1, v0

    .line 2506
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_b
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 2230
    iget-wide v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    return-wide v0
.end method

.method public hasConfidence()Z
    .registers 3

    .prologue
    .line 2300
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasFeatureId()Z
    .registers 3

    .prologue
    .line 2310
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHistoricalProducer()Z
    .registers 3

    .prologue
    .line 2373
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHistoricalRole()Z
    .registers 3

    .prologue
    .line 2363
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLanguage()Z
    .registers 3

    .prologue
    .line 2320
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatlng()Z
    .registers 3

    .prologue
    .line 2270
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLatlngSpan()Z
    .registers 3

    .prologue
    .line 2280
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasLoc()Z
    .registers 3

    .prologue
    .line 2237
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

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

.method public hasProducer()Z
    .registers 3

    .prologue
    .line 2217
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

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

.method public hasProvenance()Z
    .registers 3

    .prologue
    .line 2353
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRadius()Z
    .registers 3

    .prologue
    .line 2290
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasRole()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2207
    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTimestamp()Z
    .registers 3

    .prologue
    .line 2227
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 2396
    iget-byte v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    .line 2397
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2400
    :goto_8
    return v1

    .line 2397
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2399
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .registers 2

    .prologue
    .line 2569
    invoke-static {}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2027
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;
    .registers 2

    .prologue
    .line 2573
    invoke-static {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->newBuilder(Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;)Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor$Builder;

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
    .line 2512
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2405
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getSerializedSize()I

    .line 2406
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_17

    .line 2407
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->role_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2409
    :cond_17
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_26

    .line 2410
    iget-object v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->producer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2412
    :cond_26
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_32

    .line 2413
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->timestamp_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2415
    :cond_32
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3f

    .line 2416
    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLocBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2418
    :cond_3f
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4d

    .line 2419
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlng_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2421
    :cond_4d
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5b

    .line 2422
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->latlngSpan_:Lcom/google/protos/location/unified/LocationDescriptorProto$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2424
    :cond_5b
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_69

    .line 2425
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->radius_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2427
    :cond_69
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_76

    .line 2428
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->confidence_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2430
    :cond_76
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_89

    .line 2431
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->provenance_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProvenance;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2433
    :cond_89
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_98

    .line 2434
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->featureId_:Lcom/google/protos/location/unified/LocationDescriptorProto$FeatureIdProto;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2436
    :cond_98
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a9

    .line 2437
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->getLanguageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2439
    :cond_a9
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_bc

    .line 2440
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalRole_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationRole;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2442
    :cond_bc
    iget v0, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_cf

    .line 2443
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationDescriptor;->historicalProducer_:Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;

    invoke-virtual {v1}, Lcom/google/protos/location/unified/LocationDescriptorProto$LocationProducer;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2445
    :cond_cf
    return-void
.end method
