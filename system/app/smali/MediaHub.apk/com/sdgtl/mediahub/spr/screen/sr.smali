.class final Lcom/sdgtl/mediahub/spr/screen/sr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sr;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sr;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->showDialog(I)V

    return-void
.end method