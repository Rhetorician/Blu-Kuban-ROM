.class final Lcom/coremobility/app/vnotes/dg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/dg;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/dg;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    return-void
.end method
