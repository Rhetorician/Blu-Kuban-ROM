.class Lcom/google/googlenav/ui/wizard/aW;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aT;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aW;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aW;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aT;->a(Lcom/google/googlenav/ui/wizard/aT;)V

    return-void
.end method