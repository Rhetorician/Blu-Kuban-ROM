.class final LaiV;
.super Lalu;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalu",
        "<",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, LaiV;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lalu;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, LaiV;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, LaiV;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 501
    invoke-virtual {p0}, LaiV;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
