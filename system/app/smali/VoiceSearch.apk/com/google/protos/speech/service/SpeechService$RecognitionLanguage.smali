.class public final Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protos/speech/service/SpeechService$RecognitionLanguageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionLanguage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;


# instance fields
.field private bitField0_:I

.field private languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

.field private localizedName_:Ljava/lang/Object;

.field private matchingLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$LanguageTag;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10634
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$1;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$1;-><init>()V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->PARSER:Lcom/google/protobuf/Parser;

    .line 11249
    new-instance v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Z)V

    sput-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    .line 11250
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    invoke-direct {v0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->initFields()V

    .line 11251
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x4

    .line 10571
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10753
    iput-byte v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10572
    invoke-direct {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->initFields()V

    .line 10573
    const/4 v2, 0x0

    .line 10575
    .local v2, mutable_bitField0_:I
    const/4 v0, 0x0

    .line 10576
    .local v0, done:Z
    :cond_e
    :goto_e
    if-nez v0, :cond_a8

    .line 10577
    :try_start_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 10578
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_b8

    .line 10583
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    if-nez v5, :cond_e

    .line 10585
    const/4 v0, 0x1

    goto :goto_e

    .line 10580
    :sswitch_1f
    const/4 v0, 0x1

    .line 10581
    goto :goto_e

    .line 10590
    :sswitch_21
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    .line 10591
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_2d} :catch_2e
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_2d} :catch_71

    goto :goto_e

    .line 10622
    .end local v4           #tag:I
    :catch_2e
    move-exception v1

    .line 10623
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_2f
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 10628
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_34
    move-exception v5

    and-int/lit8 v6, v2, 0x4

    if-ne v6, v7, :cond_41

    .line 10629
    iget-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10631
    :cond_41
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->makeExtensionsImmutable()V

    throw v5

    .line 10595
    .restart local v4       #tag:I
    :sswitch_45
    const/4 v3, 0x0

    .line 10596
    .local v3, subBuilder:Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    :try_start_46
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_53

    .line 10597
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {v5}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->toBuilder()Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    move-result-object v3

    .line 10599
    :cond_53
    sget-object v5, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10600
    if-eqz v3, :cond_6a

    .line 10601
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {v3, v5}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;

    .line 10602
    invoke-virtual {v3}, Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;->buildPartial()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10604
    :cond_6a
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I
    :try_end_70
    .catchall {:try_start_46 .. :try_end_70} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_46 .. :try_end_70} :catch_2e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_70} :catch_71

    goto :goto_e

    .line 10624
    .end local v3           #subBuilder:Lcom/google/protos/speech/service/SpeechService$LanguageTag$Builder;
    .end local v4           #tag:I
    :catch_71
    move-exception v1

    .line 10625
    .local v1, e:Ljava/io/IOException;
    :try_start_72
    new-instance v5, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v5

    throw v5
    :try_end_80
    .catchall {:try_start_72 .. :try_end_80} :catchall_34

    .line 10608
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_80
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v7, :cond_8d

    .line 10609
    :try_start_84
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10610
    or-int/lit8 v2, v2, 0x4

    .line 10612
    :cond_8d
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    sget-object v6, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 10616
    :sswitch_9a
    iget v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    .line 10617
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;
    :try_end_a6
    .catchall {:try_start_84 .. :try_end_a6} :catchall_34
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_84 .. :try_end_a6} :catch_2e
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_a6} :catch_71

    goto/16 :goto_e

    .line 10628
    .end local v4           #tag:I
    :cond_a8
    and-int/lit8 v5, v2, 0x4

    if-ne v5, v7, :cond_b4

    .line 10629
    iget-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10631
    :cond_b4
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->makeExtensionsImmutable()V

    .line 10633
    return-void

    .line 10578
    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_1f
        0xa -> :sswitch_21
        0x12 -> :sswitch_45
        0x1a -> :sswitch_80
        0x22 -> :sswitch_9a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protos/speech/service/SpeechService$1;)V
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
    .line 10549
    invoke-direct {p0, p1, p2}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10554
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 10753
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10556
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/speech/service/SpeechService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    invoke-direct {p0, p1}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 10557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10753
    iput-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10787
    iput v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10557
    return-void
.end method

.method static synthetic access$12600(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Lcom/google/protos/speech/service/SpeechService$LanguageTag;)Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object p1
.end method

.method static synthetic access$12800(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$12802(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12900(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10549
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    iput-object p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13002(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10549
    iput p1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .registers 1

    .prologue
    .line 10561
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 10748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10749
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$LanguageTag;->getDefaultInstance()Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    .line 10750
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    .line 10751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10752
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .registers 1

    .prologue
    .line 10872
    #calls: Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->create()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->access$12400()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 10875
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;->mergeFrom(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;
    .registers 2

    .prologue
    .line 10565
    sget-object v0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->defaultInstance:Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;

    return-object v0
.end method

.method public getLanguageTag()Lcom/google/protos/speech/service/SpeechService$LanguageTag;
    .registers 2

    .prologue
    .line 10690
    iget-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    return-object v0
.end method

.method public getLocalizedNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10736
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10737
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10738
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10740
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->localizedName_:Ljava/lang/Object;

    .line 10743
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

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 10672
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10673
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 10674
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10676
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->name_:Ljava/lang/Object;

    .line 10679
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

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10789
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    .line 10790
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 10810
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 10792
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 10793
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1a

    .line 10794
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10797
    :cond_1a
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_27

    .line 10798
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10801
    :cond_27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_28
    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_41

    .line 10802
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10801
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 10805
    :cond_41
    iget v3, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 10806
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLocalizedNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 10809
    :cond_50
    iput v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedSerializedSize:I

    move v2, v1

    .line 10810
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public hasLanguageTag()Z
    .registers 3

    .prologue
    .line 10687
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

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

.method public hasLocalizedName()Z
    .registers 3

    .prologue
    .line 10718
    iget v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 10654
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 10755
    iget-byte v0, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    .line 10756
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 10767
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 10756
    goto :goto_9

    .line 10758
    :cond_c
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasName()Z

    move-result v3

    if-nez v3, :cond_16

    .line 10759
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    move v1, v2

    .line 10760
    goto :goto_9

    .line 10762
    :cond_16
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->hasLanguageTag()Z

    move-result v3

    if-nez v3, :cond_20

    .line 10763
    iput-byte v2, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    move v1, v2

    .line 10764
    goto :goto_9

    .line 10766
    :cond_20
    iput-byte v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .registers 2

    .prologue
    .line 10873
    invoke-static {}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10549
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;
    .registers 2

    .prologue
    .line 10877
    invoke-static {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->newBuilder(Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;)Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage$Builder;

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
    .line 10816
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
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 10772
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getSerializedSize()I

    .line 10773
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_13

    .line 10774
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10776
    :cond_13
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1e

    .line 10777
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->languageTag_:Lcom/google/protos/speech/service/SpeechService$LanguageTag;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10779
    :cond_1e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1f
    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 10780
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->matchingLanguage_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 10779
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 10782
    :cond_36
    iget v1, p0, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 10783
    invoke-virtual {p0}, Lcom/google/protos/speech/service/SpeechService$RecognitionLanguage;->getLocalizedNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 10785
    :cond_43
    return-void
.end method
