.class final Lcom/coremobility/app/vnotes/ip;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ip;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_10

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ip;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;Z)Z

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
