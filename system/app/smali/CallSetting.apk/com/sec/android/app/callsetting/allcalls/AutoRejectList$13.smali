.class Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->alertdialogAutoRejectNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)V
    .registers 2
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList$13;->this$0:Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->autoRejectNumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$800(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_10

    const/4 v0, 0x2

    :cond_10
    #setter for: Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->mState:I
    invoke-static {v1, v0}, Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;->access$202(Lcom/sec/android/app/callsetting/allcalls/AutoRejectList;I)I

    .line 685
    return-void
.end method
