.class Lcom/google/common/collect/en;
.super Lcom/google/common/base/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ee;


# instance fields
.field final b:Lcom/google/common/collect/bj;

.field final c:I

.field volatile d:Lcom/google/common/collect/em;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    sget-object v0, Lcom/google/common/collect/ed;->a:Lcom/google/common/base/d;

    invoke-direct {p0, p2, v0}, Lcom/google/common/base/j;-><init>(Ljava/lang/Object;Lcom/google/common/base/d;)V

    .line 1013
    invoke-static {}, Lcom/google/common/collect/MapMaker;->c()Lcom/google/common/collect/em;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/en;->d:Lcom/google/common/collect/em;

    .line 997
    iput-object p1, p0, Lcom/google/common/collect/en;->b:Lcom/google/common/collect/bj;

    .line 998
    iput p3, p0, Lcom/google/common/collect/en;->c:I

    .line 999
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/google/common/collect/en;->b:Lcom/google/common/collect/bj;

    invoke-interface {v0, p0}, Lcom/google/common/collect/bj;->removeEntry(Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method public final a(Lcom/google/common/collect/em;)V
    .registers 2
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/common/collect/en;->d:Lcom/google/common/collect/em;

    .line 1021
    return-void
.end method

.method public b()Lcom/google/common/collect/ee;
    .registers 2

    .prologue
    .line 1026
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lcom/google/common/collect/em;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/collect/en;->d:Lcom/google/common/collect/em;

    return-object v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/common/collect/en;->b:Lcom/google/common/collect/bj;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/common/collect/bj;->removeEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 1029
    iget v0, p0, Lcom/google/common/collect/en;->c:I

    return v0
.end method

.method public final f()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/common/collect/en;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method