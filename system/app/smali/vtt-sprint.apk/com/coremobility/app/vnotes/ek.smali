.class final Lcom/coremobility/app/vnotes/ek;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ek;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    check-cast p1, Lcom/coremobility/app/customui/b;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ek;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V

    :cond_11
    invoke-static {}, Lcom/coremobility/integration/i/f;->b()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ek;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;)I

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ek;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0xf

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ek;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_30
.end method
