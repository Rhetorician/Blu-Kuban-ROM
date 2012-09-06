.class Lorg/simpleframework/xml/core/ConstructorScanner;
.super Ljava/lang/Object;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/simpleframework/xml/core/Initializer;",
            ">;"
        }
    .end annotation
.end field

.field private primary:Lorg/simpleframework/xml/core/Initializer;

.field private registry:Lorg/simpleframework/xml/core/Signature;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->list:Ljava/util/List;

    new-instance v0, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/Signature;

    iput-object p1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->type:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private build(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/core/Initializer;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/Initializer;-><init>(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Initializer;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_d

    iput-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Initializer;

    :cond_d
    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .registers 7

    invoke-static {p1, p2, p3}, Lorg/simpleframework/xml/core/ParameterFactory;->getInstance(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v2, v1}, Lorg/simpleframework/xml/core/Signature;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/ConstructorScanner;->validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/String;)V

    :cond_13
    return-object v0
.end method

.method private isInstantiable(Ljava/lang/Class;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method private process(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;
    .registers 5

    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    goto :goto_8

    :cond_12
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    goto :goto_8

    :cond_1b
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_24

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    goto :goto_8

    :cond_24
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_2d

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    goto :goto_8

    :cond_2d
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_36

    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/core/ConstructorScanner;->create(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v0

    goto :goto_8

    :cond_36
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/ConstructorScanner;->isInstantiable(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v1, Lorg/simpleframework/xml/core/ConstructorException;

    const-string v2, "Can not construct inner %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/core/ConstructorException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_18
    array-length v2, v1

    :goto_19
    if-lt v0, v2, :cond_1c

    return-void

    :cond_1c
    aget-object v3, v1, v0

    new-instance v4, Lorg/simpleframework/xml/core/Signature;

    invoke-direct {v4, p1}, Lorg/simpleframework/xml/core/Signature;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-direct {p0, v3, v4}, Lorg/simpleframework/xml/core/ConstructorScanner;->scan(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method private scan(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    move v0, v1

    :goto_a
    array-length v2, v4

    if-lt v0, v2, :cond_18

    array-length v0, v4

    invoke-virtual {p2}, Lorg/simpleframework/xml/core/Signature;->size()I

    move-result v1

    if-ne v0, v1, :cond_17

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/ConstructorScanner;->build(Ljava/lang/reflect/Constructor;Lorg/simpleframework/xml/core/Signature;)V

    :cond_17
    return-void

    :cond_18
    move v2, v1

    :goto_19
    aget-object v5, v3, v0

    array-length v5, v5

    if-lt v2, v5, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    aget-object v5, v3, v0

    aget-object v5, v5, v2

    invoke-direct {p0, p1, v5, v0}, Lorg/simpleframework/xml/core/ConstructorScanner;->process(Ljava/lang/reflect/Constructor;Ljava/lang/annotation/Annotation;I)Lorg/simpleframework/xml/core/Parameter;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-interface {v5}, Lorg/simpleframework/xml/core/Parameter;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/simpleframework/xml/core/Signature;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v2, "Parameter \'%s\' is a duplicate in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_45
    iget-object v7, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v7, v6, v5}, Lorg/simpleframework/xml/core/Signature;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v6, v5}, Lorg/simpleframework/xml/core/Signature;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method

.method private validate(Lorg/simpleframework/xml/core/Parameter;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/Signature;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/Signature;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Parameter;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/annotation/Annotation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v1, "Annotations do not match for \'%s\' in %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->type:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_29
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Parameter;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_43

    new-instance v0, Lorg/simpleframework/xml/core/MethodException;

    const-string v1, "Method types do not match for \'%s\' in %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->type:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_43
    return-void
.end method


# virtual methods
.method public getCreator()Lorg/simpleframework/xml/core/Creator;
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/core/ClassCreator;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->list:Ljava/util/List;

    iget-object v2, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->registry:Lorg/simpleframework/xml/core/Signature;

    iget-object v3, p0, Lorg/simpleframework/xml/core/ConstructorScanner;->primary:Lorg/simpleframework/xml/core/Initializer;

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/ClassCreator;-><init>(Ljava/util/List;Lorg/simpleframework/xml/core/Signature;Lorg/simpleframework/xml/core/Initializer;)V

    return-object v0
.end method
