.class final Lcom/google/android/youtube/core/converter/http/ej;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 511
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 512
    sget-object v1, Lcom/google/android/youtube/core/model/Video$Privacy;->PRIVATE:Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->privacy(Lcom/google/android/youtube/core/model/Video$Privacy;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 513
    return-void
.end method
