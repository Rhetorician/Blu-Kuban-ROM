.class public Lorg/dom4j/dtd/ElementDecl;
.super Ljava/lang/Object;
.source "ElementDecl.java"


# instance fields
.field private model:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .parameter "model"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/dom4j/dtd/ElementDecl;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/dom4j/dtd/ElementDecl;->model:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/dom4j/dtd/ElementDecl;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lorg/dom4j/dtd/ElementDecl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/dom4j/dtd/ElementDecl;->model:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lorg/dom4j/dtd/ElementDecl;->name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<!ELEMENT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/dtd/ElementDecl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/dtd/ElementDecl;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method