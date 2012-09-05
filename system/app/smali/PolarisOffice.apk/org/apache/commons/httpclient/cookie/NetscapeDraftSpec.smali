.class public Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;
.super Lorg/apache/commons/httpclient/cookie/CookieSpecBase;
.source "NetscapeDraftSpec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;-><init>()V

    .line 66
    return-void
.end method

.method private static isSpecialDomain(Ljava/lang/String;)Z
    .registers 3
    .parameter "domain"

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, ucDomain:Ljava/lang/String;
    const-string v1, ".COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".EDU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".NET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".GOV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".MIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".ORG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ".INT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 267
    :cond_3c
    const/4 v1, 0x1

    .line 269
    :goto_3d
    return v1

    :cond_3e
    const/4 v1, 0x0

    goto :goto_3d
.end method


# virtual methods
.method public domainMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "host"
    .parameter "domain"

    .prologue
    .line 207
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)[Lorg/apache/commons/httpclient/Cookie;
    .registers 17
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v1, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enter NetscapeDraftSpec.parse(String, port, path, boolean, Header)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 109
    if-nez p1, :cond_11

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host of origin may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Host of origin may not be blank"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_25
    if-gez p2, :cond_40

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_40
    if-nez p3, :cond_4a

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path of origin may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_4a
    if-nez p5, :cond_54

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Header may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_54
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 126
    const-string p3, "/"

    .line 128
    :cond_62
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 130
    move-object v4, p3

    .line 131
    .local v4, defaultPath:Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 132
    .local v9, lastSlashIndex:I
    if-ltz v9, :cond_77

    .line 133
    if-nez v9, :cond_72

    .line 135
    const/4 v9, 0x1

    .line 137
    :cond_72
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_77
    new-instance v7, Lorg/apache/commons/httpclient/HeaderElement;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v7, v1}, Lorg/apache/commons/httpclient/HeaderElement;-><init>([C)V

    .line 140
    .local v7, headerelement:Lorg/apache/commons/httpclient/HeaderElement;
    new-instance v0, Lorg/apache/commons/httpclient/Cookie;

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/httpclient/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Z)V

    .line 147
    .local v0, cookie:Lorg/apache/commons/httpclient/Cookie;
    invoke-virtual {v7}, Lorg/apache/commons/httpclient/HeaderElement;->getParameters()[Lorg/apache/commons/httpclient/NameValuePair;

    move-result-object v10

    .line 149
    .local v10, parameters:[Lorg/apache/commons/httpclient/NameValuePair;
    if-eqz v10, :cond_a2

    .line 150
    const/4 v8, 0x0

    .local v8, j:I
    :goto_97
    array-length v1, v10

    if-ge v8, v1, :cond_a2

    .line 151
    aget-object v1, v10, v8

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    .line 150
    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    .line 154
    .end local v8           #j:I
    :cond_a2
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/commons/httpclient/Cookie;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V
    .registers 11
    .parameter "attribute"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_a

    .line 172
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Attribute may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_a
    if-nez p2, :cond_14

    .line 175
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cookie may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    :cond_14
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, paramName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/commons/httpclient/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, paramValue:Ljava/lang/String;
    const-string v5, "expires"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 182
    if-nez v4, :cond_32

    .line 183
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    const-string v6, "Missing value for expires attribute"

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_32
    :try_start_32
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "EEE, dd-MMM-yyyy HH:mm:ss z"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 189
    .local v2, expiryFormat:Ljava/text/DateFormat;
    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 190
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p2, v0}, Lorg/apache/commons/httpclient/Cookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_42
    .catch Ljava/text/ParseException; {:try_start_32 .. :try_end_42} :catch_43

    .line 198
    .end local v0           #date:Ljava/util/Date;
    .end local v2           #expiryFormat:Ljava/text/DateFormat;
    :goto_42
    return-void

    .line 191
    :catch_43
    move-exception v1

    .line 192
    .local v1, e:Ljava/text/ParseException;
    new-instance v5, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Invalid expires attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    .end local v1           #e:Ljava/text/ParseException;
    :cond_61
    invoke-super {p0, p1, p2}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->parseAttribute(Lorg/apache/commons/httpclient/NameValuePair;Lorg/apache/commons/httpclient/Cookie;)V

    goto :goto_42
.end method

.method public validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V
    .registers 10
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "secure"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 226
    sget-object v1, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "enterNetscapeDraftCookieProcessor RCF2109CookieProcessor.validate(Cookie)"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 229
    invoke-super/range {p0 .. p5}, Lorg/apache/commons/httpclient/cookie/CookieSpecBase;->validate(Ljava/lang/String;ILjava/lang/String;ZLorg/apache/commons/httpclient/Cookie;)V

    .line 231
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7d

    .line 232
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    .line 235
    .local v0, domainParts:I
    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/httpclient/cookie/NetscapeDraftSpec;->isSpecialDomain(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 236
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7d

    .line 237
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" violates the Netscape cookie specification for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "special domains"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_57
    const/4 v1, 0x3

    if-ge v0, v1, :cond_7d

    .line 244
    new-instance v1, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Domain attribute \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p5}, Lorg/apache/commons/httpclient/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" violates the Netscape cookie specification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/httpclient/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    .end local v0           #domainParts:I
    :cond_7d
    return-void
.end method
