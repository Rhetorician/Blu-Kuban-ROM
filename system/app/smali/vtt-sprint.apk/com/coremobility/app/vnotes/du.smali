.class final Lcom/coremobility/app/vnotes/du;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/du;->a:Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/du;->a:Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteForwardForm;->showDialog(I)V

    goto :goto_5

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
