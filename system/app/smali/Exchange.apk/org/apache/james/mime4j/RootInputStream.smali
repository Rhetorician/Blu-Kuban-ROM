.class Lorg/apache/james/mime4j/RootInputStream;
.super Ljava/io/InputStream;
.source "RootInputStream.java"


# instance fields
.field private is:Ljava/io/InputStream;

.field private lineNumber:I

.field private prev:I

.field private truncated:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "is"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    .line 47
    iput-object p1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    .line 48
    return-void
.end method


# virtual methods
.method public getLineNumber()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v1, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    if-eqz v1, :cond_6

    .line 75
    const/4 v0, -0x1

    .line 83
    :goto_5
    return v0

    .line 78
    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 79
    .local v0, b:I
    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    .line 80
    iget v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 82
    :cond_1c
    iput v0, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    goto :goto_5
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/RootInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-boolean v2, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    if-eqz v2, :cond_6

    .line 92
    const/4 v1, -0x1

    .line 102
    :cond_5
    return v1

    .line 95
    :cond_6
    iget-object v2, p0, Lorg/apache/james/mime4j/RootInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 96
    .local v1, n:I
    move v0, p2

    .local v0, i:I
    :goto_d
    add-int v2, p2, v1

    if-ge v0, v2, :cond_5

    .line 97
    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_23

    aget-byte v2, p1, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_23

    .line 98
    iget v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->lineNumber:I

    .line 100
    :cond_23
    aget-byte v2, p1, v0

    iput v2, p0, Lorg/apache/james/mime4j/RootInputStream;->prev:I

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public truncate()V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/RootInputStream;->truncated:Z

    .line 68
    return-void
.end method
