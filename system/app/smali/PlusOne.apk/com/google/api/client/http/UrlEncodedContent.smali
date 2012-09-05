.class public Lcom/google/api/client/http/UrlEncodedContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "UrlEncodedContent.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>()V

    .line 57
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    .line 67
    return-void
.end method

.method private static appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    .parameter "first"
    .parameter "writer"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    if-eqz p3, :cond_8

    invoke-static {p3}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 145
    .end local p3
    :cond_8
    :goto_8
    return p0

    .line 133
    .restart local p3
    :cond_9
    if-eqz p0, :cond_30

    .line 134
    const/4 p0, 0x0

    .line 138
    :goto_c
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    instance-of v1, p3, Ljava/lang/Enum;

    if-eqz v1, :cond_36

    check-cast p3, Ljava/lang/Enum;

    .end local p3
    invoke-static {p3}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, stringValue:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 142
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    .line 136
    .end local v0           #stringValue:Ljava/lang/String;
    .restart local p3
    :cond_30
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_c

    .line 139
    :cond_36
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/Object;)Lcom/google/api/client/http/UrlEncodedContent;
    .registers 2
    .parameter "data"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    .line 123
    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 13
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/OutputStreamWriter;

    sget-object v10, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, p1, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 75
    .local v8, writer:Ljava/io/Writer;
    const/4 v0, 0x1

    .line 76
    .local v0, first:Z
    iget-object v9, p0, Lcom/google/api/client/http/UrlEncodedContent;->data:Ljava/lang/Object;

    invoke-static {v9}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 77
    .local v4, nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 78
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_1b

    .line 79
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/google/api/client/util/escape/CharEscapers;->escapeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 81
    .local v7, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v9, v6, Ljava/lang/Iterable;

    if-nez v9, :cond_45

    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 82
    :cond_45
    invoke-static {v6}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 83
    .local v5, repeatedValue:Ljava/lang/Object;
    invoke-static {v0, v8, v3, v5}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4d

    .line 86
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #repeatedValue:Ljava/lang/Object;
    :cond_5c
    invoke-static {v0, v8, v3, v6}, Lcom/google/api/client/http/UrlEncodedContent;->appendParam(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1b

    .line 90
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #nameValueEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #value:Ljava/lang/Object;
    .end local v7           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_61
    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 91
    return-void
.end method