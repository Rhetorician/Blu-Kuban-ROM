.class Lorg/simpleframework/xml/core/ClassCreator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Creator;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Lorg/simpleframework/xml/core/Initializer;

.field private final registry:Lorg/simpleframework/xml/core/Signature;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/simpleframework/xml/core/Signature;Lorg/simpleframework/xml/core/Initializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;",
            "Lorg/simpleframework/xml/core/Signature;",
            "Lorg/simpleframework/xml/core/Initializer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Signature;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    iput-object p3, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    return-void
.end method

.method private getInitializer(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Initializer;
    .registers 13

    iget-object v2, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v2

    move-wide v8, v0

    move-wide v1, v8

    :cond_d
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    return-object v5

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Initializer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getScore(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)D

    move-result-wide v3

    cmpl-double v7, v3, v1

    if-lez v7, :cond_d

    move-wide v1, v3

    move-object v5, v0

    goto :goto_d
.end method


# virtual methods
.method public getInitializers()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ClassCreator;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Initializer;->getInstance(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;
    .registers 8

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ClassCreator;->getInitializer(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Lorg/simpleframework/xml/core/Initializer;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Constructor not matched for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_16
    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;->getInstance(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Criteria;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lorg/simpleframework/xml/core/Parameter;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Signature;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isDefault()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ClassCreator;->primary:Lorg/simpleframework/xml/core/Initializer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "creator for %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/simpleframework/xml/core/ClassCreator;->type:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
