.class Lcom/android/phone/CallCard$5;
.super Landroid/os/Handler;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method constructor <init>(Lcom/android/phone/CallCard;)V
    .registers 2
    .parameter

    .prologue
    .line 2499
    iput-object p1, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 2503
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_96

    .line 2530
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2531
    return-void

    .line 2505
    :pswitch_9
    invoke-static {p1}, Lcom/android/phone/FDNContactsCache;->getNumberFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    .line 2506
    .local v1, number:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    .line 2508
    .local v0, name:Ljava/lang/String;
    const-string v2, "CallCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FDN_CONTACT_QUERY: Number - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & Name - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2516
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$1000(Lcom/android/phone/CallCard;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2518
    :cond_65
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$300(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2519
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_86

    .line 2520
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2522
    :cond_86
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2524
    iget-object v2, p0, Lcom/android/phone/CallCard$5;->this$0:Lcom/android/phone/CallCard;

    #setter for: Lcom/android/phone/CallCard;->FDN_Number:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/phone/CallCard;->access$1002(Lcom/android/phone/CallCard;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5

    .line 2503
    :pswitch_data_96
    .packed-switch 0x3e9
        :pswitch_9
    .end packed-switch
.end method
