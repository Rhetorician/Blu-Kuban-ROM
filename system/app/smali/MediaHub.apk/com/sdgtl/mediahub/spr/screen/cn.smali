.class final Lcom/sdgtl/mediahub/spr/screen/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/cm;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/cm;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/cn;->a:Lcom/sdgtl/mediahub/spr/screen/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method