.class Lcom/google/common/collect/SingletonImmutableMap$Values;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# instance fields
.field final singleValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    .line 109
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method isPartialView()Z
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/mt;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableMap$Values;->singleValue:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ee;->a(Ljava/lang/Object;)Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableMap$Values;->iterator()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
