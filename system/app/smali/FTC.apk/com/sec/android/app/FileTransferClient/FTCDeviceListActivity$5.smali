.class Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$5;
.super Ljava/lang/Object;
.source "FTCDeviceListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->askNetworkConnection()V
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
    .line 1269
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$5;->this$0:Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1272
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity :DIALOG_DISCONNECT_NEWORK press cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void
.end method