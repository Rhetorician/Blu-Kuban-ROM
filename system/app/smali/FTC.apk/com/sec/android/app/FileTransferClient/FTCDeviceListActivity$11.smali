.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$1802(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    const v2, 0x7f060030

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1469
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    .line 1470
    return-void
.end method