.class final Lcom/google/common/cache/p;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/cache/n;


# direct methods
.method constructor <init>(Lcom/google/common/cache/n;Lcom/google/common/cache/x;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3875
    iput-object p1, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/n;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 3875
    check-cast p1, Lcom/google/common/cache/x;

    invoke-interface {p1}, Lcom/google/common/cache/x;->getNextInAccessQueue()Lcom/google/common/cache/x;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/cache/p;->a:Lcom/google/common/cache/n;

    iget-object v1, v1, Lcom/google/common/cache/n;->a:Lcom/google/common/cache/x;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    :cond_d
    return-object v0
.end method
