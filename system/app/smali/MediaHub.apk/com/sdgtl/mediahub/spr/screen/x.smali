.class final Lcom/sdgtl/mediahub/spr/screen/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/x;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x3

    if-ne v0, p2, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/x;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->ab(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    :cond_8
    const/4 v0, 0x0

    return v0
.end method