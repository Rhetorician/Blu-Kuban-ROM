.class final Lcom/coremobility/app/vnotes/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Lcom/coremobility/app/vnotes/be;ILandroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/coremobility/app/vnotes/am;->d:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/am;->a:Lcom/coremobility/app/vnotes/be;

    iput p3, p0, Lcom/coremobility/app/vnotes/am;->b:I

    iput-object p4, p0, Lcom/coremobility/app/vnotes/am;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->e(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/am;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/app/vnotes/am;->a:Lcom/coremobility/app/vnotes/be;

    iget v1, p0, Lcom/coremobility/app/vnotes/am;->b:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/coremobility/app/vnotes/am;->c:Landroid/app/Activity;

    iget v1, p0, Lcom/coremobility/app/vnotes/am;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_f
.end method
