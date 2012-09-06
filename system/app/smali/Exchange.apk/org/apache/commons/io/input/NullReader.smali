.class public Lorg/apache/commons/io/input/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private markSupported:Z

.field private position:J

.field private readlimit:J

.field private size:J

.field private throwEofException:Z


# direct methods
.method private doEndOfFile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 307
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->throwEofException:Z

    if-eqz v0, :cond_d

    .line 308
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 310
    :cond_d
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 127
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 128
    return-void
.end method

.method public declared-synchronized mark(I)V
    .registers 4
    .parameter "readlimit"

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_10

    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 138
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_10
    :try_start_10
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    .line 142
    int-to-long v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    .line 143
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    return v0
.end method

.method protected processChar()I
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method protected processChars([CII)V
    .registers 4
    .parameter "chars"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 295
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v0, :cond_c

    .line 166
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read after end of file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_c
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 169
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 172
    :goto_18
    return v0

    .line 171
    :cond_19
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullReader;->processChar()I

    move-result v0

    goto :goto_18
.end method

.method public read([C)I
    .registers 4
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/NullReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .registers 9
    .parameter "chars"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    iget-boolean v1, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v1, :cond_c

    .line 205
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Read after end of file"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_c
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    .line 208
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v0

    .line 217
    :goto_18
    return v0

    .line 210
    :cond_19
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 211
    move v0, p3

    .line 212
    .local v0, returnLength:I
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_34

    .line 213
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v3, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int v0, p3, v1

    .line 214
    iget-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v1, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 216
    :cond_34
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/io/input/NullReader;->processChars([CII)V

    goto :goto_18
.end method

.method public declared-synchronized reset()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->markSupported:Z

    if-nez v0, :cond_10

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 229
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 232
    :cond_10
    :try_start_10
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    .line 233
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_20
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    .line 236
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_58
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z
    :try_end_5f
    .catchall {:try_start_10 .. :try_end_5f} :catchall_d

    .line 242
    monitor-exit p0

    return-void
.end method

.method public skip(J)J
    .registers 9
    .parameter "numberOfChars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v2, p0, Lorg/apache/commons/io/input/NullReader;->eof:Z

    if-eqz v2, :cond_c

    .line 257
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Skip after end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_c
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 260
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullReader;->doEndOfFile()I

    move-result v2

    int-to-long v0, v2

    .line 268
    :cond_19
    :goto_19
    return-wide v0

    .line 262
    :cond_1a
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    .line 263
    move-wide v0, p1

    .line 264
    .local v0, returnLength:J
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 265
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    sub-long/2addr v2, v4

    sub-long v0, p1, v2

    .line 266
    iget-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->size:J

    iput-wide v2, p0, Lorg/apache/commons/io/input/NullReader;->position:J

    goto :goto_19
.end method
