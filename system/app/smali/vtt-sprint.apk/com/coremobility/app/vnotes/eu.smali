.class final Lcom/coremobility/app/vnotes/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/eu;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eu;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->finish()V

    return-void
.end method
