.class final Lcom/coremobility/app/vnotes/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/app/vnotes/k;->b:Lcom/coremobility/app/vnotes/a;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/k;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_12

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_12

    iget-object v1, p0, Lcom/coremobility/app/vnotes/k;->a:Landroid/app/Activity;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->removeDialog(I)V

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
