.class Lcom/google/common/collect/RegularImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final map:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$Values;,"Lcom/google/common/collect/RegularImmutableMap$Values<TV;>;"
    .local p1, map:Lcom/google/common/collect/RegularImmutableMap;,"Lcom/google/common/collect/RegularImmutableMap<*TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 182
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "target"

    .prologue
    .line 200
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$Values;,"Lcom/google/common/collect/RegularImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$Values;,"Lcom/google/common/collect/RegularImmutableMap$Values<TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$Values$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$Values$1;-><init>(Lcom/google/common/collect/RegularImmutableMap$Values;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 176
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$Values;,"Lcom/google/common/collect/RegularImmutableMap$Values<TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$Values;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 185
    .local p0, this:Lcom/google/common/collect/RegularImmutableMap$Values;,"Lcom/google/common/collect/RegularImmutableMap$Values<TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
