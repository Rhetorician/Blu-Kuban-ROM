.class final enum Lcom/google/android/youtube/core/converter/http/HttpMethod$5;
.super Lcom/google/android/youtube/core/converter/http/HttpMethod;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/converter/http/HttpMethod;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/converter/http/HttpMethod$1;)V

    return-void
.end method


# virtual methods
.method public final createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/youtube/core/converter/http/bb;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/converter/http/bb;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
