.class final Lcom/coremobility/app/vnotes/hu;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Z

    goto :goto_5

    :pswitch_18
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_35
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->finish()V

    goto :goto_5

    :pswitch_3b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hu;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->showDialog(I)V

    goto :goto_5

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
        :pswitch_3b
    .end packed-switch
.end method
