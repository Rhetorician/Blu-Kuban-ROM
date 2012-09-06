.class Lorg/simpleframework/xml/core/ElementUnionLabel;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Label;


# instance fields
.field private contact:Lorg/simpleframework/xml/core/Contact;

.field private expression:Lorg/simpleframework/xml/core/Expression;

.field private extractor:Lorg/simpleframework/xml/core/GroupExtractor;

.field private label:Lorg/simpleframework/xml/core/Label;

.field private union:Lorg/simpleframework/xml/ElementUnion;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/ElementUnion;Lorg/simpleframework/xml/Element;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/GroupExtractor;-><init>(Lorg/simpleframework/xml/core/Contact;Ljava/lang/annotation/Annotation;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    new-instance v0, Lorg/simpleframework/xml/core/ElementLabel;

    invoke-direct {v0, p1, p3}, Lorg/simpleframework/xml/core/ElementLabel;-><init>(Lorg/simpleframework/xml/core/Contact;Lorg/simpleframework/xml/Element;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    iput-object p2, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getContact()Lorg/simpleframework/xml/core/Contact;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->contact:Lorg/simpleframework/xml/core/Contact;

    return-object v0
.end method

.method public getConverter(Lorg/simpleframework/xml/core/Context;)Lorg/simpleframework/xml/core/Converter;
    .registers 7

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v1

    if-nez v1, :cond_1a

    new-instance v0, Lorg/simpleframework/xml/core/UnionException;

    const-string v1, "Union %s was not declared on a field or method"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1a
    new-instance v2, Lorg/simpleframework/xml/core/CompositeUnion;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-direct {v2, p1, v3, v0, v1}, Lorg/simpleframework/xml/core/CompositeUnion;-><init>(Lorg/simpleframework/xml/core/Context;Lorg/simpleframework/xml/core/Group;Lorg/simpleframework/xml/core/Expression;Lorg/simpleframework/xml/strategy/Type;)V

    return-object v2
.end method

.method public getDecorator()Lorg/simpleframework/xml/core/Decorator;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDecorator()Lorg/simpleframework/xml/core/Decorator;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Lorg/simpleframework/xml/strategy/Type;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getDependent()Lorg/simpleframework/xml/strategy/Type;

    move-result-object v0

    return-object v0
.end method

.method public getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getEmpty(Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/simpleframework/xml/core/Expression;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getExpression()Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    :cond_c
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->expression:Lorg/simpleframework/xml/core/Expression;

    return-object v0
.end method

.method public getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;
    .registers 8

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Lorg/simpleframework/xml/core/UnionException;

    const-string v2, "No type matches %s in %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_22
    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getLabel(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Label;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getName(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getNames(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOverride()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getOverride()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/Label;->getPath(Lorg/simpleframework/xml/core/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaths()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/simpleframework/xml/core/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->getPaths(Lorg/simpleframework/xml/core/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getType(Ljava/lang/Class;)Lorg/simpleframework/xml/strategy/Type;
    .registers 8

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ElementUnionLabel;->getContact()Lorg/simpleframework/xml/core/Contact;

    move-result-object v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->extractor:Lorg/simpleframework/xml/core/GroupExtractor;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/core/GroupExtractor;->isValid(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_22

    new-instance v1, Lorg/simpleframework/xml/core/UnionException;

    const-string v2, "No type matches %s in %s for %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->union:Lorg/simpleframework/xml/ElementUnion;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/UnionException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_22
    new-instance v1, Lorg/simpleframework/xml/core/OverrideType;

    invoke-direct {v1, v0, p1}, Lorg/simpleframework/xml/core/OverrideType;-><init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;)V

    return-object v1
.end method

.method public isAttribute()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isAttribute()Z

    move-result v0

    return v0
.end method

.method public isCollection()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isCollection()Z

    move-result v0

    return v0
.end method

.method public isData()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isData()Z

    move-result v0

    return v0
.end method

.method public isInline()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isInline()Z

    move-result v0

    return v0
.end method

.method public isRequired()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isText()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->isText()Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/ElementUnionLabel;->label:Lorg/simpleframework/xml/core/Label;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Label;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
