.class final Lcom/sdgtl/mediahub/spr/screen/mp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/mn;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/mn;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->a(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->c(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_71

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->b(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v2, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->c(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :goto_6d
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_71
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->d(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    goto :goto_6d

    :cond_7b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mp;->a:Lcom/sdgtl/mediahub/spr/screen/mn;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/mn;->a(Lcom/sdgtl/mediahub/spr/screen/mn;)Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->d(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    goto :goto_6d
.end method