.class Lcom/a/a/a/g;
.super Lcom/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/a/a/a/h;Lcom/a/a/a/j;)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/a/a/a/e;-><init>(Lcom/a/a/a/h;CLcom/a/a/a/j;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/a/a/a/g;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/g;->j:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/a/a/a;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/a/a/a/g;->j:Z

    iput-boolean v1, p0, Lcom/a/a/a/g;->e:Z

    iget-object v0, p0, Lcom/a/a/a/g;->i:Lcom/a/a/a/m;

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/a/a/a/g;->g()V

    iget-boolean v0, p0, Lcom/a/a/a/g;->h:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "output already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-boolean v2, p0, Lcom/a/a/a/g;->h:Z

    new-instance v0, Lcom/a/a/a/n;

    iget-object v1, p0, Lcom/a/a/a/g;->a:Lcom/a/a/a/h;

    iget v1, v1, Lcom/a/a/a/h;->d:I

    invoke-direct {v0, v1, p0}, Lcom/a/a/a/n;-><init>(ILcom/a/a/a/l;)V

    iput-object v0, p0, Lcom/a/a/a/g;->g:Lcom/a/a/a/n;

    iput-boolean v2, p0, Lcom/a/a/a/g;->e:Z

    iget-object v0, p0, Lcom/a/a/a/g;->g:Lcom/a/a/a/n;

    return-object v0
.end method
