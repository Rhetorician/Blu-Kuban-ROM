.class Lcom/google/googlenav/ui/wizard/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/at;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/at;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aB;->a()V

    .line 296
    return-void
.end method
