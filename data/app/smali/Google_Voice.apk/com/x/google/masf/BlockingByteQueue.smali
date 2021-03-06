.class Lcom/x/google/masf/BlockingByteQueue;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private head:I

.field private final mutex:Ljava/lang/Object;

.field private tail:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gtz p1, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferSize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    return-void
.end method


# virtual methods
.method public available()I
    .registers 5

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_a

    const/4 v0, 0x0

    monitor-exit v1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-le v0, v2, :cond_1a

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int/2addr v0, v2

    :goto_15
    monitor-exit v1

    goto :goto_9

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0

    :cond_1a
    :try_start_1a
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_15
.end method

.method public close()V
    .registers 3

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public read()I
    .registers 5

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_4
    :try_start_4
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v2, :cond_16

    iget-boolean v2, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    if-eqz v2, :cond_e

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_3f

    :goto_d
    return v0

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_3f
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception v2

    goto :goto_4

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v3, v3

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x0

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_2c
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v3, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ne v2, v3, :cond_38

    const/4 v2, -0x1

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_38
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_d

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_16 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public read([BII)I
    .registers 9

    const/4 v1, -0x1

    const/4 v0, 0x0

    if-nez p3, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v3

    :goto_8
    :try_start_8
    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v2, :cond_1b

    iget-boolean v2, p0, Lcom/x/google/masf/BlockingByteQueue;->closed:Z

    if-eqz v2, :cond_13

    monitor-exit v3
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_56

    move v0, v1

    goto :goto_4

    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_56
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_8

    :catch_19
    move-exception v2

    goto :goto_8

    :cond_1b
    :try_start_1b
    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ge v1, v2, :cond_59

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int/2addr v1, v2

    move v2, v0

    move v0, p3

    :goto_28
    if-le v1, v0, :cond_2b

    move v1, v0

    :cond_2b
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    invoke-static {v0, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v2, v1

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_43

    const/4 v1, 0x0

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_43
    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    if-ne v1, v2, :cond_4f

    const/4 v1, -0x1

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_4f
    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_4

    :catchall_56
    move-exception v0

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_1b .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    sub-int v2, v1, v2

    if-ge v2, p3, :cond_72

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    iget v1, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I
    :try_end_70
    .catchall {:try_start_59 .. :try_end_70} :catchall_56

    move v0, p3

    goto :goto_28

    :cond_72
    move v1, v2

    move v2, v0

    move v0, p3

    goto :goto_28
.end method

.method public write(B)V
    .registers 6

    iget-object v1, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :goto_3
    :try_start_3
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_33

    if-ne v0, v2, :cond_11

    :try_start_9
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_33
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_3

    :catch_f
    move-exception v0

    goto :goto_3

    :cond_11
    :try_start_11
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_18

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_18
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v2, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    aput-byte p1, v0, v2

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v2, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v2, v2

    if-ne v0, v2, :cond_2c

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    :cond_2c
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public write([BI)V
    .registers 9

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    monitor-enter v3

    move v2, v0

    move v1, p2

    :cond_6
    :goto_6
    if-lez v1, :cond_53

    :goto_8
    :try_start_8
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_49

    if-ne v0, v4, :cond_1b

    :try_start_e
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_49
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_8

    :catch_19
    move-exception v0

    goto :goto_8

    :cond_1b
    :try_start_1b
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-gez v0, :cond_22

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    :cond_22
    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    if-ge v0, v4, :cond_4c

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->head:I

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v0, v4

    :goto_2d
    if-le v0, v1, :cond_30

    move v0, v1

    :cond_30
    iget-object v4, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    iget v5, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    invoke-static {p1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    iget-object v4, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v4, v4

    if-ne v0, v4, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    goto :goto_6

    :catchall_49
    move-exception v0

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_1b .. :try_end_4b} :catchall_49

    throw v0

    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->buffer:[B

    array-length v0, v0

    iget v4, p0, Lcom/x/google/masf/BlockingByteQueue;->tail:I

    sub-int/2addr v0, v4

    goto :goto_2d

    :cond_53
    iget-object v0, p0, Lcom/x/google/masf/BlockingByteQueue;->mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_59
    .catchall {:try_start_4c .. :try_end_59} :catchall_49

    return-void
.end method
