.class final Lcom/coremobility/app/vnotes/jc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;Z)Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v1

    if-ge v0, v1, :cond_5e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d001f

    iget-object v2, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jc;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5e
    return-void
.end method
