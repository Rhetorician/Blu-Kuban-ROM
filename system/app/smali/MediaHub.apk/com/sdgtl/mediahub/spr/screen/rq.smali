.class final Lcom/sdgtl/mediahub/spr/screen/rq;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ee

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_dc

    :cond_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    goto :goto_7

    :cond_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto :goto_7

    :cond_50
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v2, "meassage_again"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_72

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    :cond_72
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const v2, 0x7f0a01b8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->f:Landroid/os/Handler;

    invoke-static {v1, v0, v4, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7

    :cond_87
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    const-string v1, "09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_7

    :cond_b0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->e:Landroid/os/Handler;

    invoke-static {v1, v0, v3, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_7

    :cond_dc
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/rq;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_7

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method