.class LaY/aQ;
.super Lbb/b;


# instance fields
.field final synthetic a:I

.field final synthetic b:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;I)V
    .registers 3

    iput-object p1, p0, LaY/aQ;->b:LaY/aG;

    iput p2, p0, LaY/aQ;->a:I

    invoke-direct {p0}, Lbb/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 5

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    invoke-static {v0}, LaY/aG;->c(LaY/aG;)V

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    const-string v1, "m"

    iget v2, p0, LaY/aQ;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaY/aG;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    iget v1, p0, LaY/aQ;->a:I

    invoke-virtual {v0, v1}, LaY/aG;->b(I)V

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaY/aG;->b(Z)V

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaY/aG;->a(ILjava/lang/Object;)V

    iget-object v0, p0, LaY/aQ;->b:LaY/aG;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LaY/aG;->f(I)V

    const/4 v0, 0x1

    return v0
.end method