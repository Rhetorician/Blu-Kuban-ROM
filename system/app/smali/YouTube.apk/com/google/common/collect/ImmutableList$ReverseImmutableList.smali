.class Lcom/google/common/collect/ImmutableList$ReverseImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# instance fields
.field private final transient forwardList:Lcom/google/common/collect/ImmutableList;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 409
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    .line 410
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    .line 411
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    return v0
.end method

.method private reverseIndex(I)I
    .registers 3
    .parameter

    .prologue
    .line 414
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private reversePosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 418
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 450
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(II)I

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 435
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 404
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 440
    if-ltz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public listIterator(I)Lcom/google/common/collect/mu;
    .registers 4
    .parameter

    .prologue
    .line 455
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->b(II)I

    .line 456
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    .line 458
    new-instance v1, Lcom/google/common/collect/dk;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/dk;-><init>(Lcom/google/common/collect/ImmutableList$ReverseImmutableList;Lcom/google/common/collect/mu;)V

    return-object v1
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    .prologue
    .line 404
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/ImmutableList;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 486
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 444
    iget v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->size:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/ag;->a(III)V

    .line 445
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->reversePosition(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$ReverseImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
