.class final Lcom/google/common/collect/fd;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/fc;


# direct methods
.method constructor <init>(Lcom/google/common/collect/fc;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/google/common/collect/fd;->b:Lcom/google/common/collect/fc;

    iput-object p2, p0, Lcom/google/common/collect/fd;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/common/collect/fd;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/common/collect/fd;->b:Lcom/google/common/collect/fc;

    iget-object v0, v0, Lcom/google/common/collect/fc;->b:Lcom/google/common/collect/fb;

    iget-object v0, v0, Lcom/google/common/collect/fb;->a:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/fd;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
