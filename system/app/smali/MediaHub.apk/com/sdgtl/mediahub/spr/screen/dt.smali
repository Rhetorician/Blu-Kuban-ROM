.class final Lcom/sdgtl/mediahub/spr/screen/dt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/ds;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/dj;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/ds;Lcom/sdgtl/mediahub/spr/common/dj;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ds;->a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ds;->a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ds;->a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->g(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->b:Lcom/sdgtl/mediahub/spr/common/dj;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ds;->a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/dt;->a:Lcom/sdgtl/mediahub/spr/screen/ds;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ds;->a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method