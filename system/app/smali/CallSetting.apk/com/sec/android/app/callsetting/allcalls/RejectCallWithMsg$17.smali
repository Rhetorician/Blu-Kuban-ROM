.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .registers 2
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1084
    packed-switch p2, :pswitch_data_74

    .line 1108
    :goto_3
    return-void

    .line 1087
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$302(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 1088
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$700(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1090
    .local v3, update_id:I
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$402(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1092
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v4, "com.sec.android.app.callsetting"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v2, pkgName:Ljava/lang/String;
    const-string v4, ".allcalls.RejectMessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1095
    const-string v4, "SELECTED_MESSAGE"

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$400(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    const-string v4, "UPDATE_MODE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1097
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v5, 0x3

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 1103
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v3           #update_id:I
    :pswitch_6d
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$17;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteDialog()V

    goto :goto_3

    .line 1084
    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6d
    .end packed-switch
.end method
