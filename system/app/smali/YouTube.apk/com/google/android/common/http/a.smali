.class final Lcom/google/android/common/http/a;
.super Lcom/google/android/common/http/b;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field final synthetic a:Lcom/google/android/common/http/GoogleHttpClient;

.field private c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/common/http/a;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/LayeredSocketFactory;B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/common/http/a;->a:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0, p1, p2}, Lcom/google/android/common/http/b;-><init>(Lcom/google/android/common/http/GoogleHttpClient;Lorg/apache/http/conn/scheme/SocketFactory;)V

    iput-object p2, p0, Lcom/google/android/common/http/a;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/common/http/a;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
