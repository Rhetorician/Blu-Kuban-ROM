.class Lorg/simpleframework/xml/core/FieldScanner;
.super Lorg/simpleframework/xml/core/ContactList;


# instance fields
.field private final access:Lorg/simpleframework/xml/DefaultType;

.field private final done:Lorg/simpleframework/xml/core/ContactMap;

.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;

.field private final hierarchy:Lorg/simpleframework/xml/core/Hierarchy;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;Z)V
    .registers 5

    invoke-direct {p0}, Lorg/simpleframework/xml/core/ContactList;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Z)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    new-instance v0, Lorg/simpleframework/xml/core/Hierarchy;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/Hierarchy;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    new-instance v0, Lorg/simpleframework/xml/core/ContactMap;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ContactMap;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldScanner;->access:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private build()V
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/ContactMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Contact;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/FieldScanner;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private isStatic(Ljava/lang/reflect/Field;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_b
    return-void
.end method

.method private process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/core/FieldContact;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/FieldContact;-><init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_f
    iget-object v1, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/ContactMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->done:Lorg/simpleframework/xml/core/ContactMap;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/ContactMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldScanner;->hierarchy:Lorg/simpleframework/xml/core/Hierarchy;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/Hierarchy;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-direct {p0}, Lorg/simpleframework/xml/core/FieldScanner;->build()V

    return-void

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lorg/simpleframework/xml/core/FieldScanner;->access:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {p0, v0, v2}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    goto :goto_6

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_12
.end method

.method private scan(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private scan(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    sget-object v0, Lorg/simpleframework/xml/DefaultType;->FIELD:Lorg/simpleframework/xml/DefaultType;

    if-ne p2, v0, :cond_c

    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_d

    :cond_c
    return-void

    :cond_d
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/FieldScanner;->isStatic(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0, v3, v4}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method private scan(Ljava/lang/reflect/Field;)V
    .registers 6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    return-void

    :cond_9
    aget-object v3, v1, v0

    invoke-direct {p0, p1, v3}, Lorg/simpleframework/xml/core/FieldScanner;->scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private scan(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V
    .registers 4

    instance-of v0, p2, Lorg/simpleframework/xml/Attribute;

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_7
    instance-of v0, p2, Lorg/simpleframework/xml/ElementUnion;

    if-eqz v0, :cond_e

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_e
    instance-of v0, p2, Lorg/simpleframework/xml/ElementListUnion;

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_15
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMapUnion;

    if-eqz v0, :cond_1c

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_1c
    instance-of v0, p2, Lorg/simpleframework/xml/ElementList;

    if-eqz v0, :cond_23

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_23
    instance-of v0, p2, Lorg/simpleframework/xml/ElementArray;

    if-eqz v0, :cond_2a

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_2a
    instance-of v0, p2, Lorg/simpleframework/xml/ElementMap;

    if-eqz v0, :cond_31

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_31
    instance-of v0, p2, Lorg/simpleframework/xml/Element;

    if-eqz v0, :cond_38

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_38
    instance-of v0, p2, Lorg/simpleframework/xml/Transient;

    if-eqz v0, :cond_3f

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->remove(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_3f
    instance-of v0, p2, Lorg/simpleframework/xml/Version;

    if-eqz v0, :cond_46

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_46
    instance-of v0, p2, Lorg/simpleframework/xml/Text;

    if-eqz v0, :cond_4d

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/FieldScanner;->process(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    :cond_4d
    return-void
.end method
