.class Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MsgMediaContextMenuClickListner"
.end annotation


# instance fields
.field private mSlideIndex:I

.field private mType:I

.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MmsRichContainer;II)V
    .registers 4
    .parameter
    .parameter "slideIndex"
    .parameter "type"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    .line 583
    iput p3, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    .line 585
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_96

    .line 625
    :cond_a
    :goto_a
    return v7

    .line 591
    :pswitch_b
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 592
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    invoke-static {v2, v7, v3, v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 594
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 598
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_25
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 599
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 601
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    .line 605
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_40
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 606
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isAnimationEnable()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    if-eq v2, v8, :cond_5c

    .line 607
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v3, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    #calls: Lcom/android/mms/ui/MmsRichContainer;->setDeleteAnimation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->access$200(Lcom/android/mms/ui/MmsRichContainer;II)V

    goto :goto_a

    .line 609
    :cond_5c
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/MmsRichContainer;->access$100(Lcom/android/mms/ui/MmsRichContainer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    iget v5, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    invoke-static {v2, v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 611
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 612
    iget v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mType:I

    if-ne v2, v8, :cond_a

    .line 613
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v2, v2, Lcom/android/mms/ui/MmsRichContainer;->mTextTop:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget-object v3, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    iget v4, p0, Lcom/android/mms/ui/MmsRichContainer$MsgMediaContextMenuClickListner;->mSlideIndex:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MmsRichContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    #calls: Lcom/android/mms/ui/MmsRichContainer;->getFocusedMediaView(Landroid/view/View;)Landroid/widget/RelativeLayout;
    invoke-static {v2, v3}, Lcom/android/mms/ui/MmsRichContainer;->access$300(Lcom/android/mms/ui/MmsRichContainer;Landroid/view/View;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 615
    .local v0, mediaView:Landroid/widget/RelativeLayout;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 616
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto/16 :goto_a

    .line 589
    nop

    :pswitch_data_96
    .packed-switch 0x9
        :pswitch_b
        :pswitch_25
        :pswitch_40
    .end packed-switch
.end method