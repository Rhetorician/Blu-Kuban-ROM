.class Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;
.super Ljava/lang/Object;
.source "PopupResetNetworkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/PopupResetNetworkActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/PopupResetNetworkActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/PopupResetNetworkActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;->this$0:Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;->this$0:Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/swift/service/SwiftService;->STOP_EVENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;->this$0:Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/swift/applet/AppletActivity;->BUTTONCLICK_EVENT:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/samsung/swift/applet/PopupResetNetworkActivity$2;->this$0:Lcom/samsung/swift/applet/PopupResetNetworkActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/PopupResetNetworkActivity;->finish()V

    .line 211
    return-void
.end method