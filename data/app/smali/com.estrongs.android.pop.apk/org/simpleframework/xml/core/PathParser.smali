.class Lorg/simpleframework/xml/core/PathParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# instance fields
.field private attribute:Z

.field private attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

.field private builder:Ljava/lang/StringBuilder;

.field private cache:Ljava/lang/String;

.field private count:I

.field private data:[C

.field private elements:Lorg/simpleframework/xml/core/PathParser$Cache;

.field private indexes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private location:Ljava/lang/String;

.field private names:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private off:I

.field private path:Ljava/lang/String;

.field private prefixes:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private start:I

.field private type:Lorg/simpleframework/xml/strategy/Type;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    new-instance v0, Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PathParser$Cache;-><init>(Lorg/simpleframework/xml/core/PathParser;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    new-instance v0, Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/core/PathParser$Cache;-><init>(Lorg/simpleframework/xml/core/PathParser;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    iput-object p2, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/PathParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lorg/simpleframework/xml/core/PathParser;)Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method static synthetic access$1(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$5(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$6(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lorg/simpleframework/xml/core/PathParser;)I
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    return v0
.end method

.method static synthetic access$8(Lorg/simpleframework/xml/core/PathParser;)I
    .registers 2

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    return v0
.end method

.method static synthetic access$9(Lorg/simpleframework/xml/core/PathParser;)[C
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    return-object v0
.end method

.method private align()V
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v0, v1, :cond_18

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method private attribute()V
    .registers 8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_9
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v1, v2, :cond_25

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    if-gt v1, v0, :cond_4e

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Attribute reference in \'%s\' for %s is empty"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_25
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Illegal character \'%s\' in attribute for \'%s\' in %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v3, v5

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v1, v3, v4

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v1, v3, v6

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4e
    iput-boolean v4, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/simpleframework/xml/core/PathParser;->insert(II)V

    return-void
.end method

.method private build()V
    .registers 8

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v0, 0x0

    move v2, v0

    :goto_a
    if-lt v2, v3, :cond_15

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-void

    :cond_15
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v2, :cond_32

    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_32
    iget-boolean v5, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v5, :cond_48

    if-ne v2, v4, :cond_48

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_48
    iget-object v5, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->builder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_44
.end method

.method private element()V
    .registers 7

    const/4 v1, 0x0

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    move v0, v1

    :goto_4
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v3, v4, :cond_e

    :cond_a
    :goto_a
    invoke-direct {p0, v2, v0}, Lorg/simpleframework/xml/core/PathParser;->insert(II)V

    return-void

    :cond_e
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v3, v3, v4

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/PathParser;->isValid(C)Z

    move-result v4

    if-nez v4, :cond_50

    const/16 v4, 0x40

    if-ne v3, v4, :cond_29

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_a

    :cond_29
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_31

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->index()V

    goto :goto_a

    :cond_31
    const/16 v4, 0x2f

    if-eq v3, v4, :cond_a

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Illegal character \'%s\' in element for \'%s\' in %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v4, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_6
.end method

.method private getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p1

    :cond_7
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object p1, p2

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[1]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method

.method private index()V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_58

    move v0, v1

    :goto_e
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v2, v3, :cond_38

    :cond_14
    :goto_14
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_4e

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v2, "Invalid index for path \'%s\' in %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_38
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v2, v2, v3

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/core/PathParser;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_14

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x30

    goto :goto_e

    :cond_4e
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_58
    move v0, v1

    goto :goto_14
.end method

.method private insert(II)V
    .registers 5

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    if-lez p2, :cond_c

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->insert(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private insert(Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_14

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_14
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isDigit(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private isLetter(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    return v0
.end method

.method private isSpecial(C)Z
    .registers 3

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_e

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_e

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private isValid(C)Z
    .registers 3

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/PathParser;->isSpecial(C)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private parse(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    :cond_16
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->path()V

    return-void
.end method

.method private path()V
    .registers 7

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1f

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references document root"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1f
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2c

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->skip()V

    :cond_2c
    :goto_2c
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->count:I

    if-lt v0, v1, :cond_39

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->truncate()V

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->build()V

    return-void

    :cond_39
    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    if-eqz v0, :cond_4f

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s references an invalid attribute"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_4f
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->segment()V

    goto :goto_2c
.end method

.method private segment()V
    .registers 6

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1f

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Invalid path expression \'%s\' in %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1f
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2a

    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->attribute()V

    :goto_26
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->align()V

    return-void

    :cond_2a
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser;->element()V

    goto :goto_26
.end method

.method private skip()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v0, v0

    if-le v0, v5, :cond_2c

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_26

    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const-string v1, "Path \'%s\' in %s has an illegal syntax"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/simpleframework/xml/core/PathParser;->path:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser;->type:Lorg/simpleframework/xml/strategy/Type;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_26
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_2c
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    return-void
.end method

.method private truncate()V
    .registers 3

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    array-length v1, v1

    if-lt v0, v1, :cond_10

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_f

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    goto :goto_f
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PathParser$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->attributes:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/PathParser$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/core/PathParser$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->elements:Lorg/simpleframework/xml/core/PathParser$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/PathParser$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v0
.end method

.method public getFirst()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .registers 5

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int v0, v1, p2

    if-lt v0, p1, :cond_13

    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    sub-int/2addr v1, p2

    invoke-direct {v0, p0, p1, v1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    invoke-direct {v0, p0, p1, p1}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    goto :goto_12
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .registers 2

    iget-boolean v0, p0, Lorg/simpleframework/xml/core/PathParser;->attribute:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/PathParser;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPath()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/simpleframework/xml/core/PathParser;->off:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser;->data:[C

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser;->start:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    :cond_14
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser;->cache:Ljava/lang/String;

    return-object v0
.end method
