.class Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReleasableMediaPlayer"
.end annotation


# instance fields
.field private mIsReleased:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/google/android/voicesearch/SoundManager;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/SoundManager;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->this$0:Lcom/google/android/voicesearch/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mIsReleased:Z

    .line 143
    invoke-static {p2, p3}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 144
    return-void
.end method


# virtual methods
.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public declared-synchronized release()V
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mIsReleased:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 156
    :goto_5
    monitor-exit p0

    return-void

    .line 154
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mIsReleased:Z

    .line 155
    iget-object v0, p0, Lcom/google/android/voicesearch/SoundManager$ReleasableMediaPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 151
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
