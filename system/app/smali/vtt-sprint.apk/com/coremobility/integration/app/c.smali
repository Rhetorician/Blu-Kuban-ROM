.class final Lcom/coremobility/integration/app/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;I)V
    .registers 8

    const/16 v0, 0x1388

    const/4 v4, 0x0

    sget-boolean v1, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-eqz v1, :cond_c

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, p0}, Lcom/coremobility/integration/app/e;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_c
    if-lez p2, :cond_35

    const/4 v1, 0x1

    sput-boolean v1, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-le p2, v0, :cond_2e

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockService timer must less than 5000ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    move p2, v0

    :cond_2e
    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Lcom/coremobility/integration/app/e;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_34
    :goto_34
    return-void

    :cond_35
    sget-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    if-eqz v0, :cond_34

    sput-boolean v4, Lcom/coremobility/integration/app/CM_Service;->a:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_34
.end method

.method public final run()V
    .registers 3

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->b()Lcom/coremobility/integration/app/i;

    move-result-object v1

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    monitor-enter v1

    const/4 v0, 0x0

    :try_start_9
    sput-boolean v0, Lcom/coremobility/integration/app/CM_Service;->a:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_10

    goto :goto_6

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method
