.class Lcom/google/common/collect/RegularImmutableMap$EntrySet;
.super Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;
.source "SourceFile"


# instance fields
.field final transient map:Lcom/google/common/collect/RegularImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;
    invoke-static {p1}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Ljava/util/Map$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    .line 131
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    .line 135
    check-cast p1, Ljava/util/Map$Entry;

    .line 136
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 139
    :cond_1e
    return v0
.end method