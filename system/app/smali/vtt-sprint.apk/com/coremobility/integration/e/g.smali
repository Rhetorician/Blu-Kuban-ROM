.class final Lcom/coremobility/integration/e/g;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/e/e;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/e/e;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/integration/e/g;->a:Lcom/coremobility/integration/e/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.coremobility.app.vnotes.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Data1"

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Data2"

    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_Service;->e()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4c

    invoke-static {v1}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    goto :goto_6

    :cond_4c
    iget-object v0, p0, Lcom/coremobility/integration/e/g;->a:Lcom/coremobility/integration/e/e;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/e/e;->a(Landroid/content/Intent;)Z

    goto :goto_6
.end method
