.class final Lcom/coremobility/app/vnotes/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/an;->b:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/an;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/an;->a:Landroid/app/Activity;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(ZLandroid/content/Context;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->d()V

    return-void
.end method
