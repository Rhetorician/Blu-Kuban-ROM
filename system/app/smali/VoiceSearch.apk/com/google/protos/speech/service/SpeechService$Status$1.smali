.class final Lcom/google/protos/speech/service/SpeechService$Status$1;
.super Ljava/lang/Object;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService$Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/google/protos/speech/service/SpeechService$Status;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .registers 3
    .parameter "x0"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/google/protos/speech/service/SpeechService$Status$1;->findValueByNumber(I)Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/google/protos/speech/service/SpeechService$Status;
    .registers 3
    .parameter "number"

    .prologue
    .line 192
    invoke-static {p1}, Lcom/google/protos/speech/service/SpeechService$Status;->valueOf(I)Lcom/google/protos/speech/service/SpeechService$Status;

    move-result-object v0

    return-object v0
.end method
