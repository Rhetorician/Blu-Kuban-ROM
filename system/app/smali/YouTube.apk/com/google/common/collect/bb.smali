.class final Lcom/google/common/collect/bb;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/common/collect/bb;->b:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 718
    iput p2, p0, Lcom/google/common/collect/bb;->a:I

    .line 719
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 722
    new-instance v0, Lcom/google/common/collect/bc;

    invoke-virtual {p0}, Lcom/google/common/collect/bb;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bc;-><init>(Lcom/google/common/collect/bb;I)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/google/common/collect/bb;->b:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
