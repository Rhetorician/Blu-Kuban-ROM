.class public Lorg/simpleframework/xml/stream/HyphenStyle;
.super Ljava/lang/Object;
.source "HyphenStyle.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# instance fields
.field private final builder:Lorg/simpleframework/xml/stream/Builder;

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lorg/simpleframework/xml/stream/HyphenBuilder;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/HyphenBuilder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->style:Lorg/simpleframework/xml/stream/Style;

    .line 61
    new-instance v0, Lorg/simpleframework/xml/stream/Builder;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/Builder;-><init>(Lorg/simpleframework/xml/stream/Style;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->builder:Lorg/simpleframework/xml/stream/Builder;

    .line 62
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->builder:Lorg/simpleframework/xml/stream/Builder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Builder;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->builder:Lorg/simpleframework/xml/stream/Builder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Builder;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->builder:Lorg/simpleframework/xml/stream/Builder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/Builder;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lorg/simpleframework/xml/stream/HyphenStyle;->builder:Lorg/simpleframework/xml/stream/Builder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/Builder;->setElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method
