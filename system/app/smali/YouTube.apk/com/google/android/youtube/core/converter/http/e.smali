.class final Lcom/google/android/youtube/core/converter/http/e;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/c;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/c;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/e;->a:Lcom/google/android/youtube/core/converter/http/c;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Branding$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/x;->poll()Ljava/lang/Object;

    .line 50
    return-void
.end method
