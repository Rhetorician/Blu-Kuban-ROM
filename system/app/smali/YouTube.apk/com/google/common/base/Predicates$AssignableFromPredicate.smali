.class Lcom/google/common/base/Predicates$AssignableFromPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final clazz:Ljava/lang/Class;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/common/base/ai;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$AssignableFromPredicate;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .registers 3
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 452
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Predicates$AssignableFromPredicate;->apply(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 468
    instance-of v1, p1, Lcom/google/common/base/Predicates$AssignableFromPredicate;

    if-eqz v1, :cond_e

    .line 469
    check-cast p1, Lcom/google/common/base/Predicates$AssignableFromPredicate;

    .line 470
    iget-object v1, p0, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 472
    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsAssignableFrom("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/Predicates$AssignableFromPredicate;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
