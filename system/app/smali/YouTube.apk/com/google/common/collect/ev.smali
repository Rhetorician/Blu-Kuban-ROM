.class final Lcom/google/common/collect/ev;
.super Ljava/util/AbstractSequentialList;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .registers 2
    .parameter

    .prologue
    .line 846
    iput-object p1, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public final listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter

    .prologue
    .line 852
    new-instance v0, Lcom/google/common/collect/fl;

    iget-object v1, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/fl;-><init>(Lcom/google/common/collect/LinkedListMultimap;I)V

    .line 853
    new-instance v1, Lcom/google/common/collect/ew;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ew;-><init>(Lcom/google/common/collect/ev;Lcom/google/common/collect/fl;)V

    return-object v1
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/google/common/collect/ev;->a:Lcom/google/common/collect/LinkedListMultimap;

    #getter for: Lcom/google/common/collect/LinkedListMultimap;->keyCount:Lcom/google/common/collect/iq;
    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/iq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/iq;->size()I

    move-result v0

    return v0
.end method
