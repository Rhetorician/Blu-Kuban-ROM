.class public Lorg/apache/commons/io/filefilter/SuffixFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "SuffixFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;

.field private final suffixes:[Ljava/lang/String;


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 6
    .parameter "file"

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, name:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1b

    .line 155
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v3, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lorg/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 156
    const/4 v2, 0x1

    .line 159
    :goto_17
    return v2

    .line 154
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 159
    :cond_1b
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6
    .parameter "file"
    .parameter "name"

    .prologue
    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 172
    iget-object v1, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/io/IOCase;->checkEndsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 173
    const/4 v1, 0x1

    .line 176
    :goto_13
    return v1

    .line 171
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_17
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 190
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2c

    .line 191
    if-lez v1, :cond_22

    .line 192
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    :cond_22
    iget-object v2, p0, Lorg/apache/commons/io/filefilter/SuffixFileFilter;->suffixes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 197
    .end local v1           #i:I
    :cond_2c
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
