.class final Lcom/google/common/collect/lu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/lt;


# direct methods
.method constructor <init>(Lcom/google/common/collect/lt;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Lcom/google/common/collect/lu;->b:Lcom/google/common/collect/lt;

    iput-object p2, p0, Lcom/google/common/collect/lu;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/common/collect/lu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 919
    iget-object v0, p0, Lcom/google/common/collect/lu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ma;

    invoke-interface {v0}, Lcom/google/common/collect/ma;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/common/collect/lu;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 923
    return-void
.end method
