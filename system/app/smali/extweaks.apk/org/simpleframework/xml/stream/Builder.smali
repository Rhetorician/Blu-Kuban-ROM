.class Lorg/simpleframework/xml/stream/Builder;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/Style;


# instance fields
.field private final attributes:Lorg/simpleframework/xml/stream/Builder$Cache;

.field private final elements:Lorg/simpleframework/xml/stream/Builder$Cache;

.field private final style:Lorg/simpleframework/xml/stream/Style;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/Style;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/Builder$Cache;-><init>(Lorg/simpleframework/xml/stream/Builder;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/stream/Builder$Cache;

    .line 70
    new-instance v0, Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/Builder$Cache;-><init>(Lorg/simpleframework/xml/stream/Builder;)V

    iput-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/stream/Builder$Cache;

    .line 71
    iput-object p1, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    .line 72
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Builder$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    if-eqz v0, :cond_b

    .line 95
    :cond_a
    :goto_a
    return-object v0

    .line 90
    :cond_b
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/Style;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_a

    .line 93
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Builder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/stream/Builder$Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    if-eqz v0, :cond_b

    .line 119
    :cond_a
    :goto_a
    return-object v0

    .line 114
    :cond_b
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->style:Lorg/simpleframework/xml/stream/Style;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/stream/Style;->getElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_a

    .line 117
    iget-object v1, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/stream/Builder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->attributes:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/Builder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public setElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lorg/simpleframework/xml/stream/Builder;->elements:Lorg/simpleframework/xml/stream/Builder$Cache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/stream/Builder$Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method
