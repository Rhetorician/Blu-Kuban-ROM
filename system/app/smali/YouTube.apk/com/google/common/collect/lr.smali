.class abstract Lcom/google/common/collect/lr;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/common/collect/lr;->b:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/google/common/collect/lr;-><init>(Lcom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/common/collect/lr;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/lr;->b:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
