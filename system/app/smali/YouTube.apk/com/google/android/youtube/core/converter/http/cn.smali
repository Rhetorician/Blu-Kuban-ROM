.class final Lcom/google/android/youtube/core/converter/http/cn;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 86
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 87
    const-string v1, "scheme"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 89
    const-string v1, "term"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :try_start_20
    invoke-static {v1}, Lcom/google/android/youtube/core/model/Subscription$Type;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Subscription$Builder;->type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_27} :catch_28

    .line 97
    :cond_27
    :goto_27
    return-void

    .line 93
    :catch_28
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected subscription type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lcom/google/android/youtube/core/model/Subscription$Type;->UNKNOWN:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->type(Lcom/google/android/youtube/core/model/Subscription$Type;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    goto :goto_27
.end method
