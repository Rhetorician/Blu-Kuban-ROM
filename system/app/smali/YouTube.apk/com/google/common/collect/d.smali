.class final Lcom/google/common/collect/d;
.super Lcom/google/common/collect/bp;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/common/collect/c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c;Ljava/util/Map$Entry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/google/common/collect/d;->b:Lcom/google/common/collect/c;

    iput-object p2, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/bp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Map$Entry;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Lcom/google/common/collect/c;

    iget-object v0, v0, Lcom/google/common/collect/c;->c:Lcom/google/common/collect/b;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/b;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/google/common/base/t;->b(ZLjava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/common/collect/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 320
    :goto_19
    return-object p1

    .line 314
    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/d;->b:Lcom/google/common/collect/c;

    iget-object v0, v0, Lcom/google/common/collect/c;->c:Lcom/google/common/collect/b;

    iget-object v0, v0, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/AbstractBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_27
    const-string v3, "value already present: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/t;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object v0, p0, Lcom/google/common/collect/d;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 317
    iget-object v2, p0, Lcom/google/common/collect/d;->b:Lcom/google/common/collect/c;

    iget-object v2, v2, Lcom/google/common/collect/c;->c:Lcom/google/common/collect/b;

    iget-object v2, v2, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/d;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/AbstractBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/google/common/base/t;->b(ZLjava/lang/Object;)V

    .line 319
    iget-object v2, p0, Lcom/google/common/collect/d;->b:Lcom/google/common/collect/c;

    iget-object v2, v2, Lcom/google/common/collect/c;->c:Lcom/google/common/collect/b;

    iget-object v2, v2, Lcom/google/common/collect/b;->b:Lcom/google/common/collect/AbstractBiMap;

    invoke-virtual {p0}, Lcom/google/common/collect/d;->getKey()Ljava/lang/Object;

    move-result-object v3

    #calls: Lcom/google/common/collect/AbstractBiMap;->updateInverseMap(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v2, v3, v1, v0, p1}, Lcom/google/common/collect/AbstractBiMap;->access$800(Lcom/google/common/collect/AbstractBiMap;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 320
    goto :goto_19

    :cond_5c
    move v0, v2

    .line 314
    goto :goto_27
.end method
