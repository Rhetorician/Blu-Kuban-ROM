.class final Lcom/google/android/youtube/core/converter/http/ec;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/dv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/dv;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ec;->a:Lcom/google/android/youtube/core/converter/http/dv;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/google/android/youtube/core/model/o;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/o;

    .line 52
    :try_start_8
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->d(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/o;->a(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/o;
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_13} :catch_14

    .line 56
    :goto_13
    return-void

    .line 54
    :catch_14
    move-exception v0

    const-string v0, "Badly formed impression uri - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_13
.end method
