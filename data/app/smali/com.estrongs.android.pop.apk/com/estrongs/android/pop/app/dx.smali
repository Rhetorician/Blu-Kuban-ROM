.class Lcom/estrongs/android/pop/app/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/dx;)Lcom/estrongs/android/pop/app/StreamingMediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_32

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->b(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->a(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;Z)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->c(Lcom/estrongs/android/pop/app/StreamingMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dx;->a:Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;->showDialog(I)V

    :cond_40
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/app/dy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dy;-><init>(Lcom/estrongs/android/pop/app/dx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_31
.end method
