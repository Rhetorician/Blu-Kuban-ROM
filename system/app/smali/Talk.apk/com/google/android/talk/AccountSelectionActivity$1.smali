.class Lcom/google/android/talk/AccountSelectionActivity$1;
.super Landroid/os/Handler;
.source "AccountSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$1;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 155
    :goto_5
    return-void

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$1;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->signIn(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/AccountSelectionActivity;->access$000(Lcom/google/android/talk/AccountSelectionActivity;I)V

    goto :goto_5

    .line 152
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$1;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->signOut(I)V
    invoke-static {v0, v1}, Lcom/google/android/talk/AccountSelectionActivity;->access$100(Lcom/google/android/talk/AccountSelectionActivity;I)V

    goto :goto_5

    .line 146
    :pswitch_data_16
    .packed-switch 0x7b
        :pswitch_6
        :pswitch_e
    .end packed-switch
.end method
