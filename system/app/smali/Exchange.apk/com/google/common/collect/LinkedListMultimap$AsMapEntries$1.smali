.class Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

.field final synthetic val$keyIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 818
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;,"Lcom/google/common/collect/LinkedListMultimap$AsMapEntries.1;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries;

    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 820
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;,"Lcom/google/common/collect/LinkedListMultimap$AsMapEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 818
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;,"Lcom/google/common/collect/LinkedListMultimap$AsMapEntries.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;,"Lcom/google/common/collect/LinkedListMultimap$AsMapEntries.1;"
    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 825
    .local v0, key:Ljava/lang/Object;,"TK;"
    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;Ljava/lang/Object;)V

    return-object v1
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 837
    .local p0, this:Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;,"Lcom/google/common/collect/LinkedListMultimap$AsMapEntries.1;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$AsMapEntries$1;->val$keyIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 838
    return-void
.end method
