.class Lbd/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:Lbd/s;


# direct methods
.method constructor <init>(Lbd/s;Lcom/google/googlenav/ui/p;)V
    .registers 3

    iput-object p1, p0, Lbd/t;->b:Lbd/s;

    iput-object p2, p0, Lbd/t;->a:Lcom/google/googlenav/ui/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/t;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x90c

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method