.class Lcom/google/common/collect/StandardRowSortedTable;
.super Lcom/google/common/collect/StandardTable;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/js;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient rowKeySet:Ljava/util/SortedSet;

.field private transient rowMap:Lcom/google/common/collect/ko;


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lcom/google/common/base/am;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/StandardRowSortedTable;)Ljava/util/SortedMap;
    .registers 2
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/common/collect/StandardRowSortedTable;->sortedBackingMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private sortedBackingMap()Ljava/util/SortedMap;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->backingMap:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet:Ljava/util/SortedSet;

    .line 76
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/kn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/kn;-><init>(Lcom/google/common/collect/StandardRowSortedTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowKeySet:Ljava/util/SortedSet;

    :cond_c
    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/StandardRowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowMap:Lcom/google/common/collect/ko;

    .line 129
    if-nez v0, :cond_c

    new-instance v0, Lcom/google/common/collect/ko;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ko;-><init>(Lcom/google/common/collect/StandardRowSortedTable;B)V

    iput-object v0, p0, Lcom/google/common/collect/StandardRowSortedTable;->rowMap:Lcom/google/common/collect/ko;

    :cond_c
    return-object v0
.end method
