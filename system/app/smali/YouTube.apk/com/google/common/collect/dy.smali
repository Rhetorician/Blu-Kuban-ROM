.class public final Lcom/google/common/collect/dy;
.super Lcom/google/common/collect/dm;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/common/collect/dm;-><init>()V

    .line 359
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    .line 360
    return-void
.end method


# virtual methods
.method public final synthetic a()Lcom/google/common/collect/ImmutableMap;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/dy;->b()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dm;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/dy;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableSortedMap;
    .registers 4

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSortedMap;->sortEntries(Ljava/util/List;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$000(Ljava/util/List;Ljava/util/Comparator;)V

    .line 407
    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    #calls: Lcom/google/common/collect/ImmutableSortedMap;->validateEntries(Ljava/util/List;Ljava/util/Comparator;)V
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap;->access$100(Ljava/util/List;Ljava/util/Comparator;)V

    .line 408
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/dy;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/dy;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/collect/dy;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    return-object p0
.end method
