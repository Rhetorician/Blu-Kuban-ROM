.class Lcom/google/googlenav/ui/view/dialog/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aV;

.field final synthetic b:Lcom/google/googlenav/ui/view/dialog/bK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bK;Lcom/google/googlenav/aV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bN;->b:Lcom/google/googlenav/ui/view/dialog/bK;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/bN;->a:Lcom/google/googlenav/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bN;->b:Lcom/google/googlenav/ui/view/dialog/bK;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bK;->a(Lcom/google/googlenav/ui/view/dialog/bK;)Lcom/google/googlenav/ui/wizard/hZ;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bN;->a:Lcom/google/googlenav/aV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/hZ;->b(Lcom/google/googlenav/aV;)V

    .line 152
    return-void
.end method
