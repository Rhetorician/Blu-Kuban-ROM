.class final Lcom/coremobility/app/vnotes/jn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jn;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_13

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->P()I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jn;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    :cond_12
    :goto_12
    return v0

    :cond_13
    const/16 v1, 0x54

    if-eq p2, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_12
.end method
