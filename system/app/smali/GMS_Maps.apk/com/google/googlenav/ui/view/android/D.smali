.class final Lcom/google/googlenav/ui/view/android/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/p;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/p;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/D;->a:Lcom/google/googlenav/ui/p;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/D;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/D;->a:Lcom/google/googlenav/ui/p;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/D;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x4

    const-string v1, "mb"

    const-string v2, "cs"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/googlenav/ui/view/android/C;->g()V

    return-void
.end method