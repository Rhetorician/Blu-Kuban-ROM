.class LK/g;
.super LK/bc;


# instance fields
.field final synthetic a:LK/a;


# direct methods
.method private constructor <init>(LK/a;)V
    .registers 2

    iput-object p1, p0, LK/g;->a:LK/a;

    invoke-direct {p0}, LK/bc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LK/a;LK/b;)V
    .registers 3

    invoke-direct {p0, p1}, LK/g;-><init>(LK/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/g;->a:LK/a;

    invoke-static {v0}, LK/a;->a(LK/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/g;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, LK/g;->a:LK/a;

    invoke-virtual {v0}, LK/a;->clear()V

    return-void
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/g;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, LK/g;->a:LK/a;

    invoke-static {v0}, LK/a;->a(LK/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LK/h;

    invoke-direct {v1, p0, v0}, LK/h;-><init>(LK/g;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/g;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, LK/g;->a:LK/a;

    invoke-static {v0, p1}, LK/a;->a(LK/a;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/g;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/g;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method