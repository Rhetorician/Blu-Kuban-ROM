.class public Lorg/simpleframework/xml/filter/StackFilter;
.super Ljava/lang/Object;
.source "StackFilter.java"

# interfaces
.implements Lorg/simpleframework/xml/filter/Filter;


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/simpleframework/xml/filter/Filter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    .line 47
    return-void
.end method


# virtual methods
.method public push(Lorg/simpleframework/xml/filter/Filter;)V
    .registers 3
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1b

    .line 72
    iget-object v0, p0, Lorg/simpleframework/xml/filter/StackFilter;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/filter/Filter;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/filter/Filter;->replace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_19

    .line 78
    :goto_18
    return-object v0

    :cond_19
    move v0, v1

    .line 77
    goto :goto_6

    .line 78
    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method
