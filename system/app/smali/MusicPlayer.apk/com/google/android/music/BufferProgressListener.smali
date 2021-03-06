.class public Lcom/google/android/music/BufferProgressListener;
.super Ljava/lang/Object;
.source "BufferProgressListener.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

.field private mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    const-string v0, "BufferProgressListener"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/BufferProgressListener;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/android/music/BufferProgressListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/BufferProgressListener$1;-><init>(Lcom/google/android/music/BufferProgressListener;)V

    iput-object v0, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    .line 28
    iput-object p1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/BufferProgressListener;Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/BufferProgressListener;->processBufferBroadcast(Lcom/google/android/music/dl/ContentIdentifier;IFI)V

    return-void
.end method

.method private declared-synchronized processBufferBroadcast(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .registers 8
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    .line 33
    monitor-enter p0

    if-eqz p1, :cond_f

    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_36

    move-result v1

    if-nez v1, :cond_11

    .line 55
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 37
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_f

    .line 40
    invoke-static {}, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->values()[Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    move-result-object v1

    aget-object v0, v1, p2

    .line 41
    .local v0, downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-eq v0, v1, :cond_23

    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->FAILED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_39

    .line 43
    :cond_23
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 45
    sget-object v1, Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;->COMPLETED:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;

    if-ne v0, v1, :cond_f

    .line 46
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_36

    goto :goto_f

    .line 33
    .end local v0           #downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1

    .line 49
    .restart local v0       #downloadState:Lcom/google/android/music/dl/DownloadOrder$DownloadStatus;
    :cond_39
    const v1, 0x3f7d70a4

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_4c

    .line 50
    :try_start_40
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_f

    .line 52
    :cond_4c
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_36

    goto :goto_f
.end method

.method private declared-synchronized stopReceiver()V
    .registers 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    if-eqz v1, :cond_13

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    if-eqz v1, :cond_13

    .line 90
    :try_start_9
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v1, v2}, Lcom/google/android/music/IMusicPlaybackService;->removeDownloadProgressListener(Lcom/google/android/music/dl/IDownloadProgressListener;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_20
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_15

    .line 94
    :goto_10
    const/4 v1, 0x0

    :try_start_11
    iput-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_20

    .line 96
    :cond_13
    monitor-exit p0

    return-void

    .line 91
    :catch_15
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    :try_start_16
    const-string v1, "BufferProgressListener"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_10

    .line 88
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized cleanup()V
    .registers 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 85
    monitor-exit p0

    return-void

    .line 84
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateCurrentSong(Lcom/google/android/music/dl/ContentIdentifier;Z)V
    .registers 6
    .parameter "songId"
    .parameter "isStreaming"

    .prologue
    .line 58
    monitor-enter p0

    if-nez p1, :cond_13

    .line 59
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 60
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_34

    .line 76
    :cond_11
    :goto_11
    monitor-exit p0

    return-void

    .line 61
    :cond_13
    :try_start_13
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/ContentIdentifier;->equals(Lcom/google/android/music/dl/ContentIdentifier;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 62
    invoke-direct {p0}, Lcom/google/android/music/BufferProgressListener;->stopReceiver()V

    .line 63
    if-eqz p2, :cond_37

    .line 64
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_34

    .line 69
    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/IMusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mDownloadProgressListener:Lcom/google/android/music/dl/IDownloadProgressListener;

    invoke-interface {v1, p1, v2}, Lcom/google/android/music/IMusicPlaybackService;->addDownloadProgressListener(Lcom/google/android/music/dl/ContentIdentifier;Lcom/google/android/music/dl/IDownloadProgressListener;)Z
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_34
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_31} :catch_43

    .line 74
    :goto_31
    :try_start_31
    iput-object p1, p0, Lcom/google/android/music/BufferProgressListener;->mCurrentSong:Lcom/google/android/music/dl/ContentIdentifier;
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_34

    goto :goto_11

    .line 58
    :catchall_34
    move-exception v1

    monitor-exit p0

    throw v1

    .line 66
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/BufferProgressListener;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    goto :goto_2a

    .line 71
    :catch_43
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BufferProgressListener"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_34

    goto :goto_31
.end method
