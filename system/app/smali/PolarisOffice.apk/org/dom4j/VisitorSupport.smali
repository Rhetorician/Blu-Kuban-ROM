.class public abstract Lorg/dom4j/VisitorSupport;
.super Ljava/lang/Object;
.source "VisitorSupport.java"

# interfaces
.implements Lorg/dom4j/Visitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public visit(Lorg/dom4j/Attribute;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 34
    return-void
.end method

.method public visit(Lorg/dom4j/CDATA;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 37
    return-void
.end method

.method public visit(Lorg/dom4j/Comment;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 40
    return-void
.end method

.method public visit(Lorg/dom4j/Document;)V
    .registers 2
    .parameter "document"

    .prologue
    .line 25
    return-void
.end method

.method public visit(Lorg/dom4j/DocumentType;)V
    .registers 2
    .parameter "documentType"

    .prologue
    .line 28
    return-void
.end method

.method public visit(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 31
    return-void
.end method

.method public visit(Lorg/dom4j/Entity;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 43
    return-void
.end method

.method public visit(Lorg/dom4j/Namespace;)V
    .registers 2
    .parameter "namespace"

    .prologue
    .line 46
    return-void
.end method

.method public visit(Lorg/dom4j/ProcessingInstruction;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 49
    return-void
.end method

.method public visit(Lorg/dom4j/Text;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 52
    return-void
.end method