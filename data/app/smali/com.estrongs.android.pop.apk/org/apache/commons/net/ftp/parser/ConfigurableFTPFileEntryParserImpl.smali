.class public abstract Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;

# interfaces
.implements Lorg/apache/commons/net/ftp/Configurable;


# instance fields
.field private final timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    return-void
.end method


# virtual methods
.method public configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    instance-of v0, v0, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;

    move-result-object v1

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDefaultDateFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {v1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getRecentDateFormatStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setRecentDateFormatStr(Ljava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, v1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_2d
.end method

.method protected abstract getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
.end method

.method public parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method
