.class public Lorg/apache/commons/httpclient/auth/MalformedChallengeException;
.super Lorg/apache/commons/httpclient/ProtocolException;
.source "MalformedChallengeException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ProtocolException;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method