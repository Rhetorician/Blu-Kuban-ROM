.class final Lcom/google/common/collect/as;
.super Lcom/google/common/collect/mc;
.source "SourceFile"


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/common/collect/ar;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ar;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iput p2, p0, Lcom/google/common/collect/as;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/mc;-><init>()V

    .line 477
    iget v0, p0, Lcom/google/common/collect/as;->c:I

    iget-object v1, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iget-object v1, v1, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    iget-object v1, v1, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/as;->a:I

    .line 478
    iget v0, p0, Lcom/google/common/collect/as;->c:I

    iget-object v1, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iget-object v1, v1, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    iget-object v1, v1, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/as;->b:I

    return-void
.end method


# virtual methods
.method public final getColumnKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iget-object v0, v0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    iget-object v0, v0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->columnList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/as;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getRowKey()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iget-object v0, v0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    iget-object v0, v0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/as;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/common/collect/as;->d:Lcom/google/common/collect/ar;

    iget-object v0, v0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/aq;

    iget-object v0, v0, Lcom/google/common/collect/aq;->a:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->array:[[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$300(Lcom/google/common/collect/ArrayTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/as;->a:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/google/common/collect/as;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method
