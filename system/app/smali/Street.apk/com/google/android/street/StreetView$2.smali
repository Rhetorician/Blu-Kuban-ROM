.class Lcom/google/android/street/StreetView$2;
.super Landroid/os/Handler;
.source "StreetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/StreetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/StreetView;


# direct methods
.method constructor <init>(Lcom/google/android/street/StreetView;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/street/StreetView$2;->this$0:Lcom/google/android/street/StreetView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :pswitch_20
    iget-object v0, p0, Lcom/google/android/street/StreetView$2;->this$0:Lcom/google/android/street/StreetView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_2f

    const/4 v1, 0x1

    :goto_27
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/street/PanoramaConfig;

    #calls: Lcom/google/android/street/StreetView;->addPanoramaConfig(ZLcom/google/android/street/PanoramaConfig;)V
    invoke-static {v0, v1, p0}, Lcom/google/android/street/StreetView;->access$100(Lcom/google/android/street/StreetView;ZLcom/google/android/street/PanoramaConfig;)V

    .line 212
    :goto_2e
    return-void

    .line 200
    .restart local p0
    :cond_2f
    const/4 v1, 0x0

    goto :goto_27

    .line 203
    :pswitch_31
    iget-object v0, p0, Lcom/google/android/street/StreetView$2;->this$0:Lcom/google/android/street/StreetView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/street/StreetView;->doUpdateProgress(I)V
    invoke-static {v0, v1}, Lcom/google/android/street/StreetView;->access$200(Lcom/google/android/street/StreetView;I)V

    goto :goto_2e

    .line 206
    :pswitch_39
    iget-object v0, p0, Lcom/google/android/street/StreetView$2;->this$0:Lcom/google/android/street/StreetView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/street/StreetView;->doUpdateTransitionProgress(I)V
    invoke-static {v0, v1}, Lcom/google/android/street/StreetView;->access$300(Lcom/google/android/street/StreetView;I)V

    goto :goto_2e

    .line 198
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_20
        :pswitch_31
        :pswitch_39
    .end packed-switch
.end method
