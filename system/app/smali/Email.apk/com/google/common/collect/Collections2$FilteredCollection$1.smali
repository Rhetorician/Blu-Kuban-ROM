.class Lcom/google/common/collect/Collections2$FilteredCollection$1;
.super Ljava/lang/Object;
.source "Collections2.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Collections2$FilteredCollection;->removeAll(Ljava/util/Collection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Collections2$FilteredCollection;

.field final synthetic val$collection:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Collections2$FilteredCollection;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 205
    .local p0, this:Lcom/google/common/collect/Collections2$FilteredCollection$1;,"Lcom/google/common/collect/Collections2$FilteredCollection.1;"
    iput-object p1, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->this$0:Lcom/google/common/collect/Collections2$FilteredCollection;

    iput-object p2, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->val$collection:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/google/common/collect/Collections2$FilteredCollection$1;,"Lcom/google/common/collect/Collections2$FilteredCollection.1;"
    .local p1, input:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->this$0:Lcom/google/common/collect/Collections2$FilteredCollection;

    iget-object v0, v0, Lcom/google/common/collect/Collections2$FilteredCollection;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v0, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/Collections2$FilteredCollection$1;->val$collection:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
