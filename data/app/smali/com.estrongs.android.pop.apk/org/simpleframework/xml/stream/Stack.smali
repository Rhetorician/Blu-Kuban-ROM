.class Lorg/simpleframework/xml/stream/Stack;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bottom()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/Stack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public top()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method