.class Lcom/sprint/ce/updater/UpdaterMain$4$1;
.super Ljava/lang/Object;
.source "UpdaterMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/ce/updater/UpdaterMain$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/ce/updater/UpdaterMain$4;


# direct methods
.method constructor <init>(Lcom/sprint/ce/updater/UpdaterMain$4;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 535
    sget-boolean v0, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "SprintUpdater"

    const-string v1, "mUpdateCheckDoneAlt 1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_d
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mNoPrompt:Z

    if-eqz v0, :cond_66

    .line 537
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    const-string v1, "downloading"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 538
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 541
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 542
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iput-boolean v3, v0, Lcom/sprint/ce/updater/UpdaterMain;->mSuccess:Z

    .line 543
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    const v1, 0x7f050023

    const v2, 0x7f050011

    const v3, 0x7f050004

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 544
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/ce/updater/UpdaterMain;->downloadAndInstallUpdatesAsync()V

    .line 550
    :goto_65
    return-void

    .line 546
    :cond_66
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    const-string v1, "initialized"

    iput-object v1, v0, Lcom/sprint/ce/updater/UpdaterMain;->mState:Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    const v1, 0x7f050013

    const v2, 0x7f050010

    #calls: Lcom/sprint/ce/updater/UpdaterMain;->setViewStatus(IIIZ)V
    invoke-static {v0, v1, v2, v3, v3}, Lcom/sprint/ce/updater/UpdaterMain;->access$1(Lcom/sprint/ce/updater/UpdaterMain;IIIZ)V

    .line 548
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v0}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v0

    iget-object v0, v0, Lcom/sprint/ce/updater/UpdaterMain;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterMain$4$1;->this$1:Lcom/sprint/ce/updater/UpdaterMain$4;

    #getter for: Lcom/sprint/ce/updater/UpdaterMain$4;->this$0:Lcom/sprint/ce/updater/UpdaterMain;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain$4;->access$0(Lcom/sprint/ce/updater/UpdaterMain$4;)Lcom/sprint/ce/updater/UpdaterMain;

    move-result-object v1

    #getter for: Lcom/sprint/ce/updater/UpdaterMain;->mDownloadAndInstall:Landroid/view/View$OnClickListener;
    invoke-static {v1}, Lcom/sprint/ce/updater/UpdaterMain;->access$6(Lcom/sprint/ce/updater/UpdaterMain;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_65
.end method
