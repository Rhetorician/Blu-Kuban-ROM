.class Lorg/simpleframework/xml/stream/NodeReader;
.super Ljava/lang/Object;


# instance fields
.field private final reader:Lorg/simpleframework/xml/stream/EventReader;

.field private final stack:Lorg/simpleframework/xml/stream/InputStack;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/EventReader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/stream/InputStack;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/InputStack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    return-void
.end method

.method private isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z
    .registers 4

    invoke-interface {p1}, Lorg/simpleframework/xml/stream/EventNode;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method private readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 5

    new-instance v0, Lorg/simpleframework/xml/stream/InputElement;

    invoke-direct {v0, p1, p0, p2}, Lorg/simpleframework/xml/stream/InputElement;-><init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/NodeReader;Lorg/simpleframework/xml/stream/EventNode;)V

    invoke-interface {p2}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/stream/InputStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/InputNode;

    :cond_13
    return-object v0
.end method


# virtual methods
.method public isEmpty(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_16

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isRoot(Lorg/simpleframework/xml/stream/InputNode;)Z
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/InputStack;->bottom()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_9

    :cond_20
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_10

    :cond_27
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/stream/NodeReader;->readStart(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/EventNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_9
.end method

.method public readElement(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1, p1}, Lorg/simpleframework/xml/stream/InputStack;->isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    :goto_10
    if-eqz v1, :cond_9

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_9

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->pop()Ljava/lang/Object;

    :cond_25
    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_10

    :cond_31
    invoke-interface {v1}, Lorg/simpleframework/xml/stream/EventNode;->isStart()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/stream/NodeReader;->isName(Lorg/simpleframework/xml/stream/EventNode;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    goto :goto_9
.end method

.method public readRoot()Lorg/simpleframework/xml/stream/InputNode;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/InputStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_17

    new-instance v0, Lorg/simpleframework/xml/stream/NodeException;

    const-string v1, "Document has no root element"

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/NodeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-object v0
.end method

.method public readValue(Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->stack:Lorg/simpleframework/xml/stream/InputStack;

    invoke-virtual {v2}, Lorg/simpleframework/xml/stream/InputStack;->top()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->peek()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventNode;->isText()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_26
    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/simpleframework/xml/stream/NodeReader;->reader:Lorg/simpleframework/xml/stream/EventReader;

    invoke-interface {v2}, Lorg/simpleframework/xml/stream/EventReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_6
.end method

.method public skipElement(Lorg/simpleframework/xml/stream/InputNode;)V
    .registers 3

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/NodeReader;->readElement(Lorg/simpleframework/xml/stream/InputNode;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
