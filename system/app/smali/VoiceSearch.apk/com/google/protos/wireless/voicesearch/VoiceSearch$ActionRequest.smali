.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ApplicationData;",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;


# instance fields
.field private bitField0_:I

.field private mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

.field private supportedAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;",
            ">;"
        }
    .end annotation
.end field

.field private websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 9664
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$1;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$1;-><init>()V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 10188
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Z)V

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    .line 10189
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->initFields()V

    .line 10197
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$ApplicationData;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$ApplicationData;

    move-result-object v0

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v1

    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x18

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->actionRequest:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 15
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    .line 9564
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9729
    iput-byte v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9565
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->initFields()V

    .line 9566
    const/4 v3, 0x0

    .line 9568
    .local v3, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 9569
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_11a

    .line 9570
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v7

    .line 9571
    .local v7, tag:I
    sparse-switch v7, :sswitch_data_12a

    .line 9576
    invoke-virtual {p0, p1, p2, v7}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_e

    .line 9578
    const/4 v0, 0x1

    goto :goto_e

    .line 9573
    :sswitch_1f
    const/4 v0, 0x1

    .line 9574
    goto :goto_e

    .line 9583
    :sswitch_21
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 9584
    .local v5, rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v8

    .line 9585
    .local v8, value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v8, :cond_e

    .line 9586
    and-int/lit8 v9, v3, 0x1

    if-eq v9, v11, :cond_38

    .line 9587
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9588
    or-int/lit8 v3, v3, 0x1

    .line 9590
    :cond_38
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_3d} :catch_80

    goto :goto_e

    .line 9652
    .end local v5           #rawValue:I
    .end local v7           #tag:I
    .end local v8           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :catch_3e
    move-exception v1

    .line 9653
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_3f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_44

    .line 9658
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_44
    move-exception v9

    and-int/lit8 v10, v3, 0x1

    if-ne v10, v11, :cond_51

    .line 9659
    iget-object v10, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9661
    :cond_51
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->makeExtensionsImmutable()V

    throw v9

    .line 9595
    .restart local v7       #tag:I
    :sswitch_55
    :try_start_55
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 9596
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v4

    .line 9597
    .local v4, oldLimit:I
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v9

    if-lez v9, :cond_8f

    .line 9598
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    .line 9599
    .restart local v5       #rawValue:I
    invoke-static {v5}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->valueOf(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    move-result-object v8

    .line 9600
    .restart local v8       #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    if-eqz v8, :cond_5d

    .line 9601
    and-int/lit8 v9, v3, 0x1

    if-eq v9, v11, :cond_7a

    .line 9602
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9603
    or-int/lit8 v3, v3, 0x1

    .line 9605
    :cond_7a
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_55 .. :try_end_7f} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_55 .. :try_end_7f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_7f} :catch_80

    goto :goto_5d

    .line 9654
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    .end local v5           #rawValue:I
    .end local v7           #tag:I
    .end local v8           #value:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;
    :catch_80
    move-exception v1

    .line 9655
    .local v1, e:Ljava/io/IOException;
    :try_start_81
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_44

    .line 9608
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #length:I
    .restart local v4       #oldLimit:I
    .restart local v7       #tag:I
    :cond_8f
    :try_start_8f
    invoke-virtual {p1, v4}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_e

    .line 9612
    .end local v2           #length:I
    .end local v4           #oldLimit:I
    :sswitch_94
    const/4 v6, 0x0

    .line 9613
    .local v6, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_a1

    .line 9614
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    move-result-object v6

    .line 9616
    :cond_a1
    sget-object v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9617
    if-eqz v6, :cond_b8

    .line 9618
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {v6, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;

    .line 9619
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9621
    :cond_b8
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    goto/16 :goto_e

    .line 9625
    .end local v6           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData$Builder;
    :sswitch_c0
    const/4 v6, 0x0

    .line 9626
    .local v6, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_ce

    .line 9627
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    move-result-object v6

    .line 9629
    :cond_ce
    sget-object v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9630
    if-eqz v6, :cond_e5

    .line 9631
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {v6, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;

    .line 9632
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9634
    :cond_e5
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    goto/16 :goto_e

    .line 9638
    .end local v6           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData$Builder;
    :sswitch_ed
    const/4 v6, 0x0

    .line 9639
    .local v6, subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_fb

    .line 9640
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    move-result-object v6

    .line 9642
    :cond_fb
    sget-object v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9643
    if-eqz v6, :cond_112

    .line 9644
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {v6, v9}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;

    .line 9645
    invoke-virtual {v6}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9647
    :cond_112
    iget v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I
    :try_end_118
    .catchall {:try_start_8f .. :try_end_118} :catchall_44
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_8f .. :try_end_118} :catch_3e
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_118} :catch_80

    goto/16 :goto_e

    .line 9658
    .end local v6           #subBuilder:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext$Builder;
    .end local v7           #tag:I
    :cond_11a
    and-int/lit8 v9, v3, 0x1

    if-ne v9, v11, :cond_126

    .line 9659
    iget-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9661
    :cond_126
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->makeExtensionsImmutable()V

    .line 9663
    return-void

    .line 9571
    :sswitch_data_12a
    .sparse-switch
        0x0 -> :sswitch_1f
        0x8 -> :sswitch_21
        0xa -> :sswitch_55
        0x322 -> :sswitch_94
        0x32a -> :sswitch_c0
        0x332 -> :sswitch_ed
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
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
    .line 9542
    invoke-direct {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 9547
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 9729
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9549
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    invoke-direct {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 9550
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9729
    iput-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9773
    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9550
    return-void
.end method

.method static synthetic access$11600(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 9542
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$11602(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11702(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    iput-object p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9542
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .registers 1

    .prologue
    .line 9554
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 9724
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    .line 9725
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    .line 9726
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    .line 9727
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    .line 9728
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .registers 1

    .prologue
    .line 9863
    #calls: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->access$11400()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 9866
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;
    .registers 2

    .prologue
    .line 9558
    sget-object v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->defaultInstance:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;

    return-object v0
.end method

.method public getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;
    .registers 2

    .prologue
    .line 9700
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    return-object v0
.end method

.method public getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;
    .registers 2

    .prologue
    .line 9720
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 9775
    iget v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    .line 9776
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 9801
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 9778
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 9780
    const/4 v0, 0x0

    .line 9781
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 9782
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v4}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 9781
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 9785
    :cond_26
    add-int/2addr v2, v0

    .line 9786
    iget-object v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 9788
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_40

    .line 9789
    const/16 v4, 0x64

    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9792
    :cond_40
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    .line 9793
    const/16 v4, 0x65

    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9796
    :cond_50
    iget v4, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_60

    .line 9797
    const/16 v4, 0x66

    iget-object v5, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 9800
    :cond_60
    iput v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedSerializedSize:I

    move v3, v2

    .line 9801
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_6
.end method

.method public getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;
    .registers 2

    .prologue
    .line 9710
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    return-object v0
.end method

.method public hasMapsRequestData()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9697
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMultislotActionContext()Z
    .registers 3

    .prologue
    .line 9717
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

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

.method public hasWebsearchRequestData()Z
    .registers 3

    .prologue
    .line 9707
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9731
    iget-byte v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    .line 9732
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 9753
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 9732
    goto :goto_9

    .line 9734
    :cond_d
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMapsRequestData()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 9735
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMapsRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 9736
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 9740
    :cond_20
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasWebsearchRequestData()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 9741
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getWebsearchRequestData()Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_33

    .line 9742
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 9746
    :cond_33
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->hasMultislotActionContext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 9747
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getMultislotActionContext()Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_46

    .line 9748
    iput-byte v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    goto :goto_a

    .line 9752
    :cond_46
    iput-byte v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->memoizedIsInitialized:B

    move v2, v1

    .line 9753
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .registers 2

    .prologue
    .line 9864
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9542
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;
    .registers 2

    .prologue
    .line 9868
    invoke-static {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->newBuilder(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest$Builder;

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
    .line 9807
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
    const/4 v2, 0x1

    .line 9758
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->getSerializedSize()I

    .line 9759
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 9760
    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->supportedAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;

    invoke-virtual {v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionInterpretation$Action;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9759
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 9762
    :cond_1f
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_2c

    .line 9763
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->mapsRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MapsRequestData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9765
    :cond_2c
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    .line 9766
    const/16 v1, 0x65

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->websearchRequestData_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$WebSearchRequestData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9768
    :cond_3a
    iget v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_48

    .line 9769
    const/16 v1, 0x66

    iget-object v2, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionRequest;->multislotActionContext_:Lcom/google/protos/wireless/voicesearch/VoiceSearch$MultislotActionContext;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 9771
    :cond_48
    return-void
.end method
