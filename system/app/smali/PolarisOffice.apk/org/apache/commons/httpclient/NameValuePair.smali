.class public Lorg/apache/commons/httpclient/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/httpclient/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-nez p1, :cond_5

    .line 142
    :cond_4
    :goto_4
    return v2

    .line 136
    :cond_5
    if-ne p0, p1, :cond_9

    move v2, v1

    goto :goto_4

    .line 137
    :cond_9
    instance-of v3, p1, Lorg/apache/commons/httpclient/NameValuePair;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 138
    check-cast v0, Lorg/apache/commons/httpclient/NameValuePair;

    .line 139
    .local v0, that:Lorg/apache/commons/httpclient/NameValuePair;
    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object v3, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/httpclient/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    :goto_24
    move v2, v1

    goto :goto_4

    :cond_26
    move v1, v2

    goto :goto_24
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 147
    const/16 v0, 0x11

    .line 148
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/commons/httpclient/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 150
    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/httpclient/NameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method