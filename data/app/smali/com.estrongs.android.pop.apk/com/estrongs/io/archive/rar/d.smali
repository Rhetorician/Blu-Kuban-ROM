.class Lcom/estrongs/io/archive/rar/d;
.super Ljava/lang/Object;

# interfaces
.implements Lde/innosystec/unrar/b;


# instance fields
.field final synthetic a:Lcom/estrongs/io/archive/rar/a;


# direct methods
.method constructor <init>(Lcom/estrongs/io/archive/rar/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/io/archive/rar/d;->a:Lcom/estrongs/io/archive/rar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/estrongs/io/archive/rar/d;->a:Lcom/estrongs/io/archive/rar/a;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/rar/a;->e()Z

    move-result v0

    return v0
.end method
