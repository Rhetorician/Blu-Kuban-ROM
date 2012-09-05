.class public Lorg/apache/james/mime4j/field/address/DomainList;
.super Ljava/lang/Object;
.source "DomainList.java"


# instance fields
.field private domains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .registers 5
    .parameter
    .parameter "dontCopy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_11

    .line 38
    if-eqz p2, :cond_a

    .end local p1           #domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_7
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    .line 41
    :goto_9
    return-void

    .line 38
    .restart local p1       #domains:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    goto :goto_7

    .line 40
    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    goto :goto_9
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 56
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/DomainList;->size()I

    move-result v0

    if-gt v0, p1, :cond_e

    .line 57
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 58
    :cond_e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toRouteString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v1, out:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 68
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/DomainList;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 71
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 73
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method