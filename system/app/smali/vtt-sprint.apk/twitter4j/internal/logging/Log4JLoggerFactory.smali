.class final Ltwitter4j/internal/logging/Log4JLoggerFactory;
.super Ltwitter4j/internal/logging/LoggerFactory;
.source "Log4JLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ltwitter4j/internal/logging/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;
    .registers 4
    .parameter "clazz"

    .prologue
    .line 30
    new-instance v0, Ltwitter4j/internal/logging/Log4JLogger;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/internal/logging/Log4JLogger;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method