.class final Lcom/coremobility/app/vnotes/gy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gy;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gy;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gy;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    return-void
.end method