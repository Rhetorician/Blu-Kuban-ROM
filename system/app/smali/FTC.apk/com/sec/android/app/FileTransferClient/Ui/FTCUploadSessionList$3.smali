.class Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;
.super Ljava/lang/Object;
.source "FTCUploadSessionList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    #calls: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->cancelUpload()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$000(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/16 v1, 0x1389

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->removeDialog(I)V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mShowUploadPopup:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$302(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Z)Z

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList$3;->this$0:Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->mCurrentSession:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;->access$202(Lcom/sec/android/app/FileTransferClient/Ui/FTCUploadSessionList;Lcom/sec/android/app/FileTransferClient/Data/SessionData;)Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 378
    return-void
.end method