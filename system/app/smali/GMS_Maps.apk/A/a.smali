.class public LA/a;
.super LA/f;
.source "SourceFile"


# instance fields
.field private final a:[LA/j;

.field private b:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1}, LA/f;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v0, 0x190

    new-array v0, v0, [LA/j;

    iput-object v0, p0, LA/a;->a:[LA/j;

    .line 23
    iput v1, p0, LA/a;->b:I

    .line 24
    iput v1, p0, LA/a;->d:I

    .line 28
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/util/List;
    .registers 6

    .prologue
    const/16 v1, 0x190

    .line 33
    monitor-enter p0

    :try_start_3
    iget v0, p0, LA/a;->d:I

    if-ge v0, v1, :cond_1a

    .line 34
    iget v0, p0, LA/a;->d:I

    new-array v0, v0, [LA/j;

    .line 35
    iget-object v1, p0, LA/a;->a:[LA/j;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, LA/a;->d:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    :goto_14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_37

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 37
    :cond_1a
    const/16 v0, 0x190

    :try_start_1c
    new-array v0, v0, [LA/j;

    .line 38
    iget-object v1, p0, LA/a;->a:[LA/j;

    iget v2, p0, LA/a;->b:I

    const/4 v3, 0x0

    iget v4, p0, LA/a;->b:I

    rsub-int v4, v4, 0x190

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget-object v1, p0, LA/a;->a:[LA/j;

    const/4 v2, 0x0

    iget v3, p0, LA/a;->b:I

    rsub-int v3, v3, 0x190

    iget v4, p0, LA/a;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_36
    .catchall {:try_start_1c .. :try_end_36} :catchall_37

    goto :goto_14

    .line 33
    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LA/j;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x190

    .line 48
    monitor-enter p0

    if-nez p1, :cond_e

    .line 49
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_b

    .line 48
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 52
    :cond_e
    :try_start_e
    iget v0, p0, LA/a;->d:I

    if-ne v0, v2, :cond_27

    .line 53
    iget v0, p0, LA/a;->b:I

    .line 54
    iget v1, p0, LA/a;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LA/a;->b:I

    .line 55
    iget v1, p0, LA/a;->b:I

    if-ne v1, v2, :cond_21

    .line 56
    const/4 v1, 0x0

    iput v1, p0, LA/a;->b:I

    .line 62
    :cond_21
    :goto_21
    iget-object v1, p0, LA/a;->a:[LA/j;

    aput-object p1, v1, v0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_b

    .line 63
    monitor-exit p0

    return-void

    .line 59
    :cond_27
    :try_start_27
    iget v0, p0, LA/a;->b:I

    iget v1, p0, LA/a;->d:I

    add-int/2addr v0, v1

    .line 60
    iget v1, p0, LA/a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LA/a;->d:I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_b

    goto :goto_21
.end method
