.class public Lcom/google/android/apps/plus/service/SkyjamPlaybackService;
.super Landroid/app/Service;
.source "SkyjamPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;
.implements Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;
    }
.end annotation


# static fields
.field private static sAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private static sActivityId:Ljava/lang/String;

.field private static sCurrentTime:I

.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sMusicUrl:Ljava/lang/String;

.field private static sSongName:Ljava/lang/String;

.field private static sStatus:Ljava/lang/String;

.field private static sTotalPlayableTime:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

.field private final mUpdateTimeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$1;-><init>(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 38
    sget v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sCurrentTime:I

    return v0
.end method

.method static synthetic access$202(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sCurrentTime:I

    return p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    sput-object p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;I)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getTimeString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private dispatchStatusUpdate()V
    .registers 6

    .prologue
    .line 404
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    .line 405
    .local v0, musicUrl:Ljava/lang/String;
    if-eqz v0, :cond_16

    iget-object v3, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_16

    const/4 v1, 0x1

    .line 406
    .local v1, playing:Z
    :goto_9
    sget-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 408
    .local v2, status:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService$2;-><init>(Lcom/google/android/apps/plus/service/SkyjamPlaybackService;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void

    .line 405
    .end local v1           #playing:Z
    .end local v2           #status:Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static getPlaybackStatus(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "context"
    .parameter "musicUrl"

    .prologue
    .line 447
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 448
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 450
    :goto_12
    return-object v0

    :cond_13
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getTimeString(I)Ljava/lang/String;
    .registers 8
    .parameter "time"

    .prologue
    .line 427
    div-int/lit16 p1, p1, 0x3e8

    .line 428
    div-int/lit8 v0, p1, 0x3c

    .line 429
    .local v0, minutes:I
    rem-int/lit8 v1, p1, 0x3c

    .line 430
    .local v1, seconds:I
    const v2, 0x7f0801c8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isPlaying(Ljava/lang/String;)Z
    .registers 2
    .parameter "musicUrl"

    .prologue
    .line 438
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static logOut(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 462
    sget-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 463
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.plus.service.SkyjamPlaybackService.STOP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "music_account"

    sget-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    const-string v1, "music_url"

    sget-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "song"

    sget-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sSongName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v1, "activity_id"

    sget-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sActivityId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 471
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2f
    return-void
.end method

.method public static registerListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/service/SkyjamPlaybackService$SkyjamPlaybackListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 118
    sget-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 6
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 228
    const-string v0, "SkyjamPlaybackService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 229
    const-string v0, "SkyjamPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_27
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 238
    const-string v0, "SkyjamPlaybackService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 239
    const-string v0, "SkyjamPlaybackService"

    const-string v1, "completion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stopSelf()V

    .line 244
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 127
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 129
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/google/android/apps/plus/service/ServiceThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    const-string v2, "SkyjamServiceThread"

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/apps/plus/service/ServiceThread;-><init>(Landroid/os/Handler;Ljava/lang/String;Lcom/google/android/apps/plus/service/ServiceThread$IntentProcessor;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->start()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    if-eqz v0, :cond_f

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/ServiceThread;->quit()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    .line 159
    :cond_f
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 7
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 251
    const-string v0, "SkyjamPlaybackService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 252
    const-string v0, "SkyjamPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2b
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stopSelf()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public onOperationComplete(Lcom/google/android/apps/plus/network/HttpOperation;)V
    .registers 12
    .parameter "op"

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->hasError()Z

    move-result v7

    if-nez v7, :cond_7d

    iget-object v7, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_7d

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, duration:I
    const/4 v2, 0x0

    .line 303
    .local v2, playType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 304
    .local v3, playbackUrl:Ljava/lang/String;
    :try_start_d
    invoke-virtual {p1}, Lcom/google/android/apps/plus/network/HttpOperation;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 306
    .local v6, serverResponse:Ljava/lang/String;
    const-string v7, "SkyjamPlaybackService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 307
    const-string v7, "SkyjamPlaybackService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received server response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_36
    new-instance v5, Lcom/google/android/apps/plus/json/JsonReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Lcom/google/android/apps/plus/json/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 313
    .local v5, reader:Lcom/google/android/apps/plus/json/JsonReader;
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 314
    :goto_43
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 315
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, name:Ljava/lang/String;
    const-string v7, "durationMillis"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 317
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextInt()I

    move-result v0

    goto :goto_43

    .line 318
    :cond_5a
    const-string v7, "playType"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 319
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_43

    .line 320
    :cond_6b
    const-string v7, "url"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 321
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    goto :goto_43

    .line 323
    :cond_78
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto :goto_43

    .line 340
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #reader:Lcom/google/android/apps/plus/json/JsonReader;
    .end local v6           #serverResponse:Ljava/lang/String;
    :catch_7c
    move-exception v7

    .line 344
    .end local v0           #duration:I
    .end local v2           #playType:Ljava/lang/String;
    .end local v3           #playbackUrl:Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void

    .line 326
    .restart local v0       #duration:I
    .restart local v2       #playType:Ljava/lang/String;
    .restart local v3       #playbackUrl:Ljava/lang/String;
    .restart local v5       #reader:Lcom/google/android/apps/plus/json/JsonReader;
    .restart local v6       #serverResponse:Ljava/lang/String;
    :cond_7e
    invoke-virtual {v5}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    .line 328
    if-eqz v2, :cond_93

    const-string v7, "full"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_93

    const-string v7, "sp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c2

    .line 329
    :cond_93
    sput v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I

    .line 335
    :goto_95
    const-string v7, "SkyjamPlaybackService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_be

    .line 336
    const-string v7, "SkyjamPlaybackService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total playable time set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_be
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->play(Ljava/lang/String;)V

    goto :goto_7d

    .line 331
    :cond_c2
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, previewTime:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    sput v7, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d5} :catch_7c

    goto :goto_95
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 13
    .parameter "mp"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 265
    const-string v5, "SkyjamPlaybackService"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 266
    const-string v5, "SkyjamPlaybackService"

    const-string v6, "prepared"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_12
    iget-object v5, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v5, :cond_8e

    .line 270
    iget-object v5, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 272
    const v5, 0x7f0801c7

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sCurrentTime:I

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getTimeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    sget v7, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I

    invoke-direct {p0, v7}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getTimeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 274
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V

    .line 275
    iget-object v5, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    const v5, 0x7f0801c2

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sSongName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, playingSong:Ljava/lang/String;
    const v5, 0x7f0801c3

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, title:Ljava/lang/String;
    const v5, 0x7f0801c4

    new-array v6, v10, [Ljava/lang/Object;

    sget-object v7, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sSongName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, subtitle:Ljava/lang/String;
    new-instance v0, Landroid/app/Notification;

    const v5, 0x7f0201b0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v5, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 285
    .local v0, notification:Landroid/app/Notification;
    sget-object v5, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v6, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sActivityId:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Lcom/google/android/apps/plus/phone/Intents;->getPostCommentsActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x800

    invoke-static {p0, v9, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 288
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, p0, v4, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 289
    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 290
    iget-object v5, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v6, 0x6ab0

    invoke-virtual {v5, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 292
    .end local v0           #notification:Landroid/app/Notification;
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    .end local v2           #playingSong:Ljava/lang/String;
    .end local v3           #subtitle:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    :cond_8e
    return-void
.end method

.method public onServiceThreadEnd()V
    .registers 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    .line 221
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 142
    if-eqz p1, :cond_7

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mServiceThread:Lcom/google/android/apps/plus/service/ServiceThread;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/service/ServiceThread;->put(Landroid/content/Intent;)V

    .line 146
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public play(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 353
    :try_start_0
    const-string v1, "SkyjamPlaybackService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 354
    const-string v1, "SkyjamPlaybackService"

    const-string v2, "play"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 357
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 358
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 361
    const v1, 0x7f0801c6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 362
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_33

    .line 366
    :goto_32
    return-void

    .line 363
    :catch_33
    move-exception v0

    .line 364
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    goto :goto_32
.end method

.method public processIntent(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, action:Ljava/lang/String;
    if-nez v9, :cond_7

    .line 213
    :cond_6
    :goto_6
    return-void

    .line 179
    :cond_7
    const-string v1, "com.google.android.apps.plus.service.SkyjamPlaybackService.PLAY"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 180
    const-string v1, "music_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 181
    .local v10, musicUrl:Ljava/lang/String;
    if-eqz v10, :cond_6

    sget-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 182
    sget-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    .line 186
    :cond_26
    const-string v1, "music_account"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 187
    const-string v1, "music_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    .line 188
    const-string v1, "song"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sSongName:Ljava/lang/String;

    .line 189
    const-string v1, "activity_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sActivityId:Ljava/lang/String;

    .line 191
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 192
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 194
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 197
    const v1, 0x7f0801c5

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 198
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V

    .line 200
    new-instance v0, Lcom/google/android/apps/plus/network/HttpOperation;

    const-string v2, "GET"

    sget-object v3, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    new-instance v4, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;

    sget-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v5, "sj"

    invoke-direct {v4, p0, v1, v5}, Lcom/google/android/apps/plus/network/DefaultHttpRequestConfiguration;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v6, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/HttpRequestConfiguration;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 204
    .local v0, op:Lcom/google/android/apps/plus/network/HttpOperation;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/network/HttpOperation;->startThreaded()V

    goto/16 :goto_6

    .line 206
    .end local v0           #op:Lcom/google/android/apps/plus/network/HttpOperation;
    .end local v10           #musicUrl:Ljava/lang/String;
    :cond_92
    const-string v1, "com.google.android.apps.plus.service.SkyjamPlaybackService.STOP"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    const-string v1, "music_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 208
    .restart local v10       #musicUrl:Ljava/lang/String;
    if-eqz v10, :cond_6

    sget-object v1, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stop()V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->stopSelf()V

    goto/16 :goto_6
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mUpdateTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_31

    .line 375
    const-string v0, "SkyjamPlaybackService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 376
    const-string v0, "SkyjamPlaybackService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 382
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 383
    iput-object v2, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 386
    :cond_31
    const v0, 0x7f0801c9

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sStatus:Ljava/lang/String;

    .line 387
    invoke-direct {p0}, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->dispatchStatusUpdate()V

    .line 389
    sput-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sMusicUrl:Ljava/lang/String;

    .line 390
    sput-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sSongName:Ljava/lang/String;

    .line 391
    sput-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 392
    sput-object v2, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sActivityId:Ljava/lang/String;

    .line 394
    sput v3, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sCurrentTime:I

    .line 395
    sput v3, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->sTotalPlayableTime:I

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/service/SkyjamPlaybackService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x6ab0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 398
    return-void
.end method
