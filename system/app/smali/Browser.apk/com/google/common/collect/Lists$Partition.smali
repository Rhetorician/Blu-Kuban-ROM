.class Lcom/google/common/collect/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final size:I


# direct methods
.method constructor <init>(Ljava/util/List;I)V
    .registers 3
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, this:Lcom/google/common/collect/Lists$Partition;,"Lcom/google/common/collect/Lists$Partition<TT;>;"
    .local p1, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 478
    iput-object p1, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    .line 479
    iput p2, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    .line 480
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/Lists$Partition;,"Lcom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/List;
    .registers 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 483
    .local p0, this:Lcom/google/common/collect/Lists$Partition;,"Lcom/google/common/collect/Lists$Partition<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$Partition;->size()I

    move-result v1

    .line 484
    .local v1, listSize:I
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 485
    iget v3, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    mul-int v2, p1, v3

    .line 486
    .local v2, start:I
    iget v3, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 487
    .local v0, end:I
    iget-object v3, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-static {v3, v2, v0}, Lcom/google/common/collect/Platform;->subList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 495
    .local p0, this:Lcom/google/common/collect/Lists$Partition;,"Lcom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 491
    .local p0, this:Lcom/google/common/collect/Lists$Partition;,"Lcom/google/common/collect/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/common/collect/Lists$Partition;->size:I

    div-int/2addr v0, v1

    return v0
.end method
