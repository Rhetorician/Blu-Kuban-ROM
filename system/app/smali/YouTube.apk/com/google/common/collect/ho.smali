.class final Lcom/google/common/collect/ho;
.super Lcom/google/common/collect/hk;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/collect/he;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1254
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/hk;-><init>(Ljava/util/Map;Lcom/google/common/collect/he;)V

    .line 1255
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final firstKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ho;->b:Lcom/google/common/collect/he;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final lastKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ho;->b:Lcom/google/common/collect/he;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .parameter

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/google/common/collect/ho;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ho;->b:Lcom/google/common/collect/he;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/collect/he;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
