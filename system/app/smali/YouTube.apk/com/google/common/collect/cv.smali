.class final Lcom/google/common/collect/cv;
.super Lcom/google/common/collect/gf;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 889
    iput-object p1, p0, Lcom/google/common/collect/cv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/gf;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/google/common/collect/cv;->a:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/google/common/collect/cv;->a:Z

    if-eqz v0, :cond_a

    .line 896
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 898
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/cv;->a:Z

    .line 899
    iget-object v0, p0, Lcom/google/common/collect/cv;->b:Ljava/lang/Object;

    return-object v0
.end method