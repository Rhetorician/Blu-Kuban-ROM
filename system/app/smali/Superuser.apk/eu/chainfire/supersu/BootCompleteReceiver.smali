.class public Leu/chainfire/supersu/BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "boot_complete"

    invoke-static {p1, v0}, Leu/chainfire/supersu/SuperUserIntentService;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
