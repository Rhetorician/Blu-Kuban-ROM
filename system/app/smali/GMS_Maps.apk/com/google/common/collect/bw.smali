.class public final Lcom/google/common/collect/bw;
.super Lcom/google/common/collect/bt;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/google/common/collect/bt;-><init>()V

    .line 568
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/ArrayList;

    .line 574
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/google/common/collect/bt;
    .registers 3
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bw;->b(Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/bt;
    .registers 3
    .parameter

    .prologue
    .line 567
    invoke-virtual {p0, p1}, Lcom/google/common/collect/bw;->b([Ljava/lang/Object;)Lcom/google/common/collect/bw;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/bw;
    .registers 4
    .parameter

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/bw;
    .registers 5
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/common/collect/bw;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/bw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 615
    invoke-super {p0, p1}, Lcom/google/common/collect/bt;->a([Ljava/lang/Object;)Lcom/google/common/collect/bt;

    .line 616
    return-object p0
.end method
