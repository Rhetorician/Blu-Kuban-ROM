.class final Lcom/google/common/collect/cl;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/common/collect/cl;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    iput-object p2, p0, Lcom/google/common/collect/cl;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/common/collect/cl;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 453
    :try_start_1
    iget-object v1, p0, Lcom/google/common/collect/cl;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_a
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 457
    :goto_7
    return v0

    :catch_8
    move-exception v1

    goto :goto_7

    .line 455
    :catch_a
    move-exception v1

    goto :goto_7
.end method
