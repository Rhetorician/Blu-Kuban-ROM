.class Lah/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lah/v;->a:I

    .line 245
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lah/v;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lah/v;->a:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lah/v;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lah/v;->a:I

    .line 257
    iget v0, p0, Lah/v;->a:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 256
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
