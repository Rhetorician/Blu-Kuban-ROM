.class Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;
.super Landroid/os/Handler;
.source "VoiceListOptionDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_14

    .line 140
    :goto_5
    :sswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 141
    return-void

    .line 130
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->closeProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity$1;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceListOptionDeleteActivity;->finish()V

    goto :goto_5

    .line 122
    :sswitch_data_14
    .sparse-switch
        0xfb4 -> :sswitch_5
        0xfd2 -> :sswitch_9
        0xfd3 -> :sswitch_9
        0xfd4 -> :sswitch_9
        0xfe6 -> :sswitch_9
        0xff0 -> :sswitch_9
        0xff5 -> :sswitch_9
        0xff6 -> :sswitch_9
    .end sparse-switch
.end method