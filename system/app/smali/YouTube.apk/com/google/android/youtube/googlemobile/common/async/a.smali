.class public abstract Lcom/google/android/youtube/googlemobile/common/async/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/async/f;


# instance fields
.field private a:Ljava/lang/Exception;

.field private b:Lcom/google/android/youtube/googlemobile/common/c/a;

.field private c:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;->j()V

    return-void
.end method

.method private declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->a:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/a;->a(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->b:Lcom/google/android/youtube/googlemobile/common/c/a;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->b:Lcom/google/android/youtube/googlemobile/common/c/a;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/c/a;->e()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state != STATE_COMPLETED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    monitor-exit p0

    return-void
.end method

.method protected final declared-synchronized a(Lcom/google/android/youtube/googlemobile/common/c/a;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->b:Lcom/google/android/youtube/googlemobile/common/c/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/a;->a(I)V

    invoke-direct {p0, p1}, Lcom/google/android/youtube/googlemobile/common/async/a;->b(Ljava/lang/Exception;)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;->k()V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;->i()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->a:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->a:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized h()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/a;->a(I)V

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/async/a;->k()V
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h_()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i_()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/youtube/googlemobile/common/async/a;->c:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized j_()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/async/a;->a(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
