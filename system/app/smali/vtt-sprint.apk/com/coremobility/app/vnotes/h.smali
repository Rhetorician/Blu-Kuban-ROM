.class final Lcom/coremobility/app/vnotes/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/be;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Lcom/coremobility/app/vnotes/be;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/app/vnotes/h;->c:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/h;->a:Lcom/coremobility/app/vnotes/be;

    iput-object p3, p0, Lcom/coremobility/app/vnotes/h;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const/16 v1, 0x6a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/h;->a:Lcom/coremobility/app/vnotes/be;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/h;->a:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->b(I)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/h;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_b
.end method
