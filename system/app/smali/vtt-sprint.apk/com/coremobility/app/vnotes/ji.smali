.class final Lcom/coremobility/app/vnotes/ji;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ji;->a:Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ji;->a:Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->m(Landroid/app/Activity;)V

    return-void
.end method
