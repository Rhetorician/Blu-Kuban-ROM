.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 898
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v1

    if-eq v1, v3, :cond_17

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$200(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_9f

    .line 900
    :cond_17
    const-string v1, "AutoReject"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v5, v5, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string v1, "AutoReject"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%08X"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    if-lez v1, :cond_a0

    move v1, v2

    :goto_74
    iput v1, v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    .line 904
    const v1, 0x7f080017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 905
    .local v0, checkbox:Landroid/widget/CheckBox;
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v1, :cond_a2

    :goto_85
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 907
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    if-nez v1, :cond_a4

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-virtual {v1}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "unknown_mode"

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 918
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_9f
    :goto_9f
    return-void

    :cond_a0
    move v1, v3

    .line 902
    goto :goto_74

    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    :cond_a2
    move v3, v2

    .line 905
    goto :goto_85

    .line 913
    :cond_a4
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->this$1:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;

    iget-object v1, v1, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget v3, v3, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->checked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectAdapter$1;->val$item:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;

    iget-object v4, v4, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #calls: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->updateAutoRejectNumber(Ljava/lang/String;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$1400(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;Ljava/lang/String;Ljava/lang/Integer;I)V

    goto :goto_9f
.end method
