.class final Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;
.super Lcom/google/common/collect/Tables$UnmodifiableTable;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/js;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/js;)V
    .registers 2
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/google/common/collect/Tables$UnmodifiableTable;-><init>(Lcom/google/common/collect/lz;)V

    .line 714
    return-void
.end method


# virtual methods
.method protected final delegate()Lcom/google/common/collect/js;
    .registers 2

    .prologue
    .line 718
    invoke-super {p0}, Lcom/google/common/collect/Tables$UnmodifiableTable;->delegate()Lcom/google/common/collect/lz;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/js;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Lcom/google/common/collect/lz;
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/js;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/js;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowKeySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final rowKeySet()Ljava/util/SortedSet;
    .registers 2

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/js;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/js;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic rowMap()Ljava/util/Map;
    .registers 2

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public final rowMap()Ljava/util/SortedMap;
    .registers 3

    .prologue
    .line 723
    invoke-static {}, Lcom/google/common/collect/Tables;->a()Lcom/google/common/base/v;

    move-result-object v0

    .line 724
    invoke-virtual {p0}, Lcom/google/common/collect/Tables$UnmodifiableRowSortedMap;->delegate()Lcom/google/common/collect/js;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/js;->rowMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/SortedMap;Lcom/google/common/base/v;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
