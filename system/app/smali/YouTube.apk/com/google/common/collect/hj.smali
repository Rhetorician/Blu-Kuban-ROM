.class final Lcom/google/common/collect/hj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final synthetic a:Lcom/google/common/collect/hi;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hi;)V
    .registers 2
    .parameter

    .prologue
    .line 2119
    iput-object p1, p0, Lcom/google/common/collect/hj;->a:Lcom/google/common/collect/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 2119
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
