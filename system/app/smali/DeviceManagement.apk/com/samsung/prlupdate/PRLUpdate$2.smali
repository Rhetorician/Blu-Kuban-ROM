.class Lcom/samsung/prlupdate/PRLUpdate$2;
.super Ljava/lang/Object;
.source "PRLUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/prlupdate/PRLUpdate;->moveToHfaPrlDoneWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/prlupdate/PRLUpdate;


# direct methods
.method constructor <init>(Lcom/samsung/prlupdate/PRLUpdate;)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/samsung/prlupdate/PRLUpdate$2;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$2;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #getter for: Lcom/samsung/prlupdate/PRLUpdate;->hfaPrlWinBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$100(Lcom/samsung/prlupdate/PRLUpdate;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$2;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    const/4 v1, 0x6

    #setter for: Lcom/samsung/prlupdate/PRLUpdate;->sessionstatus:I
    invoke-static {v0, v1}, Lcom/samsung/prlupdate/PRLUpdate;->access$402(Lcom/samsung/prlupdate/PRLUpdate;I)I

    .line 211
    iget-object v0, p0, Lcom/samsung/prlupdate/PRLUpdate$2;->this$0:Lcom/samsung/prlupdate/PRLUpdate;

    #calls: Lcom/samsung/prlupdate/PRLUpdate;->prlDone()V
    invoke-static {v0}, Lcom/samsung/prlupdate/PRLUpdate;->access$300(Lcom/samsung/prlupdate/PRLUpdate;)V

    .line 212
    return-void
.end method
