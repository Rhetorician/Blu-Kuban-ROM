.class Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 58
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 59
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mAirplaneMode:Z
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$002(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)Z

    .line 60
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mAirplaneMode:Z
    invoke-static {v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v3

    #calls: Lcom/android/settings/bluetooth/BluetoothEnabler;->handleAirplaneMode(Z)V
    invoke-static {v2, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$100(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)V

    .line 62
    :cond_30
    return-void
.end method
