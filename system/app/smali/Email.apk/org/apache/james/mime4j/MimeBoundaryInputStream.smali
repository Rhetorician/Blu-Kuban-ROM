.class public Lorg/apache/james/mime4j/MimeBoundaryInputStream;
.super Ljava/io/InputStream;
.source "MimeBoundaryInputStream.java"


# instance fields
.field private boundary:[B

.field private eof:Z

.field private first:Z

.field private moreParts:Z

.field private parenteof:Z

.field private s:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .parameter "s"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 40
    iput-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 41
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 42
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    .line 43
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 44
    iput-boolean v3, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 54
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3b
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v2, v2

    if-ge v1, v2, :cond_4c

    .line 59
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 66
    :cond_4c
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    .line 67
    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    .line 68
    iget-object v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 70
    :cond_58
    return-void
.end method

.method private matchBoundary()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x2d

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 149
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    array-length v5, v5

    if-ge v2, v5, :cond_31

    .line 150
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 151
    .local v0, b:I
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v5, v5, v2

    if-eq v0, v5, :cond_2e

    .line 152
    if-eq v0, v8, :cond_1e

    .line 153
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    :cond_1e
    add-int/lit8 v3, v2, -0x1

    .local v3, j:I
    :goto_20
    if-ltz v3, :cond_55

    .line 156
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    iget-object v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->boundary:[B

    aget-byte v7, v7, v3

    invoke-virtual {v5, v7}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 155
    add-int/lit8 v3, v3, -0x1

    goto :goto_20

    .line 149
    .end local v3           #j:I
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 165
    .end local v0           #b:I
    :cond_31
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    .line 166
    .local v4, prev:I
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 167
    .local v1, curr:I
    if-ne v4, v9, :cond_41

    if-eq v1, v9, :cond_56

    :cond_41
    move v5, v7

    :goto_42
    iput-boolean v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 169
    :cond_44
    const/16 v5, 0xa

    if-ne v1, v5, :cond_58

    const/16 v5, 0xd

    if-ne v4, v5, :cond_58

    .line 175
    :goto_4c
    if-ne v1, v8, :cond_52

    .line 176
    iput-boolean v6, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    .line 177
    iput-boolean v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 180
    :cond_52
    iput-boolean v7, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    move v6, v7

    .line 182
    .end local v1           #curr:I
    .end local v4           #prev:I
    :cond_55
    return v6

    .restart local v1       #curr:I
    .restart local v4       #prev:I
    :cond_56
    move v5, v6

    .line 167
    goto :goto_42

    .line 172
    :cond_58
    move v4, v1

    .line 173
    iget-object v5, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-ne v1, v8, :cond_44

    goto :goto_4c
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 79
    return-void
.end method

.method public consume()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    :cond_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 111
    return-void
.end method

.method public hasMoreParts()Z
    .registers 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->moreParts:Z

    return v0
.end method

.method public parentEOF()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 117
    iget-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    if-eqz v4, :cond_8

    move v0, v3

    .line 144
    :goto_7
    return v0

    .line 121
    :cond_8
    iget-boolean v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    if-eqz v4, :cond_16

    .line 122
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->first:Z

    .line 123
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v3

    .line 124
    goto :goto_7

    .line 128
    :cond_16
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 129
    .local v0, b1:I
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    .line 131
    .local v1, b2:I
    const/16 v4, 0xd

    if-ne v0, v4, :cond_32

    const/16 v4, 0xa

    if-ne v1, v4, :cond_32

    .line 132
    invoke-direct {p0}, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->matchBoundary()Z

    move-result v4

    if-eqz v4, :cond_32

    move v0, v3

    .line 133
    goto :goto_7

    .line 137
    :cond_32
    if-eq v1, v3, :cond_39

    .line 138
    iget-object v4, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->s:Ljava/io/PushbackInputStream;

    invoke-virtual {v4, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 141
    :cond_39
    if-ne v0, v3, :cond_3c

    const/4 v2, 0x1

    :cond_3c
    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    .line 142
    iget-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->parenteof:Z

    iput-boolean v2, p0, Lorg/apache/james/mime4j/MimeBoundaryInputStream;->eof:Z

    goto :goto_7
.end method
