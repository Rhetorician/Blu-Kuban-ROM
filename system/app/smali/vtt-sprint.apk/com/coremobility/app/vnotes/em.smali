.class final Lcom/coremobility/app/vnotes/em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/em;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    check-cast p1, Lcom/coremobility/app/customui/b;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/app/vnotes/em;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V

    :cond_11
    return-void
.end method
