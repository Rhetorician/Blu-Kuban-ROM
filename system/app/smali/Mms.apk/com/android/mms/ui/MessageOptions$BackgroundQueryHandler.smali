.class final Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    .line 874
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 875
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 879
    packed-switch p1, :pswitch_data_16

    .line 886
    :goto_4
    return-void

    .line 881
    :pswitch_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mthisContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 882
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto :goto_4

    .line 879
    :pswitch_data_16
    .packed-switch 0x25e4
        :pswitch_5
    .end packed-switch
.end method