.class public Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchMutateTrackRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mMutateTrackRequests:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mutations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->mMutateTrackRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addRequest(Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest$MutateTrackRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->mMutateTrackRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public serializeAsJson()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 52
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 55
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 57
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 57
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 59
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 60
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize batched tracks as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/BatchMutateTrackRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize batched tracks for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
