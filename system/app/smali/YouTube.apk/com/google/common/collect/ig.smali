.class final Lcom/google/common/collect/ig;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$MapMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$MapMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/google/common/collect/ig;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1228
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_8

    move v0, v1

    .line 1236
    :goto_7
    return v0

    .line 1231
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1232
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-nez v0, :cond_14

    move v0, v1

    .line 1233
    goto :goto_7

    .line 1235
    :cond_14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1236
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v2, :cond_36

    iget-object v3, p0, Lcom/google/common/collect/ig;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/common/collect/Multimaps$MapMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v2

    goto :goto_7

    :cond_36
    move v0, v1

    goto :goto_7
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 1201
    new-instance v0, Lcom/google/common/collect/ih;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ih;-><init>(Lcom/google/common/collect/ig;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1241
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_8

    move v0, v1

    .line 1249
    :goto_7
    return v0

    .line 1244
    :cond_8
    check-cast p1, Ljava/util/Map$Entry;

    .line 1245
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Set;

    if-nez v0, :cond_14

    move v0, v1

    .line 1246
    goto :goto_7

    .line 1248
    :cond_14
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1249
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v2, :cond_40

    iget-object v3, p0, Lcom/google/common/collect/ig;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v3, v3, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    move v0, v2

    goto :goto_7

    :cond_40
    move v0, v1

    goto :goto_7
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/common/collect/ig;->a:Lcom/google/common/collect/Multimaps$MapMultimap;

    iget-object v0, v0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
