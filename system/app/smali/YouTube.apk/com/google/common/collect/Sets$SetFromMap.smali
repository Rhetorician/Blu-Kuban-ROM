.class Lcom/google/common/collect/Sets$SetFromMap;
.super Ljava/util/AbstractSet;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final m:Ljava/util/Map;

.field private transient s:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 4
    .parameter

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 463
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-string v1, "Map is non-empty"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 464
    iput-object p1, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    .line 465
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    .line 466
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 521
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 522
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    .line 523
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 470
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 502
    if-eq p0, p1, :cond_a

    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/common/collect/Sets$SetFromMap;->s:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
