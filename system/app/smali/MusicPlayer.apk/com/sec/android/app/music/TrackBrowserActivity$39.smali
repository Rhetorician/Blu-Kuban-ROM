.class Lcom/sec/android/app/music/TrackBrowserActivity$39;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->registerNowPlayingButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2349
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$39;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 2352
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 2368
    :goto_8
    :pswitch_8
    return v3

    .line 2354
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$39;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRewindLongPress:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2302(Lcom/sec/android/app/music/TrackBrowserActivity;Z)Z

    goto :goto_8

    .line 2359
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$39;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mRewindLongPress:Z
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2300(Lcom/sec/android/app/music/TrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2360
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$39;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 2362
    :cond_24
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$39;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8

    .line 2352
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_9
        :pswitch_f
        :pswitch_8
        :pswitch_f
        :pswitch_8
        :pswitch_8
        :pswitch_f
    .end packed-switch
.end method