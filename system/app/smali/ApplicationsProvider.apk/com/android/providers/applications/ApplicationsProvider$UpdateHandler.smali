.class Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;
.super Landroid/os/Handler;
.source "ApplicationsProvider.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/applications/ApplicationsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/applications/ApplicationsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/applications/ApplicationsProvider;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    .line 199
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 200
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_32

    .line 212
    const-string v0, "ApplicationsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_1f
    return-void

    .line 206
    :pswitch_20
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    const/4 v1, 0x0

    #calls: Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/applications/ApplicationsProvider;->access$300(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V

    goto :goto_1f

    .line 209
    :pswitch_27
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;->this$0:Lcom/android/providers/applications/ApplicationsProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/providers/applications/ApplicationsProvider;->access$300(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V

    goto :goto_1f

    .line 204
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_20
        :pswitch_27
    .end packed-switch
.end method