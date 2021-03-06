.class public abstract Lcom/google/android/music/sync/common/DownstreamReader;
.super Ljava/lang/Object;
.source "DownstreamReader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

.field private final mTag:Ljava/lang/String;

.field protected final mUpdateQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILjava/lang/String;)V
    .registers 5
    .parameter "updateQueue"
    .parameter "queueCapacity"
    .parameter "logTag"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUpdateQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

    .line 32
    new-instance v0, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    invoke-direct {v0, p2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    .line 33
    iput-object p3, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    .line 34
    invoke-static {p3}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUseVerboseLogging:Z

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/music/sync/common/DownstreamReader;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 46
    .local v4, shouldBail:Z
    const/4 v0, 0x0

    .line 48
    .local v0, count:I
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUpdateQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/sync/common/QueueableSyncEntity;

    .line 49
    .local v3, serverEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    if-nez v3, :cond_30

    .line 50
    iget-boolean v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_17

    .line 51
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    const-string v6, "Update queue empty.  Exiting."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_62
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_17} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_17} :catch_7b

    .line 71
    :cond_17
    if-eqz v4, :cond_1e

    .line 75
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUpdateQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->kill()V

    .line 78
    :cond_1e
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    invoke-virtual {v5}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->close()V

    .line 79
    iget-boolean v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_2e

    .line 80
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    const-string v6, "Downstream reader thread exiting."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2e
    const/4 v5, 0x0

    return-object v5

    .line 55
    :cond_30
    :try_start_30
    iget-boolean v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUseVerboseLogging:Z

    if-eqz v5, :cond_54

    .line 56
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from the update queue."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_54
    invoke-virtual {p0, v3}, Lcom/google/android/music/sync/common/DownstreamReader;->processServerEntity(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    :try_end_57
    .catchall {:try_start_30 .. :try_end_57} :catchall_62
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_57} :catch_58
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_57} :catch_7b

    goto :goto_2

    .line 60
    .end local v3           #serverEntity:Lcom/google/android/music/sync/common/QueueableSyncEntity;
    :catch_58
    move-exception v1

    .line 61
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    .line 62
    :try_start_5a
    new-instance v5, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v6, "Downstream Reader thread interrupted.  Bailing. "

    invoke-direct {v5, v6, v1}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_62

    .line 71
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_62
    move-exception v5

    if-eqz v4, :cond_6a

    .line 75
    iget-object v6, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUpdateQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;

    invoke-virtual {v6}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;->kill()V

    .line 78
    :cond_6a
    iget-object v6, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    invoke-virtual {v6}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->close()V

    .line 79
    iget-boolean v6, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mUseVerboseLogging:Z

    if-eqz v6, :cond_7a

    .line 80
    iget-object v6, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    const-string v7, "Downstream reader thread exiting."

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    throw v5

    .line 64
    :catch_7b
    move-exception v1

    .line 65
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    .line 66
    :try_start_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Downstream reader thread threw an unknown error.  Bailing. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, exitMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mTag:Ljava/lang/String;

    invoke-static {v5, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    new-instance v5, Lcom/google/android/music/sync/common/HardSyncException;

    invoke-direct {v5, v2, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_9f
    .catchall {:try_start_7d .. :try_end_9f} :catchall_62
.end method

.method protected getMergeQueue()Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/music/sync/common/DownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    return-object v0
.end method

.method public abstract processServerEntity(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation
.end method
