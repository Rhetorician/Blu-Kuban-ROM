.class public Lorg/apache/commons/httpclient/HttpRecoverableException;
.super Lorg/apache/commons/httpclient/HttpException;
.source "HttpRecoverableException.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/commons/httpclient/HttpException;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/HttpException;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method