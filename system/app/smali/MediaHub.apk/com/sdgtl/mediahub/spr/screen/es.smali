.class final Lcom/sdgtl/mediahub/spr/screen/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadPauseClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/es;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemDownloadPauseClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/es;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/es;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c()V

    return-void
.end method